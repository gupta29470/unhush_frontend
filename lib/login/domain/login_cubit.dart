import 'dart:developer';
import 'dart:html' as html;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unhush_assignment/login/models/user_model.dart';
import 'package:unhush_assignment/login/repository/login_repository.dart';
import 'package:uuid/uuid.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepository) : super(const LoginInitialState());

  final LoginRepository loginRepository;

  String redirectURL = "http://localhost:62534/";

  bool isLoginCalled = false;

  Future<void> login({
    required dynamic code,
  }) async {
    emit(const LoginLoadingState());

    try {
      UserModel? userModel = await loginRepository.login(
        code: code,
        redirectURL: redirectURL,
      );
      if (userModel != null) {
        emit(
          LoginSuccessState(userModel),
        );
      } else {
        emit(const LoginErrorState());
      }
    } catch (error) {
      emit(const LoginErrorState());
    }
  }

  Future<void> handleLinkedInLogin() async {
    try {
      isLoginCalled = false;
      String clientID = "77ksra7mab0dqy";
      // String primaryClientSecret = "K6L1heod0FdktqBC";
      var uuid = const Uuid();
      String state = uuid.v4();
      const scope =
          'openid%20profile%20w_member_social%20email%20r_learningdata';

      String authUrl =
          // 'https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=77ksra7mab0dqy&redirect_uri=$redirectURL&state=$state&scope=$scope';
          'https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=$clientID&redirect_uri=$redirectURL&state=$state&scope=$scope';

      html.window
          .open(authUrl, '_blank', 'width=800, height=900, location=yes');
    } catch (error) {
      emit(const LoginErrorState());
    }
  }

  void listenForAuthCode() {
    try {
      html.window.onMessage.listen(
        (event) async {
          if (event.data is Map && !isLoginCalled) {
            var data = event.data;
            if (data['type'] == 'AUTH_CODE') {
              var code = data['code'];
              if (code != null) {
                isLoginCalled = true;
                await login(
                  code: code,
                );
              }
            }
          }
        },
      );
    } catch (error) {
      log("listenForAuthCode() ================== : $error");
    }
  }
}

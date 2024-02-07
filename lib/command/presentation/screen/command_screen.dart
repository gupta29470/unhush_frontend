import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:unhush_assignment/routes/routes.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class CommandScreen extends StatefulWidget {
  const CommandScreen({super.key});
  @override
  State<CommandScreen> createState() => _CommandScreenState();
}

class _CommandScreenState extends State<CommandScreen> {
  final List<(IconData, String)> promptList = const [
    (Icons.flash_on, "Generate content ideas"),
    (Icons.check, "Fix grammatical issues"),
    (Icons.code, "Expand & elaborate"),
    (Icons.refresh, "Rewrite"),
    (Icons.add, "Make it effective"),
  ];
  final TextEditingController textEditingController = TextEditingController();
  bool isVisible = false;
  bool isWindows = false;

  @override
  void initState() {
    super.initState();

    final userAgent = html.window.navigator.userAgent;
    if (userAgent.contains('Macintosh')) {
      isWindows = false;
    } else {
      isWindows = true;
    }
  }

  String get buttonText {
    final userAgent = html.window.navigator.userAgent;
    if (userAgent.contains('Macintosh')) {
      return isVisible
          ? "Press Command + K to hide modal"
          : "Press Command + K to view modal";
    }
    return isVisible
        ? "Press Control + K to hide modal"
        : "Press Control + K to view modal";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.snowFlake,
      appBar: AppBar(
        title: const Text(
          "Command Screen",
        ),
      ),
      body: Shortcuts(
        shortcuts: {
          LogicalKeySet(
            isWindows ? LogicalKeyboardKey.control : LogicalKeyboardKey.meta,
            LogicalKeyboardKey.keyK,
          ): ToggleModalIntent(),
        },
        child: Actions(
          actions: {
            ToggleModalIntent: CallbackAction<ToggleModalIntent>(
              onInvoke: (intent) => setState(() {
                isVisible = !isVisible;
              }),
            ),
          },
          child: Focus(
            autofocus: true,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blueDiamond,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(96, 48),
                    ),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Text(
                      buttonText,
                      style: AppTextStyles.headerS(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (isVisible)
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 712,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColors.noghreiSilver,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: textEditingController,
                                    autofocus: true,
                                    cursorColor: AppColors.noghreiSilver,
                                    decoration: InputDecoration(
                                      hintText: "  Write a custom prompt",
                                      hintStyle: AppTextStyles.subheaderS(
                                        color: AppColors.trolleyColor,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                ListenableBuilder(
                                  listenable: textEditingController,
                                  builder: (_, __) {
                                    return ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.blueDiamond,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        minimumSize: const Size(96, 48),
                                      ),
                                      onPressed:
                                          textEditingController.text.isEmpty
                                              ? null
                                              : () {},
                                      child: Text(
                                        "Enter",
                                        style: AppTextStyles.subheaderS(
                                          color: AppColors.white,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: AppColors.noghreiSilver,
                          ),
                          DecoratedBox(
                            decoration: const BoxDecoration(
                              color: AppColors.bleachedSilk,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                  promptList.length,
                                  (index) {
                                    (IconData, String) prompt =
                                        promptList[index];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            prompt.$1,
                                            size: 14,
                                            color: AppColors.carbon,
                                          ),
                                          const SizedBox(width: 14),
                                          Text(
                                            prompt.$2,
                                            style: AppTextStyles.subheaderS(
                                              color: AppColors.carbon,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 32),
                  TextButton(
                    onPressed: () {
                      context.push(Routes.home);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.blueDiamond,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(96, 48),
                    ),
                    child: Text(
                      "Navigate to home screen",
                      style: AppTextStyles.subheaderS(color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ToggleModalIntent extends Intent {}

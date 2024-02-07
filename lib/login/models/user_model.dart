class UserModelLocale {
/*
{
  "country": "US",
  "language": "en"
} 
*/

  String? country;
  String? language;

  UserModelLocale({
    this.country,
    this.language,
  });
  UserModelLocale.fromJson(Map<String, dynamic> json) {
    country = json['country']?.toString();
    language = json['language']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['country'] = country;
    data['language'] = language;
    return data;
  }
}

class UserModel {
/*
{
  "sub": "ZuaN2bq9ID",
  "email_verified": true,
  "name": "Aakash Gupta",
  "locale": {
    "country": "US",
    "language": "en"
  },
  "given_name": "Aakash",
  "family_name": "Gupta",
  "email": "gupta29470@gmail.com",
  "picture": "https://media.licdn.com/dms/image/D4D03AQHq5XP5j3gJCQ/profile-displayphoto-shrink_100_100/0/1675522561389?e=1712793600&v=beta&t=bqEFUHINd6NUL1UsPvHcgfz9jADdiw4qTOWbfGRQUFE"
} 
*/

  String? sub;
  bool? emailVerified;
  String? name;
  UserModelLocale? locale;
  String? givenName;
  String? familyName;
  String? email;
  String? picture;

  UserModel({
    this.sub,
    this.emailVerified,
    this.name,
    this.locale,
    this.givenName,
    this.familyName,
    this.email,
    this.picture,
  });
  UserModel.fromJson(Map<String, dynamic> json) {
    sub = json['sub']?.toString();
    emailVerified = json['email_verified'];
    name = json['name']?.toString();
    locale = (json['locale'] != null)
        ? UserModelLocale.fromJson(json['locale'])
        : null;
    givenName = json['given_name']?.toString();
    familyName = json['family_name']?.toString();
    email = json['email']?.toString();
    picture = json['picture']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sub'] = sub;
    data['email_verified'] = emailVerified;
    data['name'] = name;
    if (locale != null) {
      data['locale'] = locale!.toJson();
    }
    data['given_name'] = givenName;
    data['family_name'] = familyName;
    data['email'] = email;
    data['picture'] = picture;
    return data;
  }
}

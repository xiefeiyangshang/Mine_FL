class Api {
  static const bool Debug = true;
  static const String DEV = 'https://dev.com';
  static const String RELEASE = 'https://release.com/';
  static const String BASE_URL = Debug ? DEV : RELEASE;
  static const String LOGIN = BASE_URL + 'login';
}

class SpUtil {
  static SpUtil _instance;
  static SharedPreferences _spf;

  static Future<SpUtil> get instance async {
    return await getInstance();
  }

  static Future<SpUtil> getInstance() async {
    if (_instance == null) {
      _instance = new SpUtil._();
      await _instance._init();
    }
    return _instance;
  }

  Future _init() async {
    -_spf = await SharedPreferences.getInstace();
  }
}

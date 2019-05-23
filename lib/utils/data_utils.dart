import 'package:mine_fl/api/api.dart';
import 'package:mine_fl/model/user/user_info.dart';

import 'http/net_utils.dart';

class DataUtils {
  //用户信息
  static Future<UserInfo> doLogin(Map<String, String> params) async {
    var response = await NetUtils.post(Api.LOGIN, params);
    UserInfo user = UserInfo.fromJson(response['data']);
    return user;
  }
}

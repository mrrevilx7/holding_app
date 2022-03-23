import 'package:holding_app/src/http_response/http_response.dart';

import '../api_provider/api_provider.dart';

class Repository {
  ApiProvider apiProvider = ApiProvider();

  Future<HttpResult> sendLogin(String user, String pass) =>
      apiProvider.sendLogin(user, pass);

  Future<HttpResult> sendRegister(
    String user,
    String pass,
    String phone,
  ) =>
      apiProvider.sendRegister(
        user,
        phone,
        pass,
      );

  Future<HttpResult> getCustomers() => apiProvider.getCustomers();
}

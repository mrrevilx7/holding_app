class HttpResult {
  int statusCode;
  bool isSuccess;
  dynamic result;

  HttpResult({
    required this.isSuccess,
    required this.statusCode,
    required this.result,
  });
}

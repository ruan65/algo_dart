import 'dart:math';

class RoundRobin {
  // implement retryHttpCall
  Future<ResponseMock> retryHttpCall(
      Future<ResponseMock> Function() requestFunc) async {
    return ResponseMock(1, '');
  }
}

class ResponseMock {
  ResponseMock(this.statusCode, this.body);

  final int statusCode;
  final String body;
}

void main() async {
  final r = RoundRobin();
  final response = await r.retryHttpCall(request);
  print(min(1,2));
}

Future<ResponseMock> request() async {
  // http.get(...);
  return ResponseMock(200, "body");
  // return ResponseMock(500, "error");
}

import 'package:http/http.dart' as http;

abstract class HttpClientImp {
  Future get({required String url});
}

class HttpClient implements HttpClientImp {
  final client = http.Client();
  @override
  Future get({required String url}) async {
    return await client.get(Uri.parse(url));
  }
}

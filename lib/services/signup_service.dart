import 'package:http/http.dart' as http;

class SignupService {
  signup(String email, String password) async {
    Uri uri = Uri.https(Routes.urlSignup, "/");
    http.Response response = await http.post(uri, body);
  }
}
import 'package:url_launcher/url_launcher.dart';

class MyComponent {
  static myLauncher(String url) async {
    Uri uri = Uri.parse(url);
    await launchUrl(uri);
  }
}

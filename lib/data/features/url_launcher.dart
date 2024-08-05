import 'dart:developer';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class OpenLauncherFeature {
  static Future<void> launchPhone({required String phone}) async {
    if (phone.isEmpty) return;
    try {
      url_launcher.launchUrl(Uri.parse("tel://$phone"));
    } catch (e) {
      log('cannot launch url');
      log(e.toString());
    }
  }

  static Future<void> launchWebPage({required String url}) async {
    if (url.isEmpty) return;
    try {
      url_launcher.launchUrl(Uri.parse(url));
    } catch (e) {
      log('cannot launch url');
      log(e.toString());
    }
  }
}

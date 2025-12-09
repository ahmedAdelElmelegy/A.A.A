import 'package:url_launcher/url_launcher.dart';

void openLink(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication, // opens in new tab on web
  )) {
    throw 'Could not launch $url';
  }
}

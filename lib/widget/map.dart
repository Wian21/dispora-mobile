import 'package:url_launcher/url_launcher.dart';

class Maps {
  Maps._();

  static Future<void> openMap(double Latitude, double Longitude) async {
    String gooleMapUrl =
        "http://www.google.com/maps/search/?api=1&query=$Latitude,$Longitude";

    if (await canLaunch(gooleMapUrl)) {
      await launch(gooleMapUrl);
    } else {
      throw 'Could Not Open the Map';
    }
  }
}

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:rider_app/Assistants/requestAssistant.dart';

import '../configMaps.dart';

class AssistantMethods
{
  static Future<String> searchCoordinateAddress(Position position) async
      {
        String placeAddress = "";
        String url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$mapKey";

        var response = await RequestAssistant.getRequest(url);

        if(response !="failed")
          {
            placeAddress = response["results"][0]["formatted_address"];
          }

        return placeAddress;
}
}
// ignore_for_file: file_names
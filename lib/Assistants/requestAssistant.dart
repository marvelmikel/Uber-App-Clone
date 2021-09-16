import "dart:convert";

import 'package:http/http.dart' as http;

import '../configMaps.dart';

class RequestAssistant
{
  static Future<dynamic> getRequest(String url) async
  {
    var url = Uri.parse("url");
    http.Response response = await http.get(url);


    try
    {
      if(response.statusCode == 200)
      {
        String jSonData = response.body;
        var decodeData = jsonDecode(jSonData);
        return decodeData;
      }
      else
      {
        return "failed.";
      }
    }
    catch(exp)
    // ignore: empty_catches
    {
      return "faild.";
    }
  }
}

// ignore_for_file: file_names, unused_local_variable

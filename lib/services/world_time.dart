import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = 'Loading';
  String flag;
  String url;
  bool isDayTime = true;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.https('worldtimeapi.org', '/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      print(data);
      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      print(datetime);
      print(offset);

      DateTime now = DateTime.parse(datetime);
      if (offset[0] == '+') {
        now = now.add(Duration(hours: int.parse(offset.substring(1, 3))));
      } else {
        now = now.subtract(Duration(hours: int.parse(offset.substring(1, 3))));
      }
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      print(time);
    } catch (e) {
      print('caught error: $e');
      time = 'Could not get time data';
    }
  }
}

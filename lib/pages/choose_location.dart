import 'package:flutter/material.dart';

import '../services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: 'uk.png', url: 'Europe/London'),
    WorldTime(location: 'Athens', flag: 'greece.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: 'egypt.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: 'kenya.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'Chicago', flag: 'usa.png', url: 'America/Chicago'),
    WorldTime(location: 'New York', flag: 'usa.png', url: 'America/New_York'),
    WorldTime(location: 'Seoul', flag: 'south_korea.png', url: 'Asia/Seoul'),
    WorldTime(location: 'Jakarta', flag: 'indonesia.png', url: 'Asia/Jakarta'),
  ];

  // void getData() async {
  //   //simulate the network request to get username
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     return 'yoshi';
  //   });
  //
  //   //simulate the network request to get bio of username
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     return 'vegan, musician and egg collector';
  //   });
  //
  //   print('$username - $bio');
  // }

  // void getData() async {
  //   Response response = await get(Uri.https('jsonplaceholder.typicode.com', '/todos/1'));
  //   Map data = jsonDecode(response.body);
  //   print(data);
  //   print(data['title']);
  // }

  // void getData() async {
  //   Response response = await get(Uri.https('worldtimeapi.org', '/api/timezone/Europe/London'));
  //   Map data = jsonDecode(response.body);
  //   print(data);
  //   String datetime = data['datetime'];
  //   String offset = data['utc_offset'];
  //   print(datetime);
  //   print(offset);
  //
  //   DateTime now = DateTime.parse(datetime);
  //   now = now.add(Duration(hours: int.parse(offset.substring(1,3))));
  //   print(now);
  // }
  void updateTime(int index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': locations[index].location,
      'flag': locations[index].flag,
      'time': locations[index].time,
      'isDayTime': locations[index].isDayTime
    });
  }

  @override
  Widget build(BuildContext context) {
    //print('build screen');
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Choose Location'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          elevation: 0,
        ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(backgroundImage: AssetImage('assets/images/${locations[index].flag}'),),
              ),
            ),
          );
        }
      )
    );
  }
}

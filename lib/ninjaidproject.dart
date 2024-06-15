import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Ninja ID Card',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Chun-li.jpg'),
                radius: 40,
              ),
            ),
            Divider(height: 90, color: Colors.grey[800],),
            Text('NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(
              height: 10,
            ),
            Text('Chun-Li',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Text('CRRENT NINJA LEVEL',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(
              height: 10,
            ),
            Text('8',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(
                  width: 10,
                ),
                Text('chun.li@thenetninja.co.uk',
                    style: TextStyle(
                        color: Colors.grey[400],
                        letterSpacing: 2.0,
                        fontSize: 18.0))
              ],
            )
          ],
        ),
      ),
    );
  }
}

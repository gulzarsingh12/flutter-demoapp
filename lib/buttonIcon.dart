import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        //child: Icon(Icons.airport_shuttle, size: 100.0, color: Colors.lightBlue,),
        // child: ElevatedButton(
        //   onPressed: () => print('clicked me!!'),
        //   child: Text('Click Me'),
        //   style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
        // ),
        // child: TextButton(
        //   onPressed: () => print('Clicked Me'),
        //   child: Text('Click Me'),
        //   style: TextButton.styleFrom(backgroundColor: Colors.lightBlue),
        // ),
        // child: ElevatedButton.icon(
        //     onPressed: ()=>print('clicked me'),
        //     label: Text('Send'),
        //     icon: Icon(
        //       Icons.mail,
        //     ),
        //     style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
        // ),
        child: IconButton(
          icon: Icon(Icons.alternate_email),
          onPressed: () => print('Clicked me'),
          color: Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
      ),
    );
  }
}
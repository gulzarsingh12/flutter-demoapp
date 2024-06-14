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
      // body: Container(
      //   color: Colors.grey[400],
      //   padding: EdgeInsets.all(30),
      //   margin: EdgeInsets.all(100.0),
      //   child: Text('Hello'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(100.0),
        child: Text('Hello', style: TextStyle(color: Colors.amber, backgroundColor: Colors.lightBlue),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
      ),
    );
  }
}
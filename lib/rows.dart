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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Hello, World'),
          ElevatedButton(onPressed: ()=>print('Clicked me'), child: Text('Click Me'), style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),),
          Container(
            child: Text('inside container'),
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
          )],
      ),
    );
  }
}
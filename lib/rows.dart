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
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   //crossAxisAlignment: CrossAxisAlignment.stretch,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Text('Hello, World'),
      //     ElevatedButton(onPressed: ()=>print('Clicked me'), child: Text('Click Me'), style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),),
      //     Container(
      //       child: Text('inside container'),
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30.0),
      //     )],
      // ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Row(
      //       children: [
      //         Text('hello, '),
      //         Text('world')
      //       ],
      //     ),
      //     Container(
      //       child: Text('one'),
      //       padding: EdgeInsets.all(20),
      //       color: Colors.cyan,
      //     ),
      //     Container(
      //       child: Text('two'),
      //       padding: EdgeInsets.all(30),
      //       color: Colors.pinkAccent,
      //     ),
      //     Container(
      //       child: Text('three'),
      //       padding: EdgeInsets.all(50),
      //       color: Colors.amber,
      //     )
      //   ],
      // ),
      body: Row(
        children: [
          Expanded(
              flex: 3,
              child: Image.asset('assets/images/mobile-wallpaper-1.jpeg')
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1')
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.pinkAccent,
                child: Text('2')
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.amber,
                child: Text('3')
            ),
          )
        ],
      ),
    );
  }
}
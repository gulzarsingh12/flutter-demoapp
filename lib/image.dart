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
        //child: Image(image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.zA8v93xcMguCA50HLdfxhwHaLG%26pid%3DApi&f=1&ipt=b959f13dfb1d55cd9b0b5bf82cd1d9b2d7363d97c613a66252ad007329f72947&ipo=images'))
        //child: Image(image: AssetImage('images/mobile-wallpaper-1.jpeg'))
        //child: Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.zA8v93xcMguCA50HLdfxhwHaLG%26pid%3DApi&f=1&ipt=b959f13dfb1d55cd9b0b5bf82cd1d9b2d7363d97c613a66252ad007329f72947&ipo=images'),
        child: Image.asset('images/mobile-wallpaper-2.jpeg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_demoapp/quote_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class Quote {
  String text;
  String author;

  Quote({required this.text, required this.author});
}

class _HomeState extends State<Home> {
  // List<String> quotes = [
  //   'Be yourself, everyone else is already taken',
  //   'I have nothing to declare except my genius',
  //   'Truth is rarely pure and never simple'
  // ];
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself, everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(text: 'Truth is rarely pure and never simple', author: 'Oscar Wilde')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //children: quotes.map((quote) => Text(quote)).toList(),
        children:
            //quotes.map((quote)=> Text('${quote.text}-${quote.author}')).toList(),
            quotes
                .map((quote) => QuoteCard(
                      quote: quote,
                      delete: () {
                        setState(() {
                          quotes.remove(quote);
                        });
                      },
                    ))
                .toList(),
      ),
    );
  }
}

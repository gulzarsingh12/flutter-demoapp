import 'package:flutter/material.dart';
import 'package:flutter_demoapp/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 8.0,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(iconColor: Colors.grey[900]),
              onPressed: () => delete(),
              label: Text(
                'delete quote',
                style: TextStyle(color: Colors.grey[900]),
              ),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}

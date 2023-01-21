// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text:
            'It is during our darkest moments that we must focus to see the light.',
        author: 'Aristotle'),
    Quote(
        text:
            'The future belongs to those who believe in the beauty of their dreams.',
        author: 'Eleanor Roosevelt'),
    Quote(
        text:
            'In the end, its not the years in your life that count. Its the life in your years.',
        author: 'Abraham Lincoln'),
  ];

  Widget quoteTemplate(quote) {
    return Q uoteCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 222, 222),
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 81, 81, 81),
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color.fromARGB(255, 58, 57, 57),
                ),
              )
            ],
          ),
        ));
  }
}

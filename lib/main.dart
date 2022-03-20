import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() =>runApp(MaterialApp(
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {


  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes=[
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote:quote,
            delete:() {
              setState(() {
                quotes.remove(quote);
              });
        }
        )).toList(),
      ),
    );
  }
}


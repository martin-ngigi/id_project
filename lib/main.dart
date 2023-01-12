import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(
      MaterialApp(
          home: Quotelist()
      )
  );
}

//short-cut for StatelessWidget is "stless"

//short-cut for StatefulWidget is "stful"
class Quotelist extends StatefulWidget {
  @override
  State<Quotelist> createState() => _HomeState();
}

class _HomeState extends State<Quotelist> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    List<Quote> quotes_list = [
      // "Be yourself, everyone else is already taken.",
      // "I have nothing else to declare except my genius.",
      // "The truth is rarely pure and never simple.",
      Quote("Martin", "Be yourself, everyone else is already taken."),
      Quote("Prof",  "I have nothing else to declare except my genius."),
      Quote("Wainaina",  "The truth is rarely pure and never simple.")
    ];

    //Scaffold allows us to create a well layered app with appbar, body
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Quote List app"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: quotes_list.map((quote)
        => Text("${quote.author}: ${quote.text}") // "=>" is used as a return statement
        ).toList(),
      ),
    );
  }
}

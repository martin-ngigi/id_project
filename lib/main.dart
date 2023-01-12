import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: Home()
      )
  );
}

//short-cut is stless
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold allows us to create a well layered app with appbar, body
    return Scaffold(
      backgroundColor: Colors.grey[900], //entire background
      appBar: AppBar(
        title: Text("World Timer App"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, //remove shadow
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // horizontal alignment.
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/image1.jpg"),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[400],
            ),
            Text(
              "Name",
              style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0), //for placing a gap in between the fields.
            Text(
              "Martin",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0), //
            Text(
              "Current Dev level",
              style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0), //for placing a gap in between the fields.
            Text(
              "Senior Developer",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0), //for placing a gap in between the fields.
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                  size: 24.0,
                  // semanticLabel: 'Email',
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0), //left, Top, Right, Bottom
                  //instead of a container, one can also use sized box
                  child: Text(
                    "martinwainaina001@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}

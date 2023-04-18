import 'package:flutter/material.dart';
import 'package:matrixco_hf23/welcome.dart';

class ProfileCreate3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("Your Life Goals"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LinearProgressIndicator(
              value: 0.75, // replace with the actual progress
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  // code for "Grow my money" button goes here
                },
                child: Text(
                  'Grow my money',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  // code for "Grow my money" button goes here
                },
                child: Text(
                  'Provide security for my family members',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  // code for "Grow my money" button goes here
                },
                child: Text(
                  'Protect future insurability',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  // code for "Grow my money" button goes here
                },
                child: Text(
                  'Cover cost related death',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  // code for "Grow my money" button goes here
                },
                child: Text(
                  'Pay taxes on an estate',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  // code for "Grow my money" button goes here
                },
                child: Text(
                  'Cover costs related to disability',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  // code for "Grow my money" button goes here
                },
                child: Text(
                  'Enjoy retirement',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) =>Welcome(),
                  ));
                },
                child: Text('Continue'),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Welcome(),
                  ));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

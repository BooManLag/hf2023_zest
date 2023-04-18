import 'package:flutter/material.dart';

import 'botnavbar.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF023047),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(350.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Zest!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text(
                  'Protect your future with insurance that fits your needs',
                  style: TextStyle(
                    color: Color(0xff8ECAE6),
                    fontSize: 10.0,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
        bottomOpacity: 1.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              width: 400,
              child: Align(
                alignment: Alignment.center,
                child: Center(
                  child: Text(
                    "Zest simplifies the insurance process and offers customized recommendations.",
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 50,
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => BotNavBar(),
                ));
              },
              child: Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}

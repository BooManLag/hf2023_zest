import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:matrixco_hf23/botnavbar.dart';

import 'getquote1.dart';
import '../home.dart';

class GetQuote2 extends StatefulWidget {
  const GetQuote2({Key? key}) : super(key: key);

  @override
  State<GetQuote2> createState() => _GetQuote2State();
}

class _GetQuote2State extends State<GetQuote2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Sample Premium Plan',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //1 card with 3 texts
            Center(
              child: Container(
                height: 150,
                width: 350,
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      //1st text
                      Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: const Text(
                          'PHP 350,000.00',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //2nd text
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Face Amount Value',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //3rd text
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: const Text(
                          'Life Insurance and Accidental Death Benefit',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 170,
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        //1st text
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: const Text(
                            ' PHP 842,442.24',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //3rd text
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Amount of coverage you will be getting based on your premium',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 110,
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        //1st text
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: const Text(
                            ' 10 Years',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //3rd text
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Time you will be paying for your plan',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 110,
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        //1st text
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: const Text(
                            'Age 100',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //3rd text
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Coverage',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //Text about "Plan Projection"
            const Text(
              'Plan Projection',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 200,
              child: Image.asset("assets/images/planprojection.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: Text(
                "The example above is for illustration purposes only, based on the Life "
                "Protection 100 variant and the amount you entered with no riders attached. "
                "The calculation does not include any taxes or other charges that may be "
                "imposed, and all data contained herein is subject to change without notice.",
                style: TextStyle(fontSize: 10),
              ),
            ),
            Container(
              width: 350,
              child: Text(
                "Please note that this information should not be construed as an offer "
                "to sell or solicitation to buy any financial product. A financial "
                "advisor can help customize a "
                "plan for you based on your financial situation.",
                style: TextStyle(fontSize: 10),
              ),
            ),SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  //quote2 will just be added below the submit button
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BotNavBar()),
                  );
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

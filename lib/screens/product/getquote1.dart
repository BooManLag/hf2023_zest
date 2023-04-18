import 'package:flutter/material.dart';

import 'getquote2.dart';

class GetQuote1 extends StatefulWidget {
  const GetQuote1({Key? key}) : super(key: key);

  @override
  State<GetQuote1> createState() => _GetQuote1State();
}

class _GetQuote1State extends State<GetQuote1> {
  String dropdownValue = 'Male';
  String dropdownValue1 = 'Annually';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //backbutton to go back to previous page
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            SizedBox(
              height: 20,
            ),
            //title "Get a Quote"
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Get a Quote',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //Date of birth
            //Text about "Enter your date of birth"
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Date of Birth',
                  hintText: 'MM/DD/YYYY',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            //put a dropdown to enter the gender
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: const Text(
                    'Enter Gender ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    items: <String>['Male', 'Female']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 20),
                        ),
                      );
                    }).toList(),
                    // Step 5.
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //asking if you smoke and 2 buttons for yes or no
                Padding(
                  padding: const EdgeInsets.only(right: 70.0),
                  child: const Text(
                    'Do you smoke? ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                //yes button
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Yes'),
                ),
                //no button
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('No'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: const Text(
                    'How would you often like to pay? ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: DropdownButton<String>(
                    value: dropdownValue1,
                    items: <String>['Annually', 'Semi-Annually', 'Quarterly']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 15),
                        ),
                      );
                    }).toList(),
                    // Step 5.
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'How would you like to pay',
                  hintText: 'Php 0.00',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Submit Button
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  //quote2 will just be added below the submit button
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GetQuote2()),
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

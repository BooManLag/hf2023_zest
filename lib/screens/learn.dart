import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  final List<String> images = [
    "assets/images/1a.jpg",
    "assets/images/2a.jpg",
  ];
  final List<String> images2 = [
    "assets/images/2a.jpg",
    "assets/images/1a.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF023047),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: Padding(
            padding: const EdgeInsets.only(right: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Text(
                    'Learn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    'Protect your future with insurance that fits your needs',
                    style: TextStyle(
                      color: Colors.white,
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
        ),
        bottomOpacity: 1.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(right: 250.0),
              child: Text(
                "Daily Digest",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ), //make a card with a leading title and subtitle, and an image in the right
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Container(
                height: 200,
                child: Card(
                  elevation: 5.0,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        child: Image.asset(
                          'assets/images/1ah.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.fromLTRB(10.0, 10.0, 40.0, 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              '5 Financial Tips to',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 15,
                                  color: Colors.orange),
                            ),
                            Text(
                              'Learn From Gen Z',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 15,
                                  color: Colors.orange),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                             Text(
                              'Lorem ipsum dolor sit',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 300.0),
              child: Text(
                "Reads",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              height: 200,
              width: 350,
              child: Swiper(
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                  );
                },
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //using swiper, make a carousel of cards with a leading title and subtitle, an image in the top, and 2 buttons below
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 250.0),
              child: Text(
                "Resources",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 350,
              child: Swiper(
                itemCount: images2.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 5.0,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 300,
                          child: Image.asset(
                            images2[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Life Protection Plan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, magna aliqua.',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Tips'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            elevation: 0.0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

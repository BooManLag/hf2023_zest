import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> images = [
    "assets/images/1a.jpg",
    "assets/images/2a.jpg",
  ];
  final List<String> images2 = [
    "assets/images/1a.jpg",
    "assets/images/2a.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //create appbar with sidenavbar, logo at the middle and notification bell on the right
        appBar: AppBar(
          backgroundColor: Color(0xFF023047),
          elevation: 0.0,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Color(0xFF023047),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      //Row for name and money, with H1 size
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: const Text(
                              'Hello',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Alex! ',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff8ECAE6),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 55.0),
                        child: Text(
                          'Protect your future with insurance that fits your needs',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),

                      //A column of 3 long elevated buttons a leading text and icon in the end
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'File a Claim',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 200,
                                    ),
                                    const Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 1.0,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Track Payments',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 170,
                                    ),
                                    const Icon(
                                      Icons.money,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 1.0,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Contact a Financial Advisor',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 100,
                                    ),
                                    const Icon(
                                      Icons.person_pin,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 0.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //make an image carousel with 2 images using swiper
                Padding(
                  padding: EdgeInsets.only(right: 190.0),
                  child: Text(
                    "Recommended For You",
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
                    height: 100,
                    child: Card(
                      elevation: 5.0,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                10.0, 10.0, 20.0, 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '5 Financial Tips to Learn From Gen Z',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange),
                                ),
                                const SizedBox(
                                  height: 10,
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
                          Container(
                              height: 70,
                              width: 65,
                              child: Image.asset(
                                'assets/images/1ah.png',
                                fit: BoxFit.fill,
                              )),
                        ],
                      ),
                    ),
                  ),
                ), //using swiper, make a carousel of cards with a leading title and subtitle, an image in the top, and 2 buttons below
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
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 5.0, 20.0, 5.0),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Buy Now'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    elevation: 0.0,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Learn More'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    elevation: 0.0,
                                  ),
                                ),
                              ],
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
        ),
      ),
    );
  }
}

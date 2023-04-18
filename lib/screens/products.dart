import 'package:flutter/material.dart';

import 'product/getquote1.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                      padding: const EdgeInsets.only(right: 150.0),
                      child: Text(
                        'Products',
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
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    //3 small elevated buttons for filters namely: income protection, life protection, investments
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Income Protection',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 10.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0.0,
                          side: BorderSide(color: Colors.orange, width: 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Life Protection',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 10.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0.0,
                          side: BorderSide(color: Colors.orange, width: 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Investments',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 10.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0.0,
                          side: BorderSide(color: Colors.orange, width: 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                // Text that instructs "Choose from these 18 products or use the tags to refine your search."
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Text(
                    'Choose from these 18 products or use the tags to refine your search.',
                    style: TextStyle(
                      color: Color(0xFF023047),
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    color: Color(0xFfe7e0ec),
                    elevation: 5.0,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/1a.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 20.0, 75.0, 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Income Protection',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, magna aliqua.',
                                style: TextStyle(
                                  fontSize: 14,
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
                              child: const Text(
                                'Learn More',
                                style: TextStyle(color: Colors.orange),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    color: Color(0xFfe7e0ec),
                    elevation: 5.0,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/2a.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 20.0, 75.0, 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Life Protection',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, magna aliqua.',
                                style: TextStyle(
                                  fontSize: 14,
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
                              child: const Text(
                                'Learn More',
                                style: TextStyle(color: Colors.orange),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    color: Color(0xFfe7e0ec),
                    elevation: 5.0,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/1a.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 20.0, 75.0, 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Health Protection',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, magna aliqua.',
                                style: TextStyle(
                                  fontSize: 14,
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
                              child: const Text(
                                'Learn More',
                                style: TextStyle(color: Colors.orange),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ), SizedBox(height: 20.0),
                Container(width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GetQuote1()),
                      );
                    },
                    child: const Text('Get a Quote'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.all(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 130.0,
          left: 20.0,
          right: 20.0,
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.search,
                              color: Color(0xFF023047),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search for a product',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF023047),
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

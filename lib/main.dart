import 'package:flutter/material.dart';

import 'package:badges/badges.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Const
  static const blueColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Container(
          margin: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Center(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Image.asset('assets/img/shoe.jpg'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //padding: const EdgeInsets.only(left: 16.0, right: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'PRODUCT NAME.',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Description of the product.',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                                textAlign: TextAlign.left,
                              ),                              
                            ],
                          ),
                        ),
                        Container(
                          //padding: const EdgeInsets.only(left: 4.0, right: 16.0),
                          child: Badge(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                            shape: BadgeShape.square,
                            badgeColor: blueColor,
                            borderRadius: BorderRadius.circular(2),
                            badgeContent: const Text('NEW',
                                style: TextStyle(fontSize: 24, color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),                  
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,                    
                      children: [
                        Container(
                          child: Row(
                            children: const [
                              Icon(Icons.star, color: Colors.black),
                              Icon(Icons.star, color: Colors.black),
                              Icon(Icons.star, color: Colors.black),
                              Icon(Icons.star, color: Colors.black),
                              Icon(Icons.star, color: Colors.grey),                       
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),  
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Row(                     
                      children: const [
                        Text(
                          '\$9.00',
                          style: TextStyle(
                            fontSize: 24, 
                            fontWeight: FontWeight.bold, 
                            color: Colors.blue),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          '\$18.00',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

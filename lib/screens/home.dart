import 'package:flutter/material.dart';

import '../color.dart';
import '../widgets/widgets.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                //SECTION 1
                //SECTION 1
                //SECTION 1
                Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage('assets/profil.png')),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Raphael K.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Text('BADA'),
                                    ],
                                  )
                                ],
                              ),
                              ShoppingCard(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cookies',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Premium',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cofee,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'See more',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: cofee,
                                    fontSize: 16),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //SECTION 2
                //SECTION 2
                //SECTION 2
                Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ChocolateContainer(
                        name: 'Chocolates',
                        category: 'Chips',
                        price: '20 USD',
                        imagePath: 'assets/2.png',
                      ),
                      ChocolateContainer(
                        name: 'Oatmeals',
                        category: 'With Raisins',
                        price: '16 USD',
                        imagePath: 'assets/1.png',
                      ),
                    ],
                  ),
                ),
                //SECTION 3
                //SECTION 3
                //SECTION 3
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Offers',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'See more',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: cofee,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width - 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(75),
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                color: Colors.grey.withOpacity(0.3)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 50) *
                                          0.25,
                                  child:
                                      Image(image: AssetImage('assets/3.png')),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 50) *
                                          0.3,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Double'),
                                      Text('Chocolate'),
                                      Text(
                                        '👑 PREMIUM',
                                        style: TextStyle(
                                            color: cofee,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    width: (MediaQuery.of(context).size.width -
                                            50) *
                                        0.25,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(''),
                                        Text.rich(
                                          TextSpan(
                                            text: '\n ',
                                            children: <TextSpan>[
                                              new TextSpan(
                                                text: '12.99 USD',
                                                style: new TextStyle(
                                                  color: Colors.grey,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '7 USD',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 0,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen()));
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.arrow_right,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          BottomNavBar()
        ],
      ),
    );
  }
}

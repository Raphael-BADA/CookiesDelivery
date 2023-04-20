import 'package:flutter/material.dart';

import '../color.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  String activeBottomNavBar = 'home';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.06,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.1,
          top: MediaQuery.of(context).size.height * 0.01,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          activeBottomNavBar == 'home' ? cofee : bg,
                      radius: 5,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeBottomNavBar = 'home';
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        radius: 27,
                        child: Icon(
                            color: activeBottomNavBar == 'home'
                                ? cofee
                                : Colors.white,
                            Icons.home),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: activeBottomNavBar == 'home'
                              ? cofee
                              : Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          activeBottomNavBar == 'search' ? cofee : bg,
                      radius: 5,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeBottomNavBar = 'search';
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        radius: 27,
                        child: Icon(
                            color: activeBottomNavBar == 'search'
                                ? cofee
                                : Colors.white,
                            Icons.search),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                          color: activeBottomNavBar == 'search'
                              ? cofee
                              : Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          activeBottomNavBar == 'cart' ? cofee : bg,
                      radius: 5,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          activeBottomNavBar = 'cart';
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        radius: 27,
                        child: Icon(
                            color: activeBottomNavBar == 'cart'
                                ? cofee
                                : Colors.white,
                            Icons.shopping_cart),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(
                          color: activeBottomNavBar == 'cart'
                              ? cofee
                              : Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

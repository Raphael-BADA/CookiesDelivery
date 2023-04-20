import 'package:cookies/color.dart';
import 'package:flutter/material.dart';

import '../screens/detail_screen.dart';

class ChocolateContainer extends StatefulWidget {
  ChocolateContainer(
      {required this.name,
      required this.category,
      required this.price,
      required this.imagePath,
      Key? key})
      : super(key: key);
  String name;
  String category;
  String price;
  String imagePath;
  @override
  _ChocolateContainerState createState() => _ChocolateContainerState();
}

class _ChocolateContainerState extends State<ChocolateContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: (MediaQuery.of(context).size.width - 50) * 0.4,
            color: bg,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.10,
            child: Card(
              color: bg,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: (MediaQuery.of(context).size.width - 50) * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(70),
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text(widget.name),
                          Text(widget.category),
                          Text(
                            '👑 PREMIUM',
                            style: TextStyle(
                                color: cofee, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.price,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
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
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: (MediaQuery.of(context).size.width - 50) * 0.4,
            child: Image(image: AssetImage(widget.imagePath)),
          )
        ],
      ),
    );
  }
}

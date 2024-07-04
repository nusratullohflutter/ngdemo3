import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Page"),
        backgroundColor: Colors.blue,
      ),
      body: PageView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: 400,
                  width: 400,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/im_image1.jpg"),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Fresh Food",
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Aenean commodo ligula eget dolor. ",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: 400,
                  width: 400,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/im_image2.jpg"),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Fast Delivery",
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Aenean commodo ligula eget dolor. ",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: 400,
                  width: 400,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/im_image3.jpg"),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Easy Payment",
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Aenean commodo ligula eget dolor. ",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

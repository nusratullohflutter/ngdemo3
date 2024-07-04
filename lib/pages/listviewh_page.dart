import 'package:flutter/material.dart';

class ListViewhPage extends StatefulWidget {
  const ListViewhPage({super.key});

  @override
  State<ListViewhPage> createState() => _ListViewHPageState();
}

class _ListViewHPageState extends State<ListViewhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal ListView"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.orange,
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _itemList(title: "Jhon", image: "assets/images/im_sample2.jpg"),
            _itemList(title: "Jhon", image: "assets/images/im_sample2.jpg"),
            _itemList(title: "Jhon", image: "assets/images/im_sample2.jpg"),
            _itemList(title: "Jhon", image: "assets/images/im_sample2.jpg"),
          ],
        ),
      ),
    );
  }

  Widget _itemList({title, image}) {
    return Container(
        width: 200,
        height: 200,
        color: Colors.red,
        margin: EdgeInsets.all(5),
        padding: EdgeInsetsDirectional.all(20),
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 10,
            ),
            Text(title)
          ],
        ));
  }
}

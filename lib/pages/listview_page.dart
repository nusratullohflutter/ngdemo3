import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView page"),
      ),
      body: ListView(
        children: [
          _itemList(title: "Jhon", image: "assets/images/im_image.jpg"),
          _itemList(title: "Jhon", image: "assets/images/im_image.jpg"),
          _itemList(title: "Jhon", image: "assets/images/im_image.jpg"),
          _itemList(title: "Jhon", image: "assets/images/im_image.jpg"),
        ],
      ),
    );
  }

  Widget _itemList({title, image}) {
    return Container(
      child: Row(
        children: [
          Image(
            width: 70,
            height: 70,
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
          Text(title)
        ],
      ),
    );
  }
}

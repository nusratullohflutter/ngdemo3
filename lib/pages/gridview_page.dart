import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({super.key});

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView Page"),
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            _itemGridView(title: "Jhon", image: "assets/images/im_image.jpg"),
            _itemGridView(title: "Jhon", image: "assets/images/im_image.jpg"),
            _itemGridView(title: "Jhon", image: "assets/images/im_image.jpg"),
            _itemGridView(title: "Jhon", image: "assets/images/im_image.jpg"),
          ],
        ));
  }

  Widget _itemGridView({title, image}) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 200,
      height: 200,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}

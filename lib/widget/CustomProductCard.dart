import 'package:flutter/material.dart';

class Customproductcard extends StatelessWidget {
  Customproductcard({super.key,required this.name,required this.price,required this.imgURL});
  String imgURL;
  String name;
  var price;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            width: 60,
            height: 120,
            child: Image.network("${imgURL}"),
          ),
          Text("${name}"),
          Text("${price}"),
        ],
      ),
    );
  }
}

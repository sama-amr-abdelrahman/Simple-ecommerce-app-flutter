import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({super.key,required this.imgURL,required this.name,required this.desc});
  String name;
  String desc;
  String imgURL;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product details"),
      ),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 200,
            child: Image.network("$imgURL"),
          ),
          SizedBox(height: 7,),
          Text(name),
          SizedBox(height: 7,),
          Text(desc)
        ],
      ),
    );
  }
}

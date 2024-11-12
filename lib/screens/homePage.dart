import 'package:assesment_sama_amr_0522080/providers/HomePageProvider.dart';
import 'package:assesment_sama_amr_0522080/widget/CustomProductCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Details.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
      ),
      body: Consumer<HomePageProvider>(
        builder: (context,value,child) => GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index) {
            var data = value.model;
            if(data == null){
              value.getData();
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else{
              var pro = data.products[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Details(imgURL: pro["image"], name: pro["name"], desc: pro["description"],),));
                },
                child: Customproductcard(
                    name: pro["name"],
                    price: pro["price"],
                    imgURL: pro["image"]
                ),
              );
            }
          },
          itemCount: value.model?.products.length,
        ),

      ),
    );
  }
}

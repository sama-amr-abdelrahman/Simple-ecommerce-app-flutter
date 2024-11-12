import 'package:assesment_sama_amr_0522080/screens/homePage.dart';

class HomePageModel{
  List<dynamic> products;
  HomePageModel({required this.products});
  factory HomePageModel.fromJson(Map<String,dynamic> json){
    return HomePageModel(products: json["data"]["products"]);
  }
}
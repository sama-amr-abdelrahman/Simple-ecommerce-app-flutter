import 'package:assesment_sama_amr_0522080/models/homePageModel.dart';
import 'package:assesment_sama_amr_0522080/services/HomePageService.dart';
import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier{
  HomePageModel? model;
  getData()async{
    model = await HomePageService.gatData();
    notifyListeners();
  }
}
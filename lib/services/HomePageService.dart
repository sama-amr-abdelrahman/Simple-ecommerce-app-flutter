import 'package:assesment_sama_amr_0522080/models/homePageModel.dart';
import 'package:dio/dio.dart';

class HomePageService{
  static Dio dio = Dio();
  static Future gatData()async{
    try{
      Response response = await dio.get("https://student.valuxapps.com/api/home");
      if(response.statusCode! >= 200 && response.statusCode! < 300){
        return HomePageModel.fromJson(response.data);
      }
      else{
        throw Exception("There is an error");
      }
    }
    catch(ex){
      throw Exception(ex);
    }
  }
}
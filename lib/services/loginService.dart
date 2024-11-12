import 'package:assesment_sama_amr_0522080/models/loginModel.dart';
import 'package:dio/dio.dart';

class LoginService{
  static Dio dio = Dio();
  static Future checkData(String email,String pass)async{
    try {
      Response response = await dio.post(
          "https://student.valuxapps.com/api/login",
        data: {
            "email" : email,
          "password" : pass
        }
      );
      print(response.data["status"]);
      print(response.data);
      if (response.data["status"] == true) {
        return LoginModel.fromJson(response.data);
      }
      else
        return null;
    }
    catch(ex){
      throw Exception(ex);
    }
  }
}
import 'package:assesment_sama_amr_0522080/models/SignUpModel.dart';
import 'package:dio/dio.dart';

class SignupService{
  static Dio dio = Dio();
  static Future AddUser(String name,String phone,String email,String pass)async{
    try{
      Response response = await dio.post(
          "https://student.valuxapps.com/api/register",
        data: {
            "name":name,
          "phone" : phone,
          "email" : email,
          "password" : pass
        }
      );
      print(response.data["status"]);
      print(response.data);
      if(response.data["status"] == true){
        return Signupmodel.fromJson(response.data);
      }
      else {
        throw Exception("There is an error");
      }
    }
    catch(ex){
      throw Exception(ex);
    }
  }
}
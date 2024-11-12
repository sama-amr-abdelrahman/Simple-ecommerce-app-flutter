import 'package:assesment_sama_amr_0522080/models/SignUpModel.dart';
import 'package:assesment_sama_amr_0522080/services/SignUpService.dart';
import 'package:flutter/cupertino.dart';

class SignUpProvider extends ChangeNotifier{
  Signupmodel? model;
  addUser(String name,String phone,String email,String pass)async{
    model = await SignupService.AddUser(name, phone, email, pass);
    if(model != null){
      return true;
    }
    else
      return false;
  }
}
import 'dart:ffi';

import 'package:assesment_sama_amr_0522080/models/loginModel.dart';
import 'package:assesment_sama_amr_0522080/services/loginService.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier{
  LoginModel? model;
  Future checkData(String email,String pass)async{
    model = await LoginService.checkData(email, pass);
    if(model != null){
      return true;
    }
    else
      return false;
  }
}
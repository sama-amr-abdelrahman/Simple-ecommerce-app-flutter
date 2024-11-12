class LoginModel{
  bool status;
  String token;
  String imgURL;
  bool status1;
  LoginModel({required this.token,required this.status,required this.imgURL,required this.status1});
  factory LoginModel.fromJson(Map<String,dynamic> json){
    return LoginModel(
    token: json["data"]["token"],
    status: json["status"],
    imgURL: json["data"]["image"],
        status1: json["status"]
   );
  }
}
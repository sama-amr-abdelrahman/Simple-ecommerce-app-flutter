class Signupmodel{
  bool status;
  String token;
  String imgURL;
  Signupmodel({required this.token,required this.status,required this.imgURL});
  factory Signupmodel.fromJson(Map<String,dynamic> json){
    return Signupmodel(
        token: json["data"]["token"],
        status: json["status"],
        imgURL: json["data"]["image"]
    );
  }
}
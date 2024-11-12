import 'package:assesment_sama_amr_0522080/providers/loginProvider.dart';
import 'package:assesment_sama_amr_0522080/screens/homePage.dart';
import 'package:assesment_sama_amr_0522080/screens/signUpPage.dart';
import 'package:assesment_sama_amr_0522080/widget/customFormField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<LoginProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.format_line_spacing_sharp),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage:AssetImage("assets/logo.jpg"),
              ),
              SizedBox(
                height: 20,
              ),
              Customformfield(
                  txt: "E-mail",
                  icon: Icons.mail,
                cont: email,

              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 300,
                height: 30,
                child: TextFormField(
                  controller: pass,
                  validator: (value) {
                    if(pass.text == null || pass.text.isEmpty){
                      return "field is required";
                    }
                    else
                      return null;
                  },
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      hintText: "Passwrd",
                      suffix: Icon(Icons.lock),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
              ),
              ),
              TextButton(
                  onPressed: ()async{
                    if(formKey.currentState!.validate()){

                    }
                    bool res = await pro.checkData(email.text,pass.text);
                    print(res);
                    if(res){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
                    }
                  },
                  child: Text("Login")
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signuppage(),));
                  },
                  child: Text("Don't have ann account Signup"))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:assesment_sama_amr_0522080/providers/SignUpProvider.dart';
import 'package:assesment_sama_amr_0522080/providers/loginProvider.dart';
import 'package:assesment_sama_amr_0522080/screens/homePage.dart';
import 'package:assesment_sama_amr_0522080/screens/loginScreen.dart';
import 'package:assesment_sama_amr_0522080/widget/customFormField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signuppage extends StatelessWidget {
  Signuppage({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<SignUpProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SignUp",
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
              Customformfield(
                txt: "Name",
                icon: Icons.mail,
                cont: name,

              ),
              SizedBox(
                height: 20,
              ),
              Customformfield(
                txt: "Phone",
                icon: Icons.mail,
                cont: phone,

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
                height: 20,
              ),
              Customformfield(
                txt: "Password",
                icon: Icons.remove_red_eye,
                cont: pass,
              ),
              TextButton(
                  onPressed: ()async{
                    if(formKey.currentState!.validate()){
                      bool res = await pro.addUser(name.text,phone.text,email.text,pass.text);
                      print(res);
                      if(res){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
                      }
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
                    }
                  },
                  child: Text("SignUp")),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
              }, child: Text("Already have an account sign in"))
            ],
          ),
        ),
      ),
    );
  }
}

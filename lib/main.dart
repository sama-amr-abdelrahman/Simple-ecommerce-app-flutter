import 'package:assesment_sama_amr_0522080/providers/HomePageProvider.dart';
import 'package:assesment_sama_amr_0522080/providers/SignUpProvider.dart';
import 'package:assesment_sama_amr_0522080/providers/loginProvider.dart';
import 'package:assesment_sama_amr_0522080/screens/loginScreen.dart';
import 'package:assesment_sama_amr_0522080/screens/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider(),),
        ChangeNotifierProvider(create: (context) => SignUpProvider(),),
        ChangeNotifierProvider(create: (context) => HomePageProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Signuppage()
      ),
    );
  }
}
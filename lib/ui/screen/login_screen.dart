import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamunstask/ui/screen/email_verijicasion_screen.dart';
import 'package:mamunstask/ui/screen/home_screen.dart';
import 'package:mamunstask/ui/screen/sing_up_screen.dart';
import 'package:mamunstask/ui/widget/screen_background.dart';


class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Screen_background(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("get start wigh",style:Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 16,),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email"
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",

                    ),
                  ),
                  const SizedBox(height: 16,),
                  SizedBox(
                    width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route) => false);
                      }, child: const Icon(Icons.double_arrow))),
                  const SizedBox(height: 16,),
                  Center(child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Email_vereficasion()));
                  }, child: const Text("forgot password"))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("age acauond korun"),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> sing_up_screen()));
                      }, child: const Text("Sign in"))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

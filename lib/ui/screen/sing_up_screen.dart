import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamunstask/ui/widget/screen_background.dart';


class sing_up_screen extends StatefulWidget {
  const sing_up_screen({super.key});

  @override
  State<sing_up_screen> createState() => _sing_up_screenState();
}

class _sing_up_screenState extends State<sing_up_screen> {
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
                  Text("Sing up screen",style:Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 16,),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email"
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Fast Name"
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Last Name"
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Phone"
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
                      child: ElevatedButton(onPressed: (){}, child: const Icon(Icons.double_arrow))),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("age acauond korun"),
                      TextButton(onPressed: (){}, child: const Text("Sign in"))
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

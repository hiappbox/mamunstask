import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamunstask/ui/widget/screen_background.dart';


class set_password extends StatefulWidget {
  const set_password({super.key});

  @override
  State<set_password> createState() => _set_passwordState();
}

class _set_passwordState extends State<set_password> {
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
                  Text("Set Password",style:Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 16,),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Password"
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",

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

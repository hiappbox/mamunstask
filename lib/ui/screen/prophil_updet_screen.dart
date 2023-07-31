import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamunstask/ui/screen/nav_bar_screen/samary.dart';
import 'package:mamunstask/ui/widget/screen_background.dart';


class prophil_updet_screen extends StatefulWidget {
  const prophil_updet_screen({super.key});

  @override
  State<prophil_updet_screen> createState() => _prophil_updet_screenState();
}

class _prophil_updet_screenState extends State<prophil_updet_screen> {
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
                  Text("profile update",style:Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 16,),
                  const Row(children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 50,
                          child: Card(
                      child: Center(child: Text("Photos")),
                      color: Colors.orange,
                    ),
                        )),
                    Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: 50,
                          child: Card(
                            color: Colors.grey,
                          ),
                        )),
                  ],),
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
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const Samary()), (route) => false);
                      }, child: const Icon(Icons.double_arrow))),
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

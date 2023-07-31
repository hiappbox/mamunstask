import 'package:flutter/material.dart';
import 'package:mamunstask/ui/screen/nav_bar_screen/samary.dart';
import 'package:mamunstask/ui/widget/prophail_banar.dart';
import 'package:mamunstask/ui/widget/screen_background.dart';


class add_new_task extends StatefulWidget {
  const add_new_task({super.key});

  @override
  State<add_new_task> createState() => _add_new_taskState();
}

class _add_new_taskState extends State<add_new_task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen_background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const prophail_banar(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16,),
                    const Text("Add New Task",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),
                    const SizedBox(height: 16,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "title",
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      maxLines: 15,
                      decoration: const InputDecoration(
                        hintText: "desqrepsion",
                      ),
                    ),
                    const SizedBox(height: 16,),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const Samary()), (route) => false);
                        }, child: const Icon(Icons.double_arrow))),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

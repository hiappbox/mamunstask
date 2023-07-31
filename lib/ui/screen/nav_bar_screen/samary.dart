import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamunstask/ui/widget/prophail_banar.dart';
import 'package:mamunstask/ui/widget/samary_card.dart';
import 'package:mamunstask/ui/widget/task_list_tile.dart';


class Samary extends StatefulWidget {
  const Samary({super.key});

  @override
  State<Samary> createState() => _SamaryState();
}

class _SamaryState extends State<Samary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            const prophail_banar(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: samary_card(
                      number: 50,
                      title: "New",
                    ),),
                  Expanded(
                    child: samary_card(
                      number: 50,
                      title: "New",
                    ),),
                  Expanded(
                    child: samary_card(
                      number: 50,
                      title: "New",
                    ),),
                  Expanded(
                    child: samary_card(
                      number: 50,
                      title: "New",
                    ),),
                ],
              ),
            ),
            Expanded(child: ListView.separated(
              separatorBuilder: (BuildContext context, int index){
                return const Divider(
                  height: 4,
                  color: Colors.black,
                );
              },
                itemCount: 20,
                itemBuilder: (context,index){
                  return const task_list_tile(
                    child: Chip(label: Text("New"),backgroundColor: Colors.blue,),
                  );
            }))
          ],
        ),
      ),

    );
  }
}







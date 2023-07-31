import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamunstask/ui/widget/prophail_banar.dart';
import 'package:mamunstask/ui/widget/task_list_tile.dart';

class Complited extends StatefulWidget {
  const Complited({super.key});

  @override
  State<Complited> createState() => _ComplitedState();
}

class _ComplitedState extends State<Complited> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            const prophail_banar(),
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
                    child: Chip(label: Text("Complited"),backgroundColor: Colors.green,),
                  );
                }))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class samary_card extends StatelessWidget {
  const samary_card({
    super.key, required this.number, required this.title,
  });

  final int number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('$number',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
            Text("$title"),
          ],
        ),
      ),
    );
  }
}
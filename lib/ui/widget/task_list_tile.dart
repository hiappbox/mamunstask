import 'package:flutter/material.dart';

class task_list_tile extends StatelessWidget {
  final Widget child;
  const task_list_tile({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("fjkdjf"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("desqrepsion"),
          Text("dete"),
          Row(
            children: [
              child,
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever,color: Colors.deepOrange,)),
            ],
          )

        ],
      ),
    );
  }
}
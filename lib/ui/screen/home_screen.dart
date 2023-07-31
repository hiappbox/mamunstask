import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamunstask/ui/screen/add_new_task.dart';
import 'package:mamunstask/ui/screen/nav_bar_screen/close.dart';
import 'package:mamunstask/ui/screen/nav_bar_screen/complited.dart';
import 'package:mamunstask/ui/screen/nav_bar_screen/pending.dart';
import 'package:mamunstask/ui/screen/nav_bar_screen/samary.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List _navBarScreen = [
    const Samary(),
    const Panding(),
    const Close(),
    const Complited(),
  ];
int _selactedScreenValos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navBarScreen[_selactedScreenValos],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selactedScreenValos,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        onTap: (int index){
          _selactedScreenValos = index;

          if (mounted){
            setState(() {
            });
          }
        },
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.ac_unit_rounded),label: "samary"),
          BottomNavigationBarItem(icon:Icon(Icons.pending_outlined),label: "pending"),
          BottomNavigationBarItem(icon:Icon(Icons.dangerous_outlined),label: "close"),
          BottomNavigationBarItem(icon:Icon(Icons.done_all),label: "complited"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const add_new_task()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/assets_utils.dart';
import 'login_screen.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    super.initState();
    Navigettologin();
  }

  void Navigettologin() {
    Future.delayed(Duration(seconds: 3)).then((_) => {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => login_screen()),
              (route) => false)
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffffc10e)),
          child: Center(
              child: SvgPicture.asset(
            Assets_utils.logo1SVG,
            width: 160,
            fit: BoxFit.scaleDown,
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mamunstask/ui/utils/assets_utils.dart';


class Screen_background extends StatelessWidget {
  final Widget child;
  const Screen_background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SvgPicture.asset(
              Assets_utils.backgraound1SVG,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(child: child)
        ],
      ),
    );
  }
}

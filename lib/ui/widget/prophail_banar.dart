import 'package:flutter/material.dart';
import 'package:mamunstask/ui/screen/prophil_updet_screen.dart';

class prophail_banar extends StatelessWidget {
  const prophail_banar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.orange,
      leading: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>prophil_updet_screen()));},
        child: CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage("https://cdn-aikll.nitrocdn.com/zpODUSdXaRhrjOSnTvJWtCYyNCoHlwTB/assets/images/optimized/rev-b4a2829/beardoholic.com/wp-content/uploads/2023/01/man-with-square-face-4.jpg"),
        ),
      ),
      title: Text("user name"),
      subtitle: Text("user prophil"),
    );
  }
}
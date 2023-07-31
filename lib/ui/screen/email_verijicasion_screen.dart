import 'package:flutter/material.dart';
import 'package:mamunstask/ui/screen/otp_screen.dart';
import 'package:mamunstask/ui/widget/screen_background.dart';


class Email_vereficasion extends StatefulWidget {
  const Email_vereficasion({super.key});

  @override
  State<Email_vereficasion> createState() => _Email_vereficasionState();
}

class _Email_vereficasionState extends State<Email_vereficasion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen_background(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your email adress",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "6 disiter akta code jabe tumar mobaile ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpScreen()),
                                (route) => false);
                          },
                          child: const Icon(Icons.double_arrow))),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text("have account ?"))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

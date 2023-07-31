import 'package:flutter/material.dart';
import 'package:mamunstask/ui/screen/set_password.dart';
import 'package:mamunstask/ui/widget/screen_background.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                  Text("Your 6 disit otp",style:Theme.of(context).textTheme.titleLarge,),
                  SizedBox(height: 6,),
                  Text("6 disiter akta code jabe tumar mobaile ",style:Theme.of(context).textTheme.bodyMedium,),
                  const SizedBox(height: 16,),
                   PinCodeTextField(
                     keyboardType: TextInputType.number,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.grey,
                      inactiveColor: Colors.grey,
                      selectedFillColor: Colors.grey,
                      selectedColor: Colors.grey
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.white,
                    cursorColor: Colors.black,
                    enablePinAutofill: true,
                    enableActiveFill: true,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    }, appContext: context,
                  ),
                  const SizedBox(height: 16,),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> set_password()), (route) => false);
                      }, child: const Icon(Icons.double_arrow))),
                  const SizedBox(height: 16,),
                  Center(child: TextButton(onPressed: (){}, child: const Text("have account ?"))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

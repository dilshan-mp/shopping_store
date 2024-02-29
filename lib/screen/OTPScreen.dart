import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/screen/OTP_Verify_Screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
        child:Column(
          children: [
            const SizedBox(height: 10,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              "Please enter your number.you will receive a OTP to create or set a new password via number ",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(
                labelText: "Enter Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                         onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>const OTPVerifyScreen()
                                )
                              );
                           },
                     style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(55),
                              backgroundColor: const Color(0xFFEf6969),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                    )
            ),
            child: const Text("Send Code",style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
            
            
          ],
        ) ,
        ),
      ),
    );
  }
}
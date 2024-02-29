import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/screen/recovery_screen.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({super.key});

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  getSignatureCode() async {
    String? signature = await SmsVerification.getAppSignature();
    print("signature $signature");
  }
  TextEditingController textEditingController = TextEditingController(text: "");

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
                               "Enter OTP",
                               style: TextStyle(
                                     fontSize: 30,
                                     fontWeight: FontWeight.bold
                                 ),
                           ),
                        ),
            const SizedBox(height: 60,),
                        const Text(
                                "Enter the OTP we have sent you to your Number"
                              ),
            const SizedBox(height: 10,),
                        TextFieldPin(
                              textController: textEditingController,
                              autoFocus: false,
                              codeLength: 4,
                              alignment: MainAxisAlignment.center,
                              defaultBoxSize: 60.0,
                              margin: 10,
                              selectedBoxSize: 46.0,
                              textStyle: const TextStyle(fontSize: 16),
                              defaultDecoration: _pinPutDecoration.copyWith(
                              border: Border.all(
                                     color: Colors.grey)),
                              selectedDecoration: _pinPutDecoration,
                              onChange: (code) {
                                  setState(() {
                              });
          }
        ),
             ElevatedButton(
                         onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>const RecoveryScreen()));
                           },
                     style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(55),
                              backgroundColor: const Color(0xFFEf6969),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                    )
            ),
            child: const Text("Verify",style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
          ]
        )
         ),
      )
    );
  }
}
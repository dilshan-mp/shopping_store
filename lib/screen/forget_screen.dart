import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/screen/OTPScreen.dart';
import 'package:shopping_store/screen/login_screen.dart';
import 'package:shopping_store/screen/recovery_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrButton  = false;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),
              const Text(
                "Forgot password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 50,),
              const Text(
                "please enter your email address.you will receive a like to create or set a new password via email ",
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              const SizedBox(height: 30,),
              TextFormField(
                controller: emailController,
                onChanged:(val){
                  if(val != ""){
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration:  InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Email",
                  suffix: InkWell(
                    onTap: (){
                      setState(() {
                        emailController.clear();
                      });
                    },
                    child: const Icon(
                      CupertinoIcons.multiply,
                      color: Color(0xFFDB3022),
                    )
                     ))
                ),
                const SizedBox(height: 20,),
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
            child: const Text("Send code",style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
            const SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("OR"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OTPScreen()));
              }, child: const Text(
              "Verify Using Number",
              style: TextStyle(
                color: Color(0xFFDB3022),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
            )
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}
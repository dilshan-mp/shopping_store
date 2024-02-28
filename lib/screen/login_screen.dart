import 'package:flutter/material.dart';
import 'package:shopping_store/screen/Signup_screen.dart';
import 'package:shopping_store/screen/forget_screen.dart';
import 'package:shopping_store/screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 110,),
              Image.asset("assets/images/freed.png"),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Enter Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)
                      )
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)
                      )
                    ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>const ForgotScreen()));
                          },
                          child: const Text(
                            "Forgot Password",
                             style: TextStyle(
                              color: Color(0xFFEf6969),
                              fontSize: 15
                              )
                            ) 
                          )
                        ),
                    const SizedBox(height: 50,),
                     ElevatedButton(
                         onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>const HomeScreen()));
                           },
                     style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(55),
                              backgroundColor: const Color(0xFFEf6969),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                    )
            ),
            child: const Text("Log In",style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't Have an Account?   ",style: TextStyle(color: Colors.black54,fontSize: 15),),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>const SignUpScreen()
                    )
                  );
                }, child: const Text("Sign up",style: TextStyle(color: Color(0xFFEf6969),fontSize: 15)) )
              ],
            )
                  ],
                ),
              )
            ],
          )),
      ),
    );
  }
} 
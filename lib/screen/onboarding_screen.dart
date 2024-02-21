import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shopping_store/screen/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle : const TextStyle(fontSize: 28,fontWeight: FontWeight.w700),
      bodyTextStyle:const TextStyle(fontSize: 19),
      bodyPadding:const EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor:Colors.white,
      imagePadding:EdgeInsets.zero
    );

    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shopping Now",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took ",
          image: Image.asset("assets/images/splash1.png",width:200,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took  ",
          image: Image.asset("assets/images/splash2.png",width:200,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Deliver",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the  ",
          image: Image.asset("assets/images/splash3.png",width:200,),
          decoration: pageDecoration,
          footer:  Padding(padding: const EdgeInsets.only(left: 15,right: 15,top: 50),
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
            },
            child: const Text("Lets's shop",style: TextStyle(color: Colors.white,fontSize: 18),),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(55),
              backgroundColor: const Color(0xFFEf6969),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
            ),
          ),
          
        )
      ],
      showSkipButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: const Text("Back",style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xFFEF6969)
      ),),

      next: const Text("Next",style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xFFEF6969)
      ),),

      done: const Text("Done",style: TextStyle(fontWeight: FontWeight.w600,
        color: Color(0xFFEF6969),)),
      skip: const Text("Skip",style: TextStyle(fontWeight: FontWeight.w600,
        color: Color(0xFFEF6969),)),

      onDone: (){},
      onSkip: (){},
      dotsDecorator:  DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: const Color(0xFFEf6969),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        )
      ),
    );
  }
}
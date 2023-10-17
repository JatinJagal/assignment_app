import 'package:assignment_app/res/constants/consts.dart';
import 'package:assignment_app/res/custome_widgets/custome_button.dart';
import 'package:assignment_app/screens/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  bool isCheck = false;
  
  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //-----------------------------------------Logo and Title text----------------------------------

              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(icTrade,height: height * 0.08,width: width * 0.2,fit: BoxFit.fill,),
                    Text(appName,
                        style: GoogleFonts.sriracha(
                        fontSize: 38,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal),
                    ),
                    SizedBox(height: height * 0.04,),
                    Text(tradeWithEase,style: TextStyle(fontSize: 24),),
                    Text(anytAnyw,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              //------------------------------------Login and SignUp Buttons------------------------------------

              Container(
                height: height * 0.28,
                width: double.infinity,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // ------------------------- With Email------------------
                    CustomButton(icn: icClean,text: email,onpress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                    },txtColor: blackColor,bgColor: whiteColor,icColor: whiteColor,),

                    // ------------------------- With Google------------------
                    CustomButton(icn: icGoogle,text: loginWgoogle,onpress: (){},txtColor: blackColor,bgColor: whiteColor,icColor: blackColor,),

                    // ------------------------- With Apple------------------
                    CustomButton(icn: icApple,text: loginWapple,onpress: (){},txtColor: blackColor,bgColor: whiteColor,icColor: blackColor,),


              //------------------------------ checkBox and Text------------------------------------------------

                    Row(
                      children: [
                        Checkbox(
                          checkColor: blackColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                            value: isCheck, onChanged: (val){}),
                        Expanded(
                          child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: "I accept Trandin'g ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: blackColor,
                                  fontSize: 13
                                )
                              ),

                              TextSpan(
                                  text: "T&C, Privacy Policy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: greenText,
                                      fontSize: 13
                                  )
                              ),

                              TextSpan(
                                  text: " & ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                      fontSize: 13
                                  )
                              ),

                              TextSpan(
                                  text: "Tariff Rates",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: greenText,
                                      fontSize: 13
                                  )
                              ),

                            ]
                          )),
                        )

                      ],
                    )
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );

  }
}

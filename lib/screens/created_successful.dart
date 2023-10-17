import 'package:assignment_app/res/constants/consts.dart';
import 'package:assignment_app/res/custome_widgets/custome_button.dart';
import 'package:assignment_app/res/custome_widgets/home_screen.dart';

class CreatedSuccessful extends StatefulWidget {
  const CreatedSuccessful({super.key});

  @override
  State<CreatedSuccessful> createState() => _CreatedSuccessfulState();
}

class _CreatedSuccessfulState extends State<CreatedSuccessful> {
  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              //----------------------------------Logo and title text---------------------------------

              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(icTrade,height: height * 0.07,width: width * 0.14,fit: BoxFit.fill,),
                    Text(appName,
                      style: GoogleFonts.sriracha(
                          fontSize: 32,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),

              //----------------------------------Verify icon and Congrats text---------------------------------

              Container(
                child: Column(
                  children: [
                    Text(congrats,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),),
                    SizedBox(height: height * 0.02,),
                    Image.asset(icDone,color: greenText,height: 100,width: 100,fit: BoxFit.fill,),
                    SizedBox(height: height * 0.02,),
                    Text(enjoyYour,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
                    Text(tradd,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),

              //----------------------------------Button Navigate to home ---------------------------------

              CustomButton(
                icn: icClean,
                text: home,
                txtColor: whiteColor,
                bgColor: blackColor,
                onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                icColor: blackColor,)

            ],
          ),
        ),
      ),
    );
  }
}

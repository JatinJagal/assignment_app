import 'package:assignment_app/res/constants/consts.dart';
import 'package:assignment_app/res/custome_widgets/custome_button.dart';
import 'package:assignment_app/res/custome_widgets/custome_dropdown.dart';
import 'package:assignment_app/res/custome_widgets/custome_textfield.dart';
import 'package:assignment_app/screens/created_successful.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  int groupval = 3;

  var _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: whiteColor,
          elevation: 0.0,
          leading: IconButton(
              onPressed: (){},
              icon: Image.asset(
                icBack,
                height: 34,
                width: 34,
                color: blackColor,
              )
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.only(left: 18,right: 18,top: 10,bottom: 2),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //---------------------------------Logo and title text----------------------

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

                  //---------------------------------Detail TextFields--------------------------

                  SizedBox(height: height * 0.02,),
                  CustomeTextField(title: nameEdt,
                    hintTxt: hintName,controller: nameController,erroMsg: nameErr,inputeType: TextInputType.text),
                  SizedBox(height: height * 0.02,),
                  CustomeTextField(title: dobEdt,
                    hintTxt: hintDob,controller: dateController,erroMsg: dateErr,inputeType: TextInputType.datetime),
                  SizedBox(height: height * 0.02,),

                  //-----------------------------------Gender Radio Buttons------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(gender,style: TextStyle(color: blackColor,fontSize: 20),),
                  ),
                  Row(
                    children: [
                      Radio(value: 1, groupValue: groupval,
                          fillColor: MaterialStatePropertyAll(blackColor),
                          onChanged: (index) {
                        setState(() {
                          groupval = index!;
                        });
                      }),
                      Text("Male",style: TextStyle(fontSize: 16),),

                      SizedBox(width: width * 0.02,),
                      Radio(value: 2, groupValue: groupval,
                          fillColor: MaterialStatePropertyAll(blackColor),
                          onChanged: (index) {
                        setState(() {
                          groupval = index!;
                        });
                      }),
                      Text("Female",style: TextStyle(fontSize: 16),),

                      SizedBox(width: width * 0.02,),
                      Radio(value: 3, groupValue: groupval,
                          fillColor: MaterialStatePropertyAll(blackColor),
                          onChanged: (index) {
                        setState(() {
                          groupval = index!;
                        });
                      }),
                      Text("Other",style: TextStyle(fontSize: 16),),
                    ],
                  ),

                  //--------------------------------------Drop downs---------------------------------

                  CustomeDrop(titleTxt: titleMarital,listName: maritalS,),
                  SizedBox(height: height * 0.02,),
                  CustomeDrop(titleTxt: titleOccupation,listName: occupation,),
                  SizedBox(height: height * 0.02,),
                  CustomeDrop(titleTxt: titleIncome,listName: annuIncome,),
                  SizedBox(height: height * 0.02,),

                  CustomButton(icn: icClean, text: submit, onpress: (){
                   if( _formKey.currentState!.validate()){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatedSuccessful()));
                   }

                  },
                    txtColor: whiteColor,bgColor: blackColor,icColor: blackColor,),
                  SizedBox(height: height * 0.02,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

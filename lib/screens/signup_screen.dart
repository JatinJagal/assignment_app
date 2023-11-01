import 'package:assignment_app/res/constants/consts.dart';
import 'package:assignment_app/res/custome_widgets/custome_button.dart';
import 'package:assignment_app/res/custome_widgets/custome_dropdown.dart';
import 'package:assignment_app/res/custome_widgets/custome_textfield.dart';
import 'package:assignment_app/screens/created_successful.dart';
import 'package:assignment_app/screens/splash_screen.dart';

import '../funtions/myfuntions.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  int groupval = 1;

  var _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  
  //----------------------------

  String getMarStatus = "";
  String getOccupation = "";
  String getAnnualIn = "";

  String  empty="";
  void getDropDownValue(int i,String value){
    if(i==0){
      setState((){
        getMarStatus=value;
      });
    }else{
      setState((){
        empty=value;
      });
    }
  }

  void getDropDownOcc(int i,String value){
    if(i==0){
      setState((){
        getOccupation=value;
      });
    }else{
      setState((){
        empty=value;
      });
    }
  }

  void getDropDownAnn(int i,String value){
    if(i==0){
      setState((){
        getAnnualIn=value;
      });
    }else{
      setState((){
        empty=value;
      });
    }
  }
  

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
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
              },
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
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'Give You Glory',
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal
                          ),
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

                  // Text(getAnnualIn,style: TextStyle(color: Colors.black),),
                  CustomeDrop(titleTxt: titleMarital,data: maritalS,getValueFunc: getDropDownValue,identifier: 0,errTxt: selectMar),
                  SizedBox(height: height * 0.02,),
                  CustomeDrop(titleTxt: titleOccupation,data: occupation,getValueFunc: getDropDownOcc,identifier: 0,errTxt: selectOcc,),
                  SizedBox(height: height * 0.02,),
                  CustomeDrop(titleTxt: titleIncome,data: annuIncome,getValueFunc: getDropDownAnn,identifier: 0,errTxt: selectAnn,),
                  SizedBox(height: height * 0.02,),


                  // ---------------------------------------Submit Button------------------------------------

                  CustomButton(icn: icClean, text: submit, onpress: (){
                   if( _formKey.currentState!.validate() && groupval != 0){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatedSuccessful()));
                   }else{
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                         backgroundColor: Colors.red,
                         content: Row(
                       children: [
                         Icon(Icons.error_outline),
                         Text("Please fill all the information")
                       ],
                     )));
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

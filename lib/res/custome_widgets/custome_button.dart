import 'package:assignment_app/res/constants/consts.dart';

class CustomButton extends StatelessWidget {
  String icn;
  final text;
  final txtColor;
  final icColor;
  final bgColor;
  final VoidCallback onpress;
  CustomButton({
    Key? key,
    required this.icn,
    required this.text,
    required this.txtColor,
    required this.icColor,
    required this.bgColor,
    required this.onpress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.06,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14)
          ),
          side: BorderSide(width: 2,color: blackColor)
        ),
          onPressed: onpress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icn,width: 22,height: 22,color: icColor,),
              SizedBox(width: width * 0.02,),
              Text(text,style: TextStyle(color: txtColor,fontWeight: FontWeight.bold),)
            ],
          )
      ),
    );
  }
}

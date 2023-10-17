import 'package:assignment_app/res/constants/consts.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.06,
      width: double.infinity,
        child: Row(
          children: [
            Container(
              width: width * 0.46,
              decoration: BoxDecoration(
                color: navyBlue,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
                border: Border.all(width: 2,color: navyBlue),
              ),
              child: Center(child: Text(stocks,style: TextStyle(color: whiteColor),)),
            ),
            Container(
              width: width * 0.44,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),
                border: Border.all(width: 2,color: navyBlue),
              ),
              child: Center(child: Text(mutualF,style: TextStyle(color: navyBlue,fontWeight: FontWeight.bold),)),
            ),


          ],
        ),
    );
  }
}

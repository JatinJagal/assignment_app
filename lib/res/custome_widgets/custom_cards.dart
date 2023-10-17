import 'package:assignment_app/res/constants/consts.dart';

class StockesCard extends StatelessWidget {
  const StockesCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 0.10,
        width: width * 0.24,
        decoration: BoxDecoration(
          color: navyBlue,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1,color: navyBlue)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("NYTF 50",style: TextStyle(color: whiteColor),),
              Column(
                children: [
                  Text("100000",style: TextStyle(color: whiteColor),),
                  Text("+100000",style: TextStyle(color: greenText),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

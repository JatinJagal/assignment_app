import 'package:assignment_app/res/constants/consts.dart';

class StockBalance extends StatelessWidget {
  const StockBalance({super.key});

  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(12.0),
      width: double.infinity,
      height: height * 0.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(width: 2,color: navyBlue)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(balanceAva,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              Text("\$ 0",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
            ],
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text(addMoney,style: TextStyle(color: blackColor),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                side: BorderSide(width: 2,color: blackColor),
                backgroundColor: whiteColor
              ),
          )
        ],
      ),
    );
  }
}

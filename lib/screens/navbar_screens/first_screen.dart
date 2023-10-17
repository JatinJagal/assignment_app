import 'package:assignment_app/res/constants/consts.dart';
import 'package:assignment_app/res/custome_widgets/custom_cards.dart';
import 'package:assignment_app/res/custome_widgets/stocks_balance.dart';
import 'package:assignment_app/res/custome_widgets/tab_container.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Image.asset(icTrade,fit: BoxFit.fill,),
          ),
          actions: [
            Row(
              children: [
                SizedBox(width: width * 0.08,),
                IconButton(onPressed: (){}, icon: Icon(Icons.search,color: blackColor,size: 34,)),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Image.asset(icProfile),
                )
              ],
            )
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 16,right: 16,bottom: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabContainer(),
                SizedBox(height: height * 0.02,),
                StockBalance(),
                SizedBox(height: height * 0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(marketIndi,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text(allStockes),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          side: BorderSide(width: 2,color: blackColor),
                          backgroundColor: navyBlue
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.02,),

                Container(
                  height: height * 0.12,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context,index){
                        return StockesCard();
                      }),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}

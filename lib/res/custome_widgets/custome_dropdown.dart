import '../constants/consts.dart';

class CustomeDrop extends StatelessWidget {
  final titleTxt;
  final List listName;
  CustomeDrop({Key? key,required this.titleTxt, required this.listName}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(titleTxt,
            style: TextStyle(
                fontSize: 16,
                color: blackColor,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        SizedBox(height: height * 0.01,),
        SizedBox(
          height: height * 0.07,
          child: DropdownButtonFormField(
            // elevation: 0,
          icon: Icon(Icons.arrow_drop_down_circle_outlined),
            decoration: InputDecoration(
              hintText: "Select marital status",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(
                  width: 2,
                  color: blackColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2,color: blackColor),
                borderRadius: BorderRadius.circular(14)
              ),
            ),
            items: listName.map((name){
              return DropdownMenuItem(
                child: Text(name),
                value: name,
              );
            }).toList(), onChanged: (Object? value) { print(value); },
          ),
        ),
      ],
    );
  }
}

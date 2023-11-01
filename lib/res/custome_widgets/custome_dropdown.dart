import 'package:assignment_app/funtions/myfuntions.dart';

import '../constants/consts.dart';

class CustomeDrop extends StatefulWidget {
  final titleTxt;
  final data;
  final getValueFunc;
  final identifier;
  final errTxt;
  CustomeDrop({
    Key? key,
    this.titleTxt,
    this.data,
    this.getValueFunc,
    this.identifier,
    this.errTxt
  }) : super(key: key);

  @override
  State<CustomeDrop> createState() => _CustomeDropState();
}

class _CustomeDropState extends State<CustomeDrop> {

  var dropdownValue;

  @override
  Widget build(BuildContext context) {

    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(widget.titleTxt,
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
          child: DropdownButtonFormField<String>(

            decoration: InputDecoration(
              hintText: "Select marital status",
              contentPadding: EdgeInsets.only(bottom: 6.0,left: 6.0,top: 4.0,right: 8.0),
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

            icon: const Icon(Icons.arrow_drop_down_circle_outlined),
            style: const TextStyle(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(24),

            //---------------------

            validator: (value) => value == null ? widget.errTxt : null,
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
              widget.getValueFunc(widget.identifier,dropdownValue);
            },
            items:widget.data.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

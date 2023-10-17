import 'package:assignment_app/res/constants/consts.dart';

class CustomeTextField extends StatelessWidget {
  final title;
  final hintTxt;
  final controller;
  final erroMsg;
  final inputeType;
  CustomeTextField({
    Key? key,
    required this.title,
    required this.hintTxt,
    required this.controller,
    required this.erroMsg,
    required this.inputeType
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(title,
            style: TextStyle(
              fontSize: 16,
              color: blackColor,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        SizedBox(height: height * 0.01,),
        SizedBox(
          height: height * 0.06,
          child: TextFormField(
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (title) => title!.length < 3 ? erroMsg: null,
            keyboardType: inputeType,
            decoration: InputDecoration(
              hintText: hintTxt,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(
                  width: 2,
                  color: blackColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 2,
                  color: blackColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

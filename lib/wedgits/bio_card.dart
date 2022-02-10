import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onPressed;

  BioCard(
      {Key? key,
        required this.leadingIcon,
        required this.title,
        required this.subTitle,
        required this.trailingIcon,
        this.marginBottom = 0,
        required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //take the size of his child  // فيه خاصية انه عنده ال margin =EdgeInsets.all(4)
      //margin: EdgeInsets.zero,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // margin: EdgeInsets.symmetric(horizontal: 20),//لو بدي الازاحات عمودي
      margin:
      EdgeInsetsDirectional.only(start: 20, end: 20, bottom: marginBottom),
      child: ListTile(
        leading: Icon(leadingIcon,
            color: Color(0xFF50676f)),
        title: Text(title,style: TextStyle(
          fontFamily: 'Merriweather',
          color: Color(0xFF50676f)
            , fontWeight: FontWeight.bold
        ),
        ),
        subtitle: Text(subTitle
        ),
        trailing: IconButton(
          //onPressed: () {}//void Function()
            onPressed: onPressed//void Function()
            , icon: Icon(trailingIcon)),
      ),
    );
  }
}

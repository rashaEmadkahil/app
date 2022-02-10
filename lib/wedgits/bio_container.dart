import 'package:flutter/material.dart';

class BioContainer extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onPressed;

  BioContainer(
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
    return Container(
        // color: Colors.white,
        margin: EdgeInsetsDirectional.only(
            start: 20, end: 20, bottom: marginBottom),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              // BoxShadow(
              //     color: Colors.green,
              //     offset: Offset(0, 3),
              //     blurRadius: 5),
              // BoxShadow(
              //     color: Colors.pink,
              //     offset: Offset(-3, 0),
              //     blurRadius: 5),
              BoxShadow(
                  color: Colors.black.withAlpha(41),
                  offset: Offset(0, 3),
                  blurRadius: 6)
            ]),
        child: ListTile(
          leading: Icon(leadingIcon,
          color: Color(0xFF50676f),),
          title: Text(
            title,
            style: TextStyle(
                fontFamily: 'Merriweather',
                color: Color(0xFF50676f),
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subTitle),
          trailing: Icon(trailingIcon),
          onTap: onPressed,
        ));
  }
}

import 'dart:ui';

import 'package:bioapp_rasha/wedgits/bio_card.dart';
import 'package:bioapp_rasha/wedgits/bio_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // عشان اخلي الصورة تحت البار
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Bio',
          style:
              TextStyle(fontFamily: 'Source Sans', fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Image.asset(
              'images/plain-blue-paper-textured-background.jpg',
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),

              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'images/WhatsApp Image 2022-02-04 at 11.22.36 AM.jpeg'),
              ),
              const SizedBox(height: 15),
              //عملته عشان اعمل مسافة بين الافاتار والنص ولانه الافاتار فش فيه مارجين و بادينج
              const Text('Rasha Emad Kahil',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic)),
              const SizedBox(height: 15),
              const Text('Flutter Course - VisionPlus',
                  style: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'Merriweather',
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1)),
              const Divider(
                thickness: 0.7,
                color: Colors.white,
                height: 30,
                //لو كانت قيمته 0 بيلزق وطبيعته بيقسم الطول عالاطراف يعني هنا =15
                indent: 80,
                endIndent: 80,
              ),
              BioContainer(
                marginBottom: 10,
                leadingIcon: Icons.phone_android,
                title: 'Mobile',
                subTitle: '972-059-2206-106',
                trailingIcon: Icons.phone,
                onPressed: () {},
              ),
              BioCard(
                leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'rashakahil210@gmail.com',
                trailingIcon: Icons.send,
                //marginBottom: 10,
                onPressed: () {
                  print('Email');
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Send Message'),
                    backgroundColor: Colors.blue,
                    duration: Duration(seconds: 7),
                    onVisible: () => print('welcome'),
                    dismissDirection: DismissDirection.horizontal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                    elevation: 4,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsetsDirectional.only(
                        start: 20, end: 20, bottom: 10),
                    action: SnackBarAction(
                      label: 'Dismiss',
                      onPressed: () {},
                      textColor: Colors.yellow.shade700,
                    ),
                  ));
                },
              ),
              //لقيتهم ملزقين ببعض الحل الاول احط box  بس انا عندي خاصية المارجين
              // BioCard(
              //   leadingIcon: Icons.email,
              //   title: 'Email',
              //   subTitle: 'email@gmail.com',
              //   trailingIcon: Icons.send,
              //   onPressed: () {
              //     print('Mobile');
              //   },
              // ),

              Spacer(),
              //3- the best spacer with spacer
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Flutter 2022',
                    style: TextStyle(color: Colors.white),
                  ))
              // 3-Container(child: Text('Flutter 2022'),
              // margin: EdgeInsets.only(bottom: 10),)
              //2- Text('Flutter 2022')
              //sizedBox(height: 10),
            ],
          ),
          //PositionedDirectional(
          //start: 0, end: 0, bottom: 10, child: Text('Flutter 2022',textAlign: TextAlign.center,))
          //بدي اخليها اسفل الشاشة بالمنتصف
        ],
      ),
    );
  }
}

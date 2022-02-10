import 'package:bioapp_rasha/screens/bio_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());//كل حاجة قبلها  const معناها ثابتة ما بتتغير خلال مرحلة ال runtime
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,//لازم كل شاشة افصلها بكلاس لحال يعني لازم تكون هيا الروت لانه عندك خصائص السكافولد ما حتشتغل لو ضلت هنا
      home: BioScreen(),
    );
  }
}

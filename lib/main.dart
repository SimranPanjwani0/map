import 'package:ch_5_4_2/views/screens/homepage.dart';
import 'package:flutter/material.dart';

main ()
{
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

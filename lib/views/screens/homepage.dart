import 'package:ch_5_4_2/utils/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    double h = s.height;
    double w = s.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "Map",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        leading: Icon(
          Icons.menu_sharp,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: data
              .map(
                (e) => Container(
                  height: h * 0.1,
                  width: w,
                  margin: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${e['name']}",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Icon(
                        e['icon'],
                        size: 25,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

import 'package:elclasico_web/modules/common/drawer.dart';
import 'package:elclasico_web/modules/home/homePage.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final pages = [const HomePage()];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.grey[850],
        shadowColor: Colors.grey[850],
      ),
      drawer: const CommonDrawer(),
      body: pages[0],
    );
  }
}

import "package:flutter/material.dart";

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = " IIT Kharagpur";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

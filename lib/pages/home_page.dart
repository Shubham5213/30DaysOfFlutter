import 'package:first_app/models/catalog.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString(
      "./assets/files/catalog.json",
    );
    var decodedData = jsonDecode(catalogJson);
    // ignore: avoid_print
    // print(decodedData);
    final productsData = decodedData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    // ignore: unused_local_variable
    const int days = 30;
    // ignore: unused_local_variable
    const String name = " IIT Kharagpur";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BillPage.dart';
import 'package:flutter_application_1/pages/KitchenPage.dart';
import 'package:flutter_application_1/pages/PosPage.dart';
import 'package:flutter_application_1/pages/StickerPage.dart';
import 'package:flutter_application_1/pages/SubScreen.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<Tab> tabs = [
    Tab(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Pos'),
          ),
          Container(
            child: Icon(Icons.store_mall_directory),
          ),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Bill'),
          ),
          Container(
            child: Icon(Icons.article_outlined),
          ),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Sticker'),
          ),
          Container(
            child: Icon(Icons.sticky_note_2_outlined),
          ),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Bếp'),
          ),
          Container(
            child: Icon(Icons.soup_kitchen_outlined),
          ),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Màn Hình Phụ'),
          ),
          Container(
            child: Icon(Icons.laptop_chromebook_outlined),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: TabBar(
              indicatorColor: Colors.blue[900],
              isScrollable: true,
              tabs: tabs,
              labelColor: Colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            PosPage(),
            BillPage(),
            StickerPage(),
            KitchenPage(),
            SubScreenPage(),
          ],
        ),
      ),
    );
  }
}

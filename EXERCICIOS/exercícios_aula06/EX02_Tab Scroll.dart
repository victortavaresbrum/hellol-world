/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Tab> tabs = const [
    Tab(child: Text('Teal'),),
    Tab(child: Text('Green'),),
    Tab(child: Text('Blue'),),
    Tab(child: Text('Yellow'),),
    Tab(child: Text('Red'),),
    Tab(child: Text('Orange'),),
    Tab(child: Text('Grey'),),
  ];
  List<Widget> tabsContent = [
    Container(color: Colors.teal),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.red),
    Container(color: Colors.orange),
    Container(color: Colors.grey),
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Tab Scroll'),
            bottom: TabBar(
              isScrollable: true,
              tabs: tabs)
            ,
            ),
            body: TabBarView(
              children: tabsContent,
            ),
          ),
      ),
        
      );
    
  }
}
*/
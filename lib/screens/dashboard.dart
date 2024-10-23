import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: Sidebar(), // Sidebar widget from the widgets directory
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return Card(
            child: Center(child: Text('Card $index')),
          );
        }),
      ),
    );
  }
}

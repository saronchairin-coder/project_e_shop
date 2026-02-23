import 'package:flutter/material.dart';

class CategoryMain extends StatefulWidget {
  const CategoryMain({super.key});

  @override
  State<CategoryMain> createState() => _CategoryMainState();
}

class _CategoryMainState extends State<CategoryMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
body: Center(child: Text('Category'),),
    );
  }
}

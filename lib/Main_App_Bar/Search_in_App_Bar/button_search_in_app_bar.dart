import 'package:flutter/material.dart';

class ButtonInAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBars;

  const ButtonInAppBar({
    super.key,
    required this.showBars,
  });

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      child: Container(
        height: showBars ? 80 : 0,
        padding: const EdgeInsets.all(8),
        child: Opacity(
          opacity: showBars ? 1 : 0,

          child: TextField(
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 21),
            decoration: InputDecoration(
              labelText: "Search Product",
              labelStyle: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),

              prefixIcon: const Icon(Icons.search,size: 30,color: Colors.blue),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
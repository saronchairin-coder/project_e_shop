import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Search_in_App_Bar/button_search_in_app_bar.dart';

class SliverMainAppBar extends StatelessWidget {
  final bool showBars;

  const SliverMainAppBar({
    super.key,
    required this.showBars,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      // snap: false,
      forceMaterialTransparency: true,
      surfaceTintColor: Colors.white,
      expandedHeight: showBars ? 160 : 70,
      toolbarHeight: showBars ? 60 : 0,
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),

      // leading: const Icon(Icons.person,size: 25,color: Colors.blue),
      title: Text(
        "E-SHOP",
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 35,
        ),
      ),
      actions: const [
        Icon(Icons.notifications_active_outlined, color: Colors.blue),
        SizedBox(width: 10),
        Icon(Icons.card_travel_outlined, color: Colors.blue),
        SizedBox(width: 10),
      ],

      /// bottom widget
      bottom: ButtonInAppBar(showBars: showBars),
    );
  }
}
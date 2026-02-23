
import 'package:e_shop/Main_App_Bar/App_Bar/sliver_main_app_bar.dart';
import 'package:e_shop/Presentation/screen/Message_main_page/message_main.dart';
import 'package:e_shop/Presentation/screen/cart_main_page/cart_main.dart';
import 'package:e_shop/Presentation/screen/category_main_page/category_main.dart';
import 'package:e_shop/Presentation/screen/home_main_page/home_main_page.dart';
import 'package:e_shop/Presentation/screen/profile_main_page/profile_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';


class DivicesNav extends StatefulWidget {
  const DivicesNav({super.key});


  @override
  State<DivicesNav> createState() => _DivicesNavState();



}

class _DivicesNavState extends State<DivicesNav> {

  int index = 0;

  final ScrollController _scrollController = ScrollController();
  bool showBars = true;
  bool showTextField = true;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        if (showBars) setState(() => showBars = false);
        // if(showTextField ) setState(() => showTextField = false);
      }
      else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        if (!showBars) setState(() => showBars = true);
        // if(!showTextField) setState(() => showTextField = true);
      }
    });
  }


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // List of pages
  // final pages = [
  //   HomeMainPage(),
  //   CategoryMain(),
  //   CartMain(),
  //   ProfileMain(),
  //
  // ];

  //list of icon bottom_nav
  List<PersistentTabConfig> _tabs() => [
    PersistentTabConfig(
      screen: HomeMainPage(),
      item: ItemConfig(
        title: "Home",
        icon: Icon(Icons.home_outlined, color: Colors.redAccent),
        activeForegroundColor: Colors.redAccent,
        inactiveBackgroundColor: Colors.blue.shade100,
        inactiveIcon: Icon(Icons.home_outlined,color: Colors.blue,),
        textStyle: TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        iconSize: 30,

      ),
    ),
    PersistentTabConfig(
      screen: CategoryMain(),
      item: ItemConfig(
        icon: Icon(Icons.category_outlined, color: Colors.redAccent),

        title: "Categry",
        activeForegroundColor: Colors.redAccent,
        inactiveBackgroundColor: Colors.blue.shade100,
        inactiveIcon: Icon(Icons.category_outlined,color: Colors.blue,),
        textStyle: TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        iconSize: 30,
      ),
    ),
    PersistentTabConfig(
      screen: MessageMain(),
      item: ItemConfig(
        icon: Icon(Icons.message_outlined, color: Colors.redAccent),
        title: "Message",
        activeForegroundColor: Colors.redAccent,
        inactiveBackgroundColor: Colors.blue.shade100,
        inactiveIcon: Icon(Icons.message_outlined,color: Colors.blue,),
        textStyle: TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        iconSize: 30,
      ),
    ),
    PersistentTabConfig(
      screen: CartMain(),
      item: ItemConfig(
        icon: Icon(Icons.shopping_cart_outlined, color: Colors.redAccent),
        title: "Cart",
        activeForegroundColor: Colors.redAccent,
        inactiveBackgroundColor: Colors.blue.shade100,
        inactiveIcon: Icon(Icons.shopping_cart_outlined,color: Colors.blue,),
        textStyle: TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        iconSize: 30,
      ),
    ),
    PersistentTabConfig(
      screen: ProfileMain(),
      item: ItemConfig(
        icon: Icon(Icons.person_outline, color: Colors.redAccent),
        title: "Profile",
        activeForegroundColor: Colors.redAccent,
        inactiveBackgroundColor: Colors.blue.shade100,
        inactiveIcon: Icon(Icons.person_outline,color: Colors.blue,),
        textStyle: TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        iconSize: 30,
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,

      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
          //call calss SliverMainAPpBar
            SliverMainAppBar(showBars: showBars),
          ];
        },

      // bottom Nav
        body: PersistentTabView(
          tabs: _tabs(),
          navBarBuilder: (navBarConfig) => Style2BottomNavBar(
            navBarConfig: navBarConfig,
            navBarDecoration: NavBarDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),

              boxShadow: [
                BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
              // This adds padding for the shape behind active tab
              padding: EdgeInsets.only(top: 6),
            ),
            ),
          ),
        ),

    );
  }
}




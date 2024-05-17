import 'package:e_cart/presentation/account/screen_account.dart';
import 'package:e_cart/presentation/cart/screen_cart.dart';
import 'package:e_cart/presentation/categories/screen_categories.dart';
import 'package:e_cart/presentation/explore/screen_explore.dart';
import 'package:e_cart/presentation/home/screen_home.dart';
import 'package:e_cart/presentation/main_page/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class ScreenMainpage extends StatelessWidget {
   ScreenMainpage({super.key});
  final _pages=[
    ScreenHome(),
    ScreenExplore(),
    ScreenCategories(),
    ScreenAccount(),
    ScreenCart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child:
    ValueListenableBuilder(valueListenable: 
    indexChangeNotifier,
     builder:
      (context, int index, _) {
      return _pages [index];
    })
     ),
     bottomNavigationBar: const BottomNavigationWidgets()
     ,);
  }
}
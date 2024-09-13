import 'package:flutter/material.dart';
import 'package:flutter_default/colors.dart';
import 'package:flutter_default/pages/dollar_page.dart';
import 'package:flutter_default/pages/home_page.dart';
import 'package:flutter_default/pages/profile_page.dart';
import 'package:flutter_default/pages/transactions_page.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentpage = 0;

  List<Widget> pages = const [HomePage(), TransactionsPage(), Scaffold(), DollarPage(), ProfilePage() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: IndexedStack(
        index: currentpage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          if(value != 2){
            setState(() {
              currentpage = value;
            });
          }
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 25, 
        selectedItemColor: mainFontColor,
        unselectedItemColor: grey,
        currentIndex: currentpage,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.card_membership_outlined), label: 'Trans'),
          BottomNavigationBarItem(icon: SizedBox.shrink(), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money_rounded), label: 'Doe'),
          BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined), label: 'Pof'),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: mainFontColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
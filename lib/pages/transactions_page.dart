import 'package:flutter/material.dart';
import 'package:flutter_default/colors.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: primary,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded, color: mainFontColor,),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded, color: mainFontColor,),
            )
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Transactions',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: mainFontColor),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: mainFontColor,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32,
                      width: MediaQuery.of(context).size.width * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: mainFontColor,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8,
                              spreadRadius: 1,
                              color: white.withOpacity(0.05))
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 32,
                      width: MediaQuery.of(context).size.width * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8,
                              spreadRadius: 1,
                              color: mainFontColor.withOpacity(0.05))
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'Expenses',
                          style: TextStyle(
                            color: mainFontColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 32,
                      width: MediaQuery.of(context).size.width * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8,
                              spreadRadius: 1,
                              color: mainFontColor.withOpacity(0.05))
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'Income',
                          style: TextStyle(
                            color: mainFontColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: mainFontColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: [
                  Column(
                    children: [
                      paymentCard('Payment', 'Some kind of bill', '\$800'),
                      paymentCard('Subscription', 'Spotify monthly subscription fee', '\$4'),
                      paymentCard('Billing', 'DSTV preminum subscription', '\$15'),
                      paymentCard('Payment', 'Airtime purchase', '\$20'),
                      paymentCard('Forex Trade Inventment', 'Brooker fee and intial deposite', '\$1500'),
                      paymentCard('Payment', 'Some kind of bill', '\$800'),
                      paymentCard('Subscription', 'Spotify monthly subscription fee', '\$4'),
                      paymentCard('Billing', 'DSTV preminum subscription', '\$15'),
                      paymentCard('Payment', 'Airtime purchase', '\$20'),
                      paymentCard('Forex Trade Inventment', 'Brooker fee and intial deposite', '\$1500'),
                      
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container paymentCard(String title, String subtitle, String amount) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 6,
            color: white.withOpacity(0.1),
          ),
        ],
      ),
      child: ListTile(
        leading: const Icon(Icons.card_membership),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 15,
          ),
        ),
        trailing: Text(
          amount,
          style: const TextStyle(
            color: mainFontColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

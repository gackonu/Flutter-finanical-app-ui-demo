import 'package:flutter/material.dart';
import 'package:flutter_default/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primary,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 4,
                        color: black.withOpacity(0.05),
                        blurRadius: 10)
                  ],
                ),
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.bar_chart_rounded,
                              color: Colors.black,
                            ),
                            Icon(Icons.more_vert_outlined)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/3.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Jackie Robinson',
                              style: TextStyle(
                                  color: mainFontColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Fullstack developer',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '\$8900',
                                style: TextStyle(
                                  color: mainFontColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('Income')
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\$5500',
                                style: TextStyle(
                                  color: mainFontColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Expenses',
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\$890',
                                style: TextStyle(
                                  color: mainFontColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('Loan')
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: mainFontColor),
                    ),
                    Text(
                      'June 06, 2023',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: mainFontColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: ListView(
                    children: [
                      singletransaction(
                        Icons.arrow_upward_rounded,
                        true,
                        'Sent',
                        'Sending Payment to clients',
                        '\$150',
                      ),
                      singletransaction(
                        Icons.arrow_downward_rounded,
                        false,
                        'Recieved',
                        'Recieving payment from company',
                        '\$250',
                      ),
                      singletransaction(
                        Icons.attach_money_rounded,
                        true,
                        'Loan',
                        'Loan for the car',
                        '\$400',
                      ),
                      singletransaction(
                        Icons.arrow_upward_rounded,
                        true,
                        'Lost',
                        'Too much blackout yeah?',
                        '\$780',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Container singletransaction(
      IconData icon, bool sent, String title, String subtitle, String amount) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8)),
            child: Icon(icon)),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: black.withOpacity(0.5), fontSize: 15),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
              color: sent ? red : green,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

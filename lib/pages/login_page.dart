import 'package:flutter/material.dart';
import 'package:flutter_default/colors.dart';
import 'package:flutter_default/pages/home.dart';
import 'package:flutter_default/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/1.jpg'),
          ),
          const SizedBox(
            height: 90,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(0.03),
                    blurRadius: 3,
                    spreadRadius: 10,
                  )
                ]),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Email Address',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: 'Email',
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(0.03),
                    blurRadius: 3,
                    spreadRadius: 10,
                  )
                ]),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Password',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                  ),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: 'Password',
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () => {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) {
                  return Home();
                })
              )
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              height: 60,
              decoration: BoxDecoration(
                color: buttoncolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: white, fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Signup',
                  style: TextStyle(
                      color: buttoncolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: buttoncolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

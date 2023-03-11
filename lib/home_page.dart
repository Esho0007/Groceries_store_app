import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_store_app/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //logo
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Center(child: Image.asset('assets/images/fruits.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text('We deliver groceries at your door steps',
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const Spacer(),
          Text(
            'Fresh items every day',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Home();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.pink),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text('Get Started'),
              ),
            ),
          ),
          const Spacer(),
        ],
        // we deliver groceries at your door step

        // fresh items every day

        // get started button
      ),
    );
  }
}

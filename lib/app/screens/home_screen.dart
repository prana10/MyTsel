import 'package:flutter/material.dart';
import '/app/widgets/home/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width, // 100%
          height: MediaQuery.of(context).size.height, // 100%
          decoration: const BoxDecoration(
            color: Color(0xffF1F2F6),
          ),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeader(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

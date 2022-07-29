import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_page_ui/consts/consts.dart';
import 'package:splash_page_ui/pages/home/home_page.dart';

class SplashPage extends StatefulWidget {
  static const String splash = '/splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Size? _size;
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;

    ///timer
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(HomePage.routeName, (route) => false);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(MyConsts.icon, width: _size!.width * 0.4),
      ),
    );
  }
}

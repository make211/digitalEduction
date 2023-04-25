// ignore_for_file: library_private_types_in_public_api

import 'package:animations/animations.dart';
import 'package:digital_education/screens/mouse_level.dart';
import 'package:digital_education/utils/app_colors.dart';
import 'package:digital_education/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override

  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Digital Education',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary),
            ),
            Container(
                clipBehavior: Clip.hardEdge,
                width: context.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("assets/images/app-logo.jpg")),
            OpenContainer( 
              closedBuilder: (_, openContainer) {
                return SizedBox(
                  height: 80,
                  width: 80,
                  child: Center(
                    child: Text(
                      'اضغط للبدأ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.backGround),
                    ),
                  ),
                );
              },
              openColor: AppColors.primary,
              closedColor: AppColors.primary,
              closedElevation: 20,
              closedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              transitionDuration: const Duration(milliseconds: 700),
              openBuilder: (_, closeContainer) {
                return const SecondPage();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool _a = false;
  bool _b = false;
  bool _c = false;
  bool _d = false;
  bool _e = false;
  bool _f = false;
  bool _g = false;
  bool _h = true;

  final TextStyle initialStyle = TextStyle(
    fontSize: 30,
    color: AppColors.backGround,
    fontWeight: FontWeight.w600,
    wordSpacing: 2,
  );

  final TextStyle finalStyle = TextStyle(
    fontSize: 30,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
    wordSpacing: 2,
  );

  @override
  void initState() {
    super.initState();
    Timer( const Duration(milliseconds: 500), () {
      setState(() {
        _g = true;
        _a = true;
        _h = !_h;
      });
    });
    Timer(const Duration(seconds: 1), () {
      setState(() {
        _b = true;
        _h = !_h;
      });
    });
    Timer(const Duration(milliseconds: 1500), () {
      setState(() {
        _c = true;
        _h = !_h;
      });
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _d = true;
        _h = !_h;
      });
    });
    Timer(const Duration(milliseconds: 2500), () {
      setState(() {
        _e = true;
        _h = !_h;
      });
    });
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _f = true;
        _h = !_h;
        _g = false;
      });
    });
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacement(
        ThisIsFadeRoute(
          route: const MouseScreen(),
          page: const SecondPage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold( backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _a ? height : 0,
              width: _a ? width : 0,
              decoration: BoxDecoration(
                color: AppColors.backGround,
                borderRadius: BorderRadius.circular(_a ? 0 : 99),
              ),
            ),
          ),
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _b ? height : 0,
              width: _b ? width : 0,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(_b ? 0 : 99),
              ),
            ),
          ),
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _c ? height : 0,
              width: _c ? width : 0,
              decoration: BoxDecoration(
                color: AppColors.backGround,
                borderRadius: BorderRadius.circular(_c ? 0 : 99),
              ),
            ),
          ),
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _d ? height : 0,
              width: _d ? width : 0,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(_d ? 0 : 99),
              ),
            ),
          ),
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _e ? height : 0,
              width: _e ? width : 0,
              decoration: BoxDecoration(
                color: AppColors.backGround,
                borderRadius: BorderRadius.circular(_e ? 0 : 99),
              ),
            ),
          ),
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2200),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _f ? height : 0,
              width: _f ? width : 0,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(_f ? 0 : 99),
              ),
            ),
          ),
          Center(
            child: _g
                ? AnimatedDefaultTextStyle(
                    style: _h ? initialStyle : finalStyle,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: const Text("Digital Education"),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}

class ThisIsFadeRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  ThisIsFadeRoute({required this.page, required this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}

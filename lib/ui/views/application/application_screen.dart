import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_catalog/resources/resources.dart';
import 'package:car_catalog/ui/ui.dart';

class Application extends StatefulWidget {
  final Widget child;

  const Application({super.key, required this.child});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorProvider.mainBackground,
      body: SizedBox(
        height: 812.h,
        width: 375.w,
        child: Stack(
          children: [
            widget.child,
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: bottomNavigationBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

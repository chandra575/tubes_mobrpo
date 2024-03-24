import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/common/widgets/appbar.dart';

class ScreenTemplate extends StatelessWidget {
  const ScreenTemplate({super.key, required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CommonAppBar(title: title),
          Expanded(
            child: SingleChildScrollView(
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
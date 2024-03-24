import "package:flutter/material.dart";
import "package:flutter_tubes_galon/common/widgets/appbar.dart";


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(title: "Riwayat"),
          ],
        ),
      ),
    );
  }
}
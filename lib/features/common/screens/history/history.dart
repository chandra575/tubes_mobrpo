import "package:flutter/material.dart";
import "package:flutter_tubes_galon/common/widgets/screen_template.dart";
import "package:flutter_tubes_galon/utils/constants/sizes.dart";


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTemplate(title: "Riwayat", child: Column(
      children: [
        SizedBox(
          height: AppSizes.defaultSpace,
        ),
        Text("Belum ada riwayat"),
      ],
    ));
  }
}
import "package:flutter/material.dart";
import "package:flutter_tubes_galon/common/widgets/screen_template.dart";
import "package:flutter_tubes_galon/utils/constants/sizes.dart";

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTemplate(
      title: "Pesanan",
      child: Column(
      children: [
        SizedBox(
          height: AppSizes.defaultSpace,
        ),
        Text("Belum ada pesanan"),
      ],
    )
    );
  }
}

import "package:flutter/material.dart";
import "package:flutter_tubes_galon/common/widgets/screen_template.dart";
import "package:flutter_tubes_galon/utils/constants/sizes.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTemplate(title: "Obrolan", child: Column(
      children: [
        SizedBox(
          height: AppSizes.defaultSpace,
        ),
        Text("Belum ada obrolan"),
      ],
    ));
  }
}

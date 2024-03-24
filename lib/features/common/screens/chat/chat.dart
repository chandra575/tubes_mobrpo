import "package:flutter/material.dart";
import "package:flutter_tubes_galon/common/widgets/appbar.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(title: "Obrolan"),
          ],
        ),
      ),
    );
  }
}

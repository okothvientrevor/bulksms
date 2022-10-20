import 'package:flutter/material.dart';

class SendTab extends StatelessWidget {
  const SendTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              "assets/images/bulksms.png",
              height: 30,
            )
          ],
        ),
      ),
      body: const Center(),
    );
  }
}

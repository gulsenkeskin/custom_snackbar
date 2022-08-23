import 'package:flutter/material.dart';

class FlashMessageScreen extends StatefulWidget {
  const FlashMessageScreen({Key? key}) : super(key: key);

  @override
  State<FlashMessageScreen> createState() => _FlashMessageScreenState();
}

class _FlashMessageScreenState extends State<FlashMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){},
          child: const Text("Mesaj Göster"),
        ),
      ),
    );
  }
}

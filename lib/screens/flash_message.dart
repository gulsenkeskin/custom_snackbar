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
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior
                    .floating, //ekranla snackbar arasına margin ekler
                backgroundColor: Colors.transparent,
                elevation: 0,
                content: Container(
                  padding: const EdgeInsets.all(16),
                  height: 90,
                  decoration: const BoxDecoration(
                    color: Color(0xFFC72C41),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Text(
                      "Bu email adresi kullanılıyor. Lütfen tekrar deneyin"),
                )));
          },
          child: const Text("Mesaj Göster"),
        ),
      ),
    );
  }
}

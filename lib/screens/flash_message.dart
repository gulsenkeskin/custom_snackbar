import 'package:custom_snackbar/screens/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              behavior: SnackBarBehavior
                  .floating, //ekranla snackbar arasına margin ekler
              backgroundColor: Colors.transparent,
              elevation: 0,
              content: CustomSnackBar(
                errorText:
                    "Bu email adresi kullanılıyor. Lütfen tekrar deneyin.Bu email adresi kullanılıyor. Lütfen tekrar deneyin",
              ),
            ));
          },
          child: const Text("Mesaj Göster"),
        ),
      ),
    );
  }
}

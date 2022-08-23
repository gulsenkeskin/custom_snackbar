import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({Key? key, required this.errorText}) : super(key: key);

  final String errorText;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 90,
          decoration: const BoxDecoration(
            color: Color(0xFFC72C41),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 48,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      "Mesaj mesaj!",
                      style: TextStyle(
                          fontSize: 18, color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                     errorText,
                      style: TextStyle(
                          color: Colors.white, fontSize: 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/icons/bubbles.svg",
                  height: 48,
                  width: 48,
                  color: const Color(0xFFB01336),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: -20,
            left: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/chat3.svg",
                  height: 40,
                  color: const Color(0xFFB01336),
                ),
                Positioned(
                  child: SvgPicture.asset("assets/icons/fail.svg",
                      height: 40, color: Colors.white),
                  top: 10,
                  height: 16,
                )
              ],
            ))
      ],
    );
  }
}

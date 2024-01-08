import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/utils/colors.dart';
import 'package:google_clone/utils/style.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          //const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/more-apps.svg',
                colorFilter:
                    const ColorFilter.mode(primaryColor, BlendMode.srcIn)),
          ),
          const SizedBox(width: 10),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xff1A73EB),
            child: const Text(
              'Sign in',
              style: TextStyle(color: primaryColor),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: const Text('hello from web'),
    );
  }
}

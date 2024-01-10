import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';
import '../widgets/mobile/mobile_footer.dart';
import '../widgets/search.dart';
// ignore: unused_import
import '../widgets/web/search_buttons.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: blueColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: blueColor,
                tabs: [
                  Tab(text: 'ALL'),
                  Tab(text: 'IMAGES'),
                ],
              )),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.25),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Search(),
                      SizedBox(height: 20),
                    ],
                  ),
                  MobileFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

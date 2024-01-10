import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/screens/search_screen.dart';
import 'package:google_clone/utils/colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/images/google-logo.png',
              height: size.height * 0.12),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: size.width > 720 ? size.width * 0.4 : size.width * 0.9,
          height: size.height * 0.07,
          child: TextFormField(
            onFieldSubmitted: (query) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    SearchScreen(searchQuery: query, start: '0'),
              ));
            },
            cursorColor: const Color.fromARGB(255, 11, 84, 144),
            cursorHeight: size.height * 0.04,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 29),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 11, 84, 144)),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: searchBorder),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/search-icon.svg',
                  colorFilter:
                      const ColorFilter.mode(searchBorder, BlendMode.srcIn),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/mic-icon.svg',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

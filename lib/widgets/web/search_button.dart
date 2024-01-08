import 'package:flutter/material.dart';
import 'package:google_clone/utils/colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      elevation: 0,
      color: searchColor,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Text(title),
    );
  }
}

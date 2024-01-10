import 'package:flutter/material.dart';
import 'package:google_clone/utils/colors.dart';
import 'package:google_clone/widgets/link_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String desc;
  const SearchResultComponent(
      {super.key,
      required this.link,
      required this.text,
      required this.linkToGo,
      required this.desc});

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderline = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () async {
            if (await canLaunchUrlString(widget.linkToGo)) {
              await launchUrlString(widget.linkToGo);
            }
          },
          onHover: (hovering) {
            setState(() {
              _showUnderline = hovering;
            });
          },
          child: SizedBox(
            width: size * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text,
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                      fontSize: 20,
                      color: blueColor,
                      decoration: _showUnderline
                          ? TextDecoration.underline
                          : TextDecoration.none),
                ),
                Text(
                  widget.link,
                  maxLines: 1,
                  softWrap: true,
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.desc,
          maxLines: 2,
          softWrap: true,
          style: const TextStyle(fontSize: 14, color: primaryColor),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

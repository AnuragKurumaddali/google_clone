import 'package:flutter/material.dart';
import 'package:google_clone/constants/colors.dart';

class SearchTab extends StatelessWidget {
  final bool? isActive;
  final String title;
  final IconData iconData;

  const SearchTab(
      {super.key,
      this.isActive = false,
      required this.title,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 18,
              color: isActive! ? blueColor : Colors.grey,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: isActive! ? blueColor : Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        isActive!
            ? Container(
                height: 3,
                width: 40,
                color: blueColor,
              )
            : Container(),
      ],
    );
  }
}
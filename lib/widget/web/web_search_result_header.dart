import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/constants/colors.dart';
import 'package:google_clone/pages/search_result_layout.dart';

class SearchResultHeader extends StatelessWidget {
  const SearchResultHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 28.0, right: 15, top: 4),
            child: Image.asset(
              "assets/images/google-logo.png",
              width: 92,
              height: 30,
            ),
          ),
          const SizedBox(
            width: 27,
          ),
          Container(
            width: size.width * 0.45,
            decoration: BoxDecoration(
              color: searchColor,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: searchColor,
              ),
            ),
            height: 44,
            child: TextField(
              onSubmitted: (text) {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return SearchResult(searchQuery: text, start: "0",);
                },));
              },
              style: const TextStyle(fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            "assets/images/mic-icon.svg",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(
                            Icons.search,
                            color: blueColor,
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
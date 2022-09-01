import 'package:flutter/material.dart';

import '../widgets/SearchPage/searchbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: const [
          Searchbar(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recently searched",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

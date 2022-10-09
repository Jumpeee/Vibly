import 'package:flutter/material.dart';

import '../widgets/SearchPage/searchbar.dart';
import '../widgets/SearchPage/resultbox.dart';

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
          ResultBox(),
        ],
      ),
    );
  }
}

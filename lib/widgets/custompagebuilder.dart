import 'package:flutter/material.dart';

import './navbar.dart';
import '../pages/searchpage.dart';
import '../pages/librarypage.dart';

class CustomPageBuilder extends StatefulWidget {
  final Widget page;

  const CustomPageBuilder({required this.page, Key? key}) : super(key: key);

  @override
  State<CustomPageBuilder> createState() => _CustomPageBuilderState();
}

class _CustomPageBuilderState extends State<CustomPageBuilder> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: selectedIndex == 0
                ? widget.page
                : selectedIndex == 1
                    ? const SearchPage()
                    : selectedIndex == 2
                        ? const LibraryPage()
                        : null,
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: NavBar(
                onSelect: (index) => setState(() => selectedIndex = index),
              ),
            ),
          )
        ],
      ),
    );
  }
}

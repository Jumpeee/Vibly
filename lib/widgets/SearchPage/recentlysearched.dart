import 'package:flutter/material.dart';

class RecentlySearched extends StatelessWidget {
  const RecentlySearched({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 200,
      width: 100,
      child: ListView.builder(
        itemBuilder: (context, val) {
          return Container();
        },
      ),
    );
  }
}

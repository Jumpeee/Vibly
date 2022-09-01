import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 20,
        bottom: 50,
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          onTap: () {
            //implement so when user clicks the search bar the list of recent searches appears
          },
          onChanged: (val) {
            //implement so every time a new sign is added it searches for results
          },
          controller: textController,
          cursorColor: Colors.black,
          style: const TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            suffixIcon: IconButton(
              splashColor: Colors.transparent,
              onPressed: () {
                textController.text = "";
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
            hintText: "Search",
            hintStyle: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

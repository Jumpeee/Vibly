import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Function(int) onSelect;
  const NavBar({required this.onSelect, Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late int selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 80,
      color: Theme.of(context).backgroundColor.withOpacity(0.5),
      child: Stack(
        children: [
          Blur(
            blur: 10,
            blurColor: const Color.fromARGB(255, 34, 34, 34),
            //colorOpacity: 0.5,
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navItem(
                caption: "Listen",
                index: 0,
                icon: Icons.play_arrow_outlined,
              ),
              navItem(
                caption: "Search",
                index: 1,
                icon: Icons.search,
              ),
              navItem(
                caption: "Library",
                index: 2,
                icon: Icons.menu,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget navItem({
    required String caption,
    required IconData icon,
    required int index,
  }) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        fixedSize: MaterialStateProperty.all(
          Size(MediaQuery.of(context).size.width / 3, 100),
        ),
      ),
      onPressed: () {
        widget.onSelect(index);
        setState(() {
          selectedItem = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: index == selectedItem
                ? Theme.of(context).primaryColor
                : const Color.fromARGB(255, 140, 140, 140),
          ),
          const SizedBox(height: 5),
          Text(
            caption,
            style: TextStyle(
              fontSize: 15,
              color: index == selectedItem
                  ? Theme.of(context).primaryColor
                  : const Color.fromARGB(255, 140, 140, 140),
            ),
          ),
        ],
      ),
    );
  }
}

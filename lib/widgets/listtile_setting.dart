import 'package:flutter/material.dart';

class ListTileSetting extends StatelessWidget {
  const ListTileSetting({
    Key? key,
    required this.tileColor,
    required this.titleText,
    required this.titleIcon,
    required this.onTap,
  }) : super(key: key);

  final Color? tileColor;
  final String titleText;
  final IconData titleIcon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: tileColor),
        height: 28,
        width: 28,
        child: Icon(
          titleIcon,
          color: Colors.white,
          size: 24,
        ),
      ),
      title: Text(
        titleText,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(
        IconData(0xe09c, fontFamily: 'MaterialIcons', matchTextDirection: true),
        size: 17,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildBmiMainIcon extends StatelessWidget {
  const BuildBmiMainIcon({
    super.key,
    required Icon icon,
  }) : _icon = icon;

  final Icon _icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffeeeeee),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 178, 185, 191),
                blurRadius: 8.0,
                offset: Offset(5, 5)),
          ]),
      width: 50,
      height: 50,
      child: _icon,
    );
  }
}

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget circleAvatar;
  final Widget trailing;
  final Function onTap;

  const CustomListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.circleAvatar,
      required this.onTap,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: circleAvatar,
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        onTap();
      },
      trailing: trailing,
      titleTextStyle: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      subtitleTextStyle: TextStyle(color: Colors.grey[600], fontSize: 15),
    );
  }
}

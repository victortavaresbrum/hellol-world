import "package:flutter/material.dart";


class Display extends StatefulWidget {
  const Display({
    super.key,
    required this.display,
  });

  final String display;

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5.0,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right:20.0),
          child: Text(widget.display,style: TextStyle(fontSize: 44)),
        ),
        )
    );
  }
}
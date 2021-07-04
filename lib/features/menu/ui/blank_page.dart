import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  final String page;

  const BlankPage({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Text('$page not found'),
      ),
    );
  }
}

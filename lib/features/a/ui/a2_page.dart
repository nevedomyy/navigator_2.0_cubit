import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_2_cubit/core/navigation/app_navigator.dart';

class A2Page extends StatelessWidget {
  final String text;

  const A2Page({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = BlocProvider.of<AppNavigator>(context);
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('A2 $text'),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              navigator.pop();
            },
            child: const Text('pop to A1'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator.popUntil('aPage');
            },
            child: const Text('popUntil A'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator.remove('a1Page');
            },
            child: const Text('remove A1'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator.push('unknowPage');
            },
            child: const Text('push to blank'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator.addAfter('a3Page', afterPage: 'a1Page');
            },
            child: const Text('addAfter A1'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_2_cubit/core/navigation/app_navigator.dart';

class A1Page extends StatelessWidget {
  const A1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = BlocProvider.of<AppNavigator>(context);
    return Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('A1'),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              navigator.push('a2Page', arguments: 'with arguments');
            },
            child: const Text('push to A2'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator.pushReplace('a1Page');
            },
            child: const Text('pushReplace to A1'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator.pushReplace('a2Page', arguments: 'with arguments');
            },
            child: const Text('pushReplace to A2'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator.pop();
            },
            child: const Text('pop to A'),
          ),
        ],
      ),
    );
  }
}

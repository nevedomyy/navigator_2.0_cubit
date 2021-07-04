import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_2_cubit/core/navigation/app_navigator.dart';

class A3Page extends StatelessWidget {
  const A3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = BlocProvider.of<AppNavigator>(context);
    return Container(
      color: Colors.indigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('A3'),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              navigator.pushAndRemoveUntil('unknowPage', lastPage: 'a1Page');
            },
            child: const Text('pushAndRemoveUntil A1'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator.pushAndRemoveUntil('unknowPage', lastPage: 'aPage');
            },
            child: const Text('pushAndRemoveUntil A'),
          ),
        ],
      ),
    );
  }
}

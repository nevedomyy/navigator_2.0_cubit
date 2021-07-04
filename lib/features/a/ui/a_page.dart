import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_2_cubit/core/navigation/app_navigator.dart';

class APage extends StatelessWidget {
  const APage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = BlocProvider.of<AppNavigator>(context);
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('A'),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              navigator.push('a1Page');
            },
            child: const Text('push to A1'),
          ),
        ],
      ),
    );
  }
}

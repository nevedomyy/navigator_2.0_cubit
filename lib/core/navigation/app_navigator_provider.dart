import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_2_cubit/core/navigation/app_navigator.dart';

class AppNavigatorProvider extends StatefulWidget {
  final List<String> initialPages;

  const AppNavigatorProvider({
    Key? key,
    required this.initialPages,
  }) : super(key: key);

  @override
  _AppNavigatorProviderState createState() => _AppNavigatorProviderState();
}

class _AppNavigatorProviderState extends State<AppNavigatorProvider> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AppNavigator>(context).init(widget.initialPages);
  }

  @override
  Widget build(BuildContext context) {
    final navigator = BlocProvider.of<AppNavigator>(context);
    return BlocBuilder<AppNavigator, List<Page>>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            return !navigator.pop();
          },
          child: Navigator(
            onPopPage: (route, result) {
              return !navigator.pop();
            },
            pages: state,
            observers: [
              //...
            ],
          ),
        );
      },
    );
  }
}

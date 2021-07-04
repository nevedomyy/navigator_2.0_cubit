import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_2_cubit/core/navigation/app_navigator_provider.dart';
import 'package:navigator_2_cubit/features/menu/ui/menu_page.dart';

import 'navigation/app_navigator.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    //...
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AppNavigator()),
        //....
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuPage(
          child: AppNavigatorProvider(
            initialPages: ['aPage'],
          ),
        ),
      ),
    );
  }
}

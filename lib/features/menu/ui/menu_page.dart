import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_2_cubit/core/navigation/app_navigator.dart';

class MenuPage extends StatefulWidget {
  final Widget child;

  const MenuPage({Key? key, required this.child}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final _label = ['aPage', 'bPage', 'cPage'];

  @override
  Widget build(BuildContext context) {
    final navigator = BlocProvider.of<AppNavigator>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: BlocBuilder<AppNavigator, List<Page>>(
          builder: (context, state) => Text(
            state.last.name ?? '',
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        centerTitle: true,
        leading: BlocBuilder<AppNavigator, List<Page>>(
          builder: (context, state) {
            return AnimatedOpacity(
              opacity: state.length <= 1 ? 0 : 1.0,
              child: IconButton(
                onPressed: state.length <= 1 ? null : navigator.pop,
                icon: const Icon(Icons.arrow_back_ios_new_sharp,
                    color: Colors.black),
              ),
              duration: const Duration(milliseconds: 300),
            );
          },
        ),
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: Row(
          children: List.generate(3, (index) {
            return Expanded(
              child: InkWell(
                onTap: () {
                  navigator.pushAndRemoveAll(_label[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    _label[index],
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
      body: widget.child,
    );
  }
}

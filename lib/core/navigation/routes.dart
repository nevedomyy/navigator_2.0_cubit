import 'package:flutter/cupertino.dart';
import 'package:navigator_2_cubit/features/a/ui/a1_page.dart';
import 'package:navigator_2_cubit/features/a/ui/a2_page.dart';
import 'package:navigator_2_cubit/features/a/ui/a3_page.dart';
import 'package:navigator_2_cubit/features/a/ui/a_page.dart';
import 'package:navigator_2_cubit/features/b/ui/b_page.dart';
import 'package:navigator_2_cubit/features/c/ui/c_page.dart';
import 'package:navigator_2_cubit/features/menu/ui/blank_page.dart';

class Routes {
  Routes._();

  static List<String> pages = [
    'aPage',
    'bPage',
    'cPage',
    'a1Page',
    'a2Page',
    'a3Page',
  ];

  static Page getPage(String page, {dynamic arguments}) {
    dynamic pageClass;
    switch (page) {
      case 'aPage':
        pageClass = const APage();
        break;
      case 'bPage':
        pageClass = const BPage();
        break;
      case 'cPage':
        pageClass = const CPage();
        break;
      case 'a1Page':
        pageClass = const A1Page();
        break;
      case 'a2Page':
        pageClass = A2Page(text: arguments);
        break;
      case 'a3Page':
        pageClass = const A3Page();
        break;
      default:
        return CupertinoPage(
          key: const ValueKey('blankPage'),
          name: 'blankPage',
          child: BlankPage(page: page),
        );
    }
    return CupertinoPage(
      key: ValueKey(page),
      name: page,
      child: pageClass,
      arguments: arguments,
    );
  }
}

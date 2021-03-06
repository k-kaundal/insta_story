import 'package:flutter/material.dart';
import 'package:insta_story/src/ui/views/ListViewExample.dart';
import 'package:insta_story/src/ui/views/bottom_sheet.dart';
import 'package:insta_story/src/ui/views/card_example.dart';
import 'package:insta_story/src/ui/views/home.dart';
import 'package:insta_story/src/ui/views/login.dart';
import 'package:insta_story/src/ui/views/login_form.dart';
import 'package:insta_story/src/ui/views/native_android_dialog.dart';
import 'package:insta_story/src/ui/views/transaction_list_design.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: BottomSheetExample(),
    );
  }
}

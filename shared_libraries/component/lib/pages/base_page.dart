import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: GestureDetector(
        // https://stackoverflow.com/questions/51652897/how-to-hide-soft-input-keyboard-on-flutter-after-clicking-outside-textfield-anyw
        behavior: HitTestBehavior.opaque,
        onTap: FocusScope.of(context).unfocus,
        child: body,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}

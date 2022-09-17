import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class SetThemeButton extends StatelessWidget {
  const SetThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (_, mode, child) {
        final isDarkMode = mode == AdaptiveThemeMode.dark;

        return IconButton(
          onPressed: AdaptiveTheme.of(context).toggleThemeMode,
          icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
        );
      },
    );
  }
}

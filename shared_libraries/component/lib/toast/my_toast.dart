import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

class MyToast extends StatelessWidget {
  const MyToast({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  static show(
    BuildContext context, {
    required String message,
  }) {
    final fToast = FToast();
    fToast.init(context);
    fToast.showToast(
      child: MyToast(message: message),
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: SizeConstant.spacingMedium,
        vertical: SizeConstant.spacingSmall,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConstant.defaultBorderRadius),
        color: context.color.error,
      ),
      child: Text(message),
    );
  }
}

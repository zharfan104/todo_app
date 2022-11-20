import 'package:dependencies/dependencies.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/app/app.dart';
import 'package:todo_app/di/index.dart';

void main() {
  testWidgets('When App is render, then it will have AdaptiveTheme',
      (tester) async {
    Injections.init();
    await tester.pumpWidget(const App());

    expect(find.byType(AdaptiveTheme), findsOneWidget);
  });
}

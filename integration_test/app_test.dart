import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_template/app.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('do something, then check something',
        (tester) async {
      // Load app widget.
      await tester.pumpWidget(const MainApp());

      // Verify something
      // expect(find.text('1'), findsOneWidget);
    });
  });
}

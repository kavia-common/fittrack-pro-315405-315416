import 'package:flutter_test/flutter_test.dart';
import 'package:fitness_frontend/main.dart';
import 'package:fitness_frontend/storage/session_storage.dart';

void main() {
  testWidgets('App boots', (WidgetTester tester) async {
    final SessionStorage storage = await SessionStorage.create();
    await tester.pumpWidget(FitTrackApp(sessionStorage: storage));
    // First frame may show initialization spinner.
    expect(find.byType(FitTrackApp), findsOneWidget);
  });
}

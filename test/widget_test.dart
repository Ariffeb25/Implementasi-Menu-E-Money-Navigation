import 'package:flutter_test/flutter_test.dart';
import 'package:tugas3/main.dart';

void main() {
  testWidgets('Online Shopping smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our app bar shows Online Shopping.
    expect(find.text('Online Shopping'), findsOneWidget);
    expect(find.text('Etalase Produk'), findsOneWidget);
  });
}

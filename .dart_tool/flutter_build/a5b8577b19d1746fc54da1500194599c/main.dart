import 'dart:ui' as ui;

import 'package:appointment_management/main.dart' as entrypoint;

Future<void> main() async {
  if (true) {
    await ui.webOnlyInitializePlatform();
  }
  entrypoint.main();
}

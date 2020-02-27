import 'package:flutter_driver/driver_extension.dart';
import 'package:healthcare/main.dart' as app;

void main() {
  //This will enable the driver extension for integration testing.
  enableFlutterDriverExtension();

  //We are testing the main() function so we declare it app.main().
  // If we want to test another widget then we declare another widget as well.
  app.main();
}

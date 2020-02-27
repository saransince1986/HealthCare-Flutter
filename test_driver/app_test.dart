import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    final string = find.text('title');

    FlutterDriver driver;

    //Before starting any testing, start the flutter driver
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    //After completion of integration testing we have to close the driver.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Get the tile of the App Bar', () async {
      expect(await driver.getText(string), 'title');
    });
  });
}

import 'main.dart';

import 'package:test/test.dart';

void main() {
  test('checkPanDigital', () {
    expect(checkPanDigital(11234567890), true);
    expect(checkPanDigital(90), false);
    expect(checkPanDigital(-90), false);
  });
  test('overlappingRectangles', () {
    expect(overlappingRectangles([{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],[{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]), 6);

  });
}
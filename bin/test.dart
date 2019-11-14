import 'main.dart';

import 'package:test/test.dart';

void main() {
  test('check pan digital', () {

    expect(checkPanDigital(90), false);
    expect(checkPanDigital(-90), false);
  });
  test('overlappingRectangles', () {
    expect(overlappingRectangles([{ 'x': 5, 'y': 0 }, { 'x': 0, 'y': 10}],[{ 'x': 15, 'y': 15 }, { 'x': 20, 'y': 20 }]), 0);
    expect(overlappingRectangles([{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],[{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]), 6);
  });
}
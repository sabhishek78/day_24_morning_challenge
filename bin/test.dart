import 'main.dart';

import 'package:test/test.dart';

void main() {
  test('calculate point', () {
    expect(calPoint({'x':50,'y':60},{'x':100,'y':100},10),);
    expect(checkPanDigital(90), false);
    expect(checkPanDigital(-90), false);
  });
  test('overlappingRectangles', () {
    expect(overlappingRectangles([{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],[{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]), 6);

  });
}
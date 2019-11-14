
// Challenge 1
// Write test cases for the given challenges

// Challenge 2
// Pandigital Numbers
// A pandigital number contains all digits (0-9) at least once. Write a function
// that takes an integer, returning true if the integer is pandigital, and false otherwise.
//  Examples
//  isPandigital(98140723568910) ➞ true

bool checkPanDigital(int input){
  String inputString=input.toString();

  for(int i=0;i<10;i++){
    if(!inputString.contains('$i'))
      {
        return false;
      }

  }
   return true;
}
// Challenge 3
// Area of Overlapping Rectangles
// Create a function that returns the area of the overlap between two rectangles.
// The function will receive two rectangles, each with the coordinates of two of
// its opposite angles.
//
// Examples
// overlappingRectangles(
//    [{ x: 2, y: 1 }, { x: 5, y: 5 }],
//    [{ x: 3, y: 2 }, { x: 5, y: 7 }]
//  ) ➞ 6


int overlappingRectangles(List<Map> Rect1, List<Map> Rect2) {
  List<int> r1x = [];
  List<int> r2x = [];
  List<int> r1y = [];
  List<int> r2y = [];
  r1x.addAll(Rect1.map((item) => item['x']));
  r2x.addAll(Rect2.map((item) => item['x']));
  r1y.addAll(Rect1.map((item) => item['y']));
  r2y.addAll(Rect2.map((item) => item['y']));
  r1x.sort();
  r1y.sort();
  r2x.sort();
  r2y.sort();
  return (r1x[1] > r2x[0] || r1y[1] > r2y[0])?  ((r1x[1] - r2x[0])) * ((r1y[1] - r2y[0])):  0;
}
main() {
//print(checkPanDigital(11234567890));
//print(checkPanDigital(125));
print(overlappingRectangles([{ 'x': 5, 'y': 0 }, { 'x': 0, 'y': 10 }],[{ 'x': 15, 'y': 15 }, { 'x': 20, 'y': 20 }]));
print(overlappingRectangles([{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],[{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]));
print(overlappingRectangles([{ 'x': 1, 'y': 0 }, { 'x': 2, 'y': 5 }],[{ 'x': 2, 'y': 0 }, { 'x': 3, 'y': 5 }]));
}


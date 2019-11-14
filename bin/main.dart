
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
  print(inputString);
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


int overlappingRectangles(List<Map> Rect1, List<Map> Rect2){

List<int> x=[];
List<int> y=[];
x.add(Rect1[0]['x']);
x.add(Rect1[1]['x']);
x.add(Rect2[0]['x']);
x.add(Rect2[1]['x']);
y.add(Rect1[0]['y']);
y.add(Rect1[1]['y']);
y.add(Rect2[0]['y']);
y.add(Rect2[1]['y']);
if(overlap(Rect1[1]['x'],Rect2[0]['x'],Rect1[1]['y'],Rect2[0]['y'])){
  x.sort();
  y.sort();
  return ((x[1]-x[2]).abs())*((y[1]-y[2]).abs());
}
else {
  return 0;
}


}
bool overlap(int x2, int x3, int y2 , int y3){
  if(x2>x3 || y2>y3){
    return true;
  }
  else {
    return false;
  }

}

main() {
print(checkPanDigital(11234567890));
print(checkPanDigital(125));
print(overlappingRectangles([{ 'x': 5, 'y': 0 }, { 'x': 0, 'y': 10 }],[{ 'x': 15, 'y': 15 }, { 'x': 20, 'y': 20 }]));
print(overlappingRectangles([{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],[{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]));

}


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


int overlappingRectangles(List<Map> firstRectangle, List<Map> secondRectangle){
int x1=firstRectangle[0]['x'];
int y1=firstRectangle[0]['y'];
int x2=firstRectangle[1]['x'];
int y2=firstRectangle[1]['y'];
int x3=secondRectangle[0]['x'];
int y3=secondRectangle[0]['y'];
int x4=secondRectangle[1]['x'];
int y4=secondRectangle[1]['y'];
List<int> xCoordinates=[];
List<int> yCoordinates=[];
xCoordinates.add(x1);
xCoordinates.add(x2);
xCoordinates.add(x3);
xCoordinates.add(x4);
yCoordinates.add(y1);
yCoordinates.add(y2);
yCoordinates.add(y3);
yCoordinates.add(y4);
if(overlap(x2, x3, y2, y3)){
  xCoordinates.sort();
  yCoordinates.sort();
  return ((xCoordinates[1]-xCoordinates[2]).abs())*((yCoordinates[1]-yCoordinates[2]).abs());
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

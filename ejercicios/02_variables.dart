// Variables 
void main() {
  
  final String game = 'Zelda';
  final int starts = 4;
  final bool isRPG = false;
  final List<String> types = ['Adventure', 'RPG'];
  final cover = <String>['zelda/front.png', 'zelda/back.png'];
  
  dynamic data = null;
  data = true;
  data = [1, 2, 3, 4, 5];
  data = {1, 2, 3, 4, 5};
  data = () => true;
  data = 1;
  data = "name";
  // data += 2;
  // data = null;
  
  print("""
    $game
    $starts
    $isRPG
    $types
    $cover
    $data
  """);
  
}
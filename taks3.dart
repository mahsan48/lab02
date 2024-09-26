import 'dart:io';

void main() {
  
  void getAgeAndCalculateYearsLeft() {
    try {
      
      print('Please enter your age:');
      
      
      String? input = stdin.readLineSync();
      
      
      if (input == null || input.isEmpty) {
        throw Exception('Input cannot be empty');
      }


      int age = int.parse(input);

      
      int yearsLeft = 100 - age;
      print('You have $yearsLeft years left until you turn 100.');
      
    } on FormatException {
     
      print('Error: Invalid input. Please enter a valid number.');
    } catch (e) {
   
      print('Error: $e');
    }
  }

 
  getAgeAndCalculateYearsLeft();
}

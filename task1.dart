import 'dart:io';

class Task {
 
  List<String> todo = [];

 
  void addTask(){
    print('Enter the task:');
    String? t1 = stdin.readLineSync();
    
  
    if (t1 != null ) {
      todo.add(t1);
      print('adding the task:: "$t1"');
    } else {
      print('invalid input;');
    }
  }

  
  void viewTasks() {
    if (todo.isEmpty) {
      print('Your todo list is empty.');
    } else {
      print('Your tasks:');
      for (int i = 0; i < todo.length; i++) {
        print('${i + 1}. ${todo[i]}');
      }
    }
  }
}

void main() {
  Task taskManager = Task(); 
  while (true) {
    print('\ntodo list');
    print('1. add a task');
    print('2. view tasks');
    print('3. exit');
    print('enter num:');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        taskManager.addTask();
        break;
      case '2':
        taskManager.viewTasks();
        break;
      case '3':
        print('Exiting...');
        ;
      default:
        print('Invalid option, please try again.');
    }
  }
}

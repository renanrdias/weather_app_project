Duration threeSeconds = Duration(seconds: 3);



void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}



void task1() {
  String result = 'task1 data';
  print('Task 1 was complete');
}

Future<String> task2() async{
  String? result;
  await Future.delayed(threeSeconds, () {
    result = 'task2 data';
    print('Task 2 was complete');
  });

  return result!;
}


void task3(String task2Data) {
  String result = 'task3 data';
  print('Task 3 was complete with $task2Data');
}





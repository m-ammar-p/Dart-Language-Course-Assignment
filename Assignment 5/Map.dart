/// Making it global
List<Map<String,dynamic>> data = [
{
"taskName":"Do Assignment 5",
"isCompleted":false,
"submissionDate": 29,
},{
"taskName":"Do Assignment 4",
"isCompleted":true,
"submissionDate": 26,
},{
"taskName":"Do Assignment 3",
"isCompleted":true,
"submissionDate": 19,
},{
"taskName":"Do Assignment 2",
"isCompleted":false,
"submissionDate": 12,
},{
"taskName":"Do Assignment 1",
"isCompleted":true,
"submissionDate": 5
}
];

void main() {
  
  /// 1 Create a new list containing items that have only completed tasks
  /// 2 Create a list that contains tasks with submission dates between 10 to 20
  /// 3 Add Completed to each taskName which is marked as "isCompleted":true
  /// 4 Print all lists with foreach function using anonymous function
  
  List<Map<String,dynamic>> completedTasks = [];
  List<Map<String,dynamic>> submissionDates = [];

  addCompletedTaskList(data, completedTasks);
  addSubmissionList(data, submissionDates);
  addCompletedToTaskName(data);

  print("--------------- Completed Task List-------------------\n");
  showList(completedTasks);
  print("\n------------ Submission Date Between 10 and 20 List---------------\n");
  showList(submissionDates);
  print("\n------------ Add Completed To taskName on orignal data List ---------------\n");
  showList(data);
 
} // End of main()

void addCompletedTaskList(List<Map<String,dynamic>> dataList, List<Map<String,dynamic>> completedTasksList) {

  completedTasksList.addAll(dataList.where((e) => e["isCompleted"] == true));
}

void addSubmissionList(List<Map<String,dynamic>> dataList, List<Map<String,dynamic>> submissionDatesList) {

  submissionDatesList.addAll(dataList.where((e) => e["submissionDate"] >= 10 && e["submissionDate"] <= 20));
}

void addCompletedToTaskName(List<Map<String,dynamic>> dataList) {

  dataList.forEach((e) {

    if (e["isCompleted"] == true) {
          e.update("taskName", (value) => value + " Completed");
    }
   
  });

} // End of addCompletedToTaskName()

void showList(List<Map<String,dynamic>> dataList){
  dataList.forEach((e) {print(e);});
}
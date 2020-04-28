class Task {
  final String name;
  bool isDone;
  String dateCreated;

  Task({this.name, this.isDone = false, this.dateCreated});
  void toggleDone() {
    isDone = !isDone;
  }
}

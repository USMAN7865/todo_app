// ignore_for_file: non_constant_identifier_names

class Task {
  String? Taskname;
  bool Taskstatus = false;

  Task({
    this.Taskname,
  });

  void Togglestatus() {
    Taskstatus = !Taskstatus;
  }
}

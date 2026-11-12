class Task {
  String judul;
  String assignee;
  String deadline;
  String status = 'To Do'; // Nilai default

  Task(this.judul, this.assignee, this.deadline);

  void mulaiKerjakan() {
    status = 'In Progress';
  }

  void selesaikan() {
    status = 'Done';
  }

  void tampilkanTask() {
    print('Task: $judul | Assignee: $assignee | Deadline: $deadline | Status: $status');
  }
}

void main() {
  var t1 = Task('Nabung buat nonton konser JKT48', 'Aulia', 'Kapan-kapan');
  var t2 = Task('Maki-maki pemerintah', 'Netizen', 'Hari ini');
  var t3 = Task('Adel nikah sama Mingyu', 'Adel', 'Besok');

  t1.mulaiKerjakan();
  t2.selesaikan();

  t1.tampilkanTask();
  t2.tampilkanTask();
  t3.tampilkanTask(); 
}
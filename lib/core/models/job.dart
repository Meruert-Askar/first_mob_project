class Job {
  final String title;
  final String company;
  final String salary;
  final String logo; // путь к картинке
  final String category;
  final String status;

  Job({
    required this.title,
    required this.company,
    required this.salary,
    required this.logo,
    required this.category,
    required this.status,
  });
}

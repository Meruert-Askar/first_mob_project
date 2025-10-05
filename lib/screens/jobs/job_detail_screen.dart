import 'package:flutter/material.dart';

class JobDetailScreen extends StatefulWidget {
  final String title;
  final String company;
  final String salary;
  final String logoPath;

  const JobDetailScreen({
    super.key,
    required this.title,
    required this.company,
    required this.salary,
    required this.logoPath,
  });

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  bool _isExpanded = false;

  final String _jobDescription =
      "Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye? "
      "We believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. "
      "How about you? We're looking for a like-minded.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF9F5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Лого + Название вакансии
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  widget.logoPath,
                  width: 56,
                  height: 56,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.company,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        "Posted on 3 March",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins",
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            Divider(color: Colors.green.shade200, thickness: 1),
            const SizedBox(height: 16),

            // 🔹 Основная инфа 2x2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _infoBlock("APPLY BEFORE", "03 June, 2022"),
                _infoBlock("JOB NATURE", "Full-time", isBadge: true),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _infoBlock("SALARY RANGE", widget.salary),
                _infoBlock("JOB LOCATION", "Work from anywhere"),
              ],
            ),

            const SizedBox(height: 20),
            Divider(color: Colors.green.shade200, thickness: 1),
            const SizedBox(height: 20),

            // 🔹 Job Description
            const Text(
              "JOB DESCRIPTION",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),

            Text(
              _jobDescription,
              maxLines: _isExpanded ? null : 3,
              overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                fontFamily: "Poppins",
                color: Colors.black87,
              ),
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Text(
                _isExpanded ? "See less" : "See more",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF12AA73),
                ),
              ),
            ),

            const SizedBox(height: 20),
            Divider(color: Colors.green.shade200, thickness: 1),
            const SizedBox(height: 20),

            // 🔹 Roles & Responsibilities
            const Text(
              "ROLES AND RESPONSIBILITIES",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _bullet("Drive the design process with cross-functional partners and design leads."),
                _bullet("Design new experiences and patterns in a complex ecosystem and across platforms."),
                _bullet("Partner with UX Research and Content Strategists through the design process."),
                _bullet("Work closely with Product and Engineering to deliver high-quality experiences."),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// 🔹 Инфо-блоки
Widget _infoBlock(String label, String value, {bool isBadge = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins",
          color: Colors.black54,
        ),
      ),
      const SizedBox(height: 6),
      isBadge
          ? Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xFFE5F4EF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
            color: Color(0xFF135B46),
          ),
        ),
      )
          : Text(
        value,
        style: const TextStyle(
          fontSize: 13,
          fontFamily: "Poppins",
          color: Colors.black87,
        ),
      ),
    ],
  );
}

// 🔹 Буллеты
class _bullet extends StatelessWidget {
  final String text;
  const _bullet(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                fontFamily: "Poppins",
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

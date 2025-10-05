import 'package:flutter/material.dart';
import 'package:mob_app_flutter/screens/jobs/job_detail_screen.dart';

class JobCard extends StatelessWidget {
  final String title;
  final String company;
  final String salary;
  final String status;
  final String logoPath;
  final String tag; // например: "Paystack"

  const JobCard({
    super.key,
    required this.title,
    required this.company,
    required this.salary,
    required this.status,
    required this.logoPath,
    this.tag = "",
  });

  Color _getStatusColor(String status) {
    switch (status) {
      case "Applied":
        return const Color.fromRGBO(7, 134, 75, 1);
      case "Expires Soon":
        return const Color.fromRGBO(218, 164, 0, 1);
      default:
        return Colors.white; // зелёный для "none"
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobDetailScreen(
              title: title,
              company: company,
              salary: salary,
              logoPath: logoPath,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        height: 130,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Верхняя строка
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Лого
                Image.asset(
                  logoPath,
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 12),

                // Название + компания + тег
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Название и статус
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                color: Colors.black87,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (status.isNotEmpty)
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                color: _getStatusColor(status).withOpacity(0.9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    status == "Applied"
                                        ? Icons.check_circle   // ✅ для Applied
                                        : Icons.info,          // ℹ️ для Expires Soon
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    status,
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                        ],
                      ),
                      const SizedBox(height: 4),

                      // Компания
                      Text(
                        company,
                        style: const TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins",
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 4),

                      // Тег (Paystack)
                      if (tag.isNotEmpty)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: const Color(0x2E12AA73),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            tag,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0xFF135B46),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // 🔹 Зарплата справа
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                salary,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: Color(0xFF434545),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

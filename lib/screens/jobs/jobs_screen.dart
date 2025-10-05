import 'package:flutter/material.dart';
import 'package:mob_app_flutter/widgets/job_card.dart';
import 'package:mob_app_flutter/widgets/profile_avatar.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBFDBD1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Верхняя панель
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProfileAvatar(imagePath: "assets/images/avatar.png"),
                  IconButton(
                    icon: const Icon(Icons.notifications_none,
                        size: 28, color: Colors.black87),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // 🔹 Список вакансий
            Expanded(
              child: ListView(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                children: const [
                  // ---- DESIGNER JOBS ----
                  Text(
                    "DESIGNER",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: Color(0xFF434545),

                    ),
                  ),
                  SizedBox(height: 12),

                  JobCard(
                    title: "Junior UX Designer",
                    company: "Canva",
                    salary: "\$40-60k/yearly",
                    status: "none",
                    logoPath: "assets/images/canva-logo.png",
                    tag: "Paystack",
                  ),
                  JobCard(
                    title: "Junior Product Designer",
                    company: "Canva",
                    salary: "\$40-60k/yearly",
                    status: "Applied",
                    logoPath: "assets/images/canva-logo.png",
                    tag: "Paystack",
                  ),
                  JobCard(
                    title: "Middle Motion Designer",
                    company: "Canva",
                    salary: "\$40-60k/yearly",
                    status: "Expires Soon",
                    logoPath: "assets/images/canva-logo.png",
                    tag: "Paystack",
                  ),

                  SizedBox(height: 24),

                  // ---- ANDROID JOBS ----
                  Text(
                    "ANDROID",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: Color(0xFF434545),

                    ),
                  ),
                  SizedBox(height: 12),

                  JobCard(
                    title: "Junior Android Developer",
                    company: "Kotlin, Java",
                    salary: "\$50-70k/yearly",
                    status: "none",
                    logoPath: "assets/images/canva-logo.png",
                    tag: "Paystack",
                  ),
                  JobCard(
                    title: "Middle Android Engineer",
                    company: "Kotlin, Java",
                    salary: "\$60-80k/yearly",
                    status: "Applied",
                    logoPath: "assets/images/canva-logo.png",
                    tag: "Paystack",
                  ),
                  JobCard(
                    title: "Senior Android Developer",
                    company: "Meta",
                    salary: "\$80-100k/yearly",
                    status: "Expires Soon",
                    logoPath: "assets/images/canva-logo.png",
                    tag: "Paystack",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

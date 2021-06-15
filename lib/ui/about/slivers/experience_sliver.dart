import 'package:dabble_studio/ui/about/components/experience_tile.dart';
import 'package:dabble_studio/ui/components/sliver_section.dart';
import 'package:flutter/material.dart';

class ExperienceSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      children: [
        ListTile(
          title: Text(
            "Experience",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        ExperienceTile(
          assetName: "assets/logos/flutter.png",
          title: "Flutter Developer",
          description:
              "Flutter captured my attention when I discovered its power to create cross platform applications from one code base. During my last year of college I started freelancing and building my own projects with Flutter. With its web and desktop support, the possibilities are endless.",
          children: [
            ListTile(
              title: Text("General"),
              subtitle: Text(
                "Regularly works with Dart to develop cross platform applications and reusable components with Android Studio."
                "Follows BLoC pattern for state and data management.",
              ),
            ),
            ListTile(
              title: Text("UI/UX"),
              subtitle: Text(
                "Follows Material Theme and Material Design Guidelines for custom yet standardizd user experiences.",
              ),
            ),
            ListTile(
              title: Text("Backend"),
              subtitle: Text(
                "Regularly uses Firebase and has experience with AWS.",
              ),
            ),
            ListTile(
              title: Text("Version Control"),
              subtitle: Text("Git and Github"),
            ),
            ListTile(
              title: Text("APIs"),
              subtitle: Text(
                  "Google (Firebase, Places, Maps and more), Facebook, AWS, OpenWeatherMap and more"),
            ),
          ],
        ),
        ExperienceTile(
          assetName: "assets/logos/android.png",
          title: "Android Development",
          description:
              "After learning Java in high school, in college I began to experiment with Android development. I met a mentor who taught me good practices and industry standards. ",
          children: [
            ListTile(
              title: Text("General"),
              subtitle: Text(
                  "Regularly codes with Kotlin and uses high order lambda functions in Android Studio."
                  "Adheres to MVP architecture for easy navigation and maintainable code."
                  "Develops reusable and reliable Kotlin and Java code for common processes and views."
                  "Ensures quality assurance with Test Driven Development using Mockito, Espresso and JUnit."),
            ),
            ListTile(
              title: Text("UI/UX"),
              subtitle: Text(
                  "Follows Material Theme and Material Design Guidelines custom user experiences. Optimizes"
                  "XML layout hierarchy for improved performance."),
            ),
            ListTile(
              title: Text("Backend"),
              subtitle: Text(
                "Regularly uses Firebase cloud services. Has used Realm + Parceler for local storage, and some AWS. "
                "Builds intuitive models in Java and managers for simple database management. "
                "Strategically designs and implements relational database structures. ",
              ),
            ),
            ListTile(
              title: Text("Version Control"),
              subtitle: Text("Git, Github and Bitbucket"),
            ),
            ListTile(
              title: Text("APIs"),
              subtitle: Text(
                  "Google, Facebook, AWS, Retrofit, Glide, OkHttp, Dagger"),
            ),
          ],
        ),
        ExperienceTile(
          assetName: "assets/logos/vector.png",
          title: "Sales Representative",
          description:
              "Sales helped me learn discipline, persistence and interpersonal skills. I excelled at sales and even managed my own team.",
          children: [
            ListTile(
              title: Text("Branch Manager"),
              subtitle: Text(
                  "I funded, established and ran a branch office. This included conducting interviews, "
                  "hiring and training staff(receptionists, recruiting assistants and managers) and sales representatives.\n\n"
                  "Top performers met with me to plan sales goals, develop strategies and refine techniques. "
                  "Nationally ranked #12 in recruiting and #49 in sales of 300+ offices.\n\n"
                  "Weekly duties included preparing sales reports, employee timesheets and payroll, and handling"
                  "sensitive customer information, invoices and vendors. Occasionally, I coordinated travelling"
                  "arrangements for regional and divisional events while my sales manager drove attendance."),
            ),
            ListTile(
              title: Text("Assistant Manager"),
              subtitle: Text(
                "I managed the applicant tracking system, reception, emails, inventory, office organization and event coordination. "
                "I led the recruiting program and staff to push web and mail advertisements, social media campaigns and career fairs. ",
              ),
            ),
            ListTile(
              title: Text("Sales Representative"),
              subtitle: Text(
                "By starting with limited contacts, I generated hundreds of unique clients through a customer referral program. "
                "I leveraged scripts to schedule and demonstrate products at in-home appointments. I received awards and sales milestones. "
                "Due to an excellence in sales, I was recruited into the Fair and Show program where I represented the company at events across the Chicago and surrounding areas. ",
              ),
            ),
          ],
        ),
      ],
    );
  }
}

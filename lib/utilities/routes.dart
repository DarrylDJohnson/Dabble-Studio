import 'package:dabble_studio/pages/about/about_page.dart';
import 'package:dabble_studio/pages/contact/contact_page.dart';
import 'package:dabble_studio/pages/home/home_page.dart';
import '../ui/pages/project/projects_page.dart';
import '../ui/pages/services_page.dart';

const String homeRoute = "/home";
const String projectRoute = "/project";
const String serviceRoute = "/service";
const String aboutRoute = "/about";
const String contactRoute = "/contact";

final routes = {
  homeRoute: (context) => HomePage(),
  projectRoute: (context) => ProjectPage(),
  serviceRoute: (context) => ServicesPage(),
  aboutRoute: (context) => AboutPage(),
  contactRoute: (context) => ContactPage(),
};

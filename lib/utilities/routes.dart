import 'package:dabble_studio/ui/about/about_page.dart';
import 'package:dabble_studio/ui/contact/contact_page.dart';
import 'package:dabble_studio/ui/home/home_page.dart';
import 'package:dabble_studio/ui/project/project_page.dart';
import 'package:dabble_studio/ui/service/service_page.dart';

const String homeRoute = "/home";
const String projectRoute = "/project";
const String serviceRoute = "/service";
const String aboutRoute = "/about";
const String contactRoute = "/contact";

final routes = {
  homeRoute: (context) => HomePage(),
  projectRoute: (context) => ProjectPage(),
  serviceRoute: (context) => ServicePage(),
  aboutRoute: (context) => AboutPage(),
  contactRoute: (context) => ContactPage(),
};

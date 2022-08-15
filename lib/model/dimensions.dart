import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//// set the common dimensions

const double mobileWidth = 900.0;
const double tabletWidth = 1300.0;
const double maxHeaderSize = 1850.0;
const double maxMobileHeaderSize = 550.0;
const double infoTextMediumSize = 1200.0;
const double infoTextLargerSize = 1750.0;
const double tabletAspectRatio =4 / 1;
const double desktopAspectRatio = 5 / 1;
const double maxiMobileAspectRatio = 10 / 7;
const double mobileAspectRatio = 10 / 9;
const double miniMobileAspectRatio = 10 / 15;
const Map<String, double> mobileBodyPaddingMap = {"left": 25.0, "right": 25.0, "top": 0.0,"bottom": 0.0};
const Map<String, double> tabletBodyPaddingMap = {"left": 45.0, "right": 45.0, "top": 0.0,"bottom": 0.0};
const Map<String, double> desktopBodyPaddingMap = {"left": 60.0, "right": 60.0, "top": 0.0,"bottom": 0.0};


const List<Map<String, String>> resumeItems = [
  {"attributeName": "Profile", "attributeDefinition": "LoremIpsymProfile"},
  {"attributeName": "Education", "attributeDefinition": "LoremIpsymEducation"},
  {"attributeName": "Skills", "attributeDefinition": "LoremIpsymSkills"},
  {
    "attributeName": "Experience",
    "attributeDefinition": "LoremIpsymExperience"
  },
  {"attributeName": "Projects", "attributeDefinition": "LoremIpsymProjects"},
  {"attributeName": "Awards", "attributeDefinition": "LoremIpsymAwards"},
  {
    "attributeName": "Certificate",
    "attributeDefinition": "LoremIpsymCertificate"
  }
];

Map<String, IconData> skillItems = {
  "NodeJS": FontAwesomeIcons.nodeJs,
  "AWS": FontAwesomeIcons.aws,
  "Python": FontAwesomeIcons.python,
  "VueJS": FontAwesomeIcons.vuejs,
  "Java": FontAwesomeIcons.java,
};

Map<String, dynamic> infoItems = {
  "Address": {
    "text": "TR - ANKARA",
    "icon": FontAwesomeIcons.house
  },
  "Phone Number": {
    "text": "+90 507 329 0916",
    "icon": FontAwesomeIcons.mobileScreenButton
  },
  "Email Address": {
    "text": "cantalay0@gmail.com",
    "icon": FontAwesomeIcons.envelope
  },
  "Linkedin": {
    "text": "@cantalay",
    "icon": FontAwesomeIcons.linkedin
  },
  "Github": {
    "text": "@cantalay",
    "icon": FontAwesomeIcons.github
  },
  "Gitlab": {
    "text": "@cantalay",
    "icon": FontAwesomeIcons.gitlab
  },
  "gender": {
    "text": "Male",
    "icon": FontAwesomeIcons.mars
  },
};

const Map<String, String> userInfo = {
  "name": "Ali Can",
  "surname": "Talay",
  "title": "FULLSTACK SOFTWARE developer"
};
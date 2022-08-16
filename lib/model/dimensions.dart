import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//// set the common dimensions

const double mobileWidth = 900.0;
const double tabletWidth = 1300.0;
const double maxHeaderSize = 1450.0;
const double maxMobileHeaderSize = 550.0;
const double infoTextMediumSize = 1200.0;
const double infoTextLargerSize = 1750.0;
const double tabletAspectRatio = 4 / 1;
const double desktopAspectRatio = 5 / 1;
const double maxiMobileAspectRatio = 10 / 7;
const double mobileAspectRatio = 10 / 9;
const double miniMobileAspectRatio = 10 / 15;
const Map<String, double> mobileBodyPaddingMap = {
  "left": 25.0,
  "right": 25.0,
  "top": 0.0,
  "bottom": 0.0
};
const Map<String, double> tabletBodyPaddingMap = {
  "left": 45.0,
  "right": 45.0,
  "top": 0.0,
  "bottom": 20.0
};
const Map<String, double> desktopBodyPaddingMap = {
  "left": 60.0,
  "right": 60.0,
  "top": 0.0,
  "bottom": 0.0
};

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
  "Address": {"text": "TR - ANKARA", "icon": FontAwesomeIcons.house},
  "Phone Number": {
    "text": "+90 507 329 0916",
    "icon": FontAwesomeIcons.mobileScreenButton
  },
  "Email Address": {
    "text": "cantalay0@gmail.com",
    "icon": FontAwesomeIcons.envelope
  },
  "Linkedin": {"text": "@cantalay", "icon": FontAwesomeIcons.linkedin},
  "Github": {"text": "@cantalay", "icon": FontAwesomeIcons.github},
  "Gitlab": {"text": "@cantalay", "icon": FontAwesomeIcons.gitlab},
  "gender": {"text": "Male", "icon": FontAwesomeIcons.mars},
};

const Map<String, String> userInfo = {
  "name": "Ali Can",
  "surname": "Talay",
  "title": "FULLSTACK SOFTWARE developer"
};
String profileDescription = Faker().lorem.sentences(5).join().toString();
List userExperience = [
  {
    "name": "Comodo Cybersecurity",
    "position": "Fullstack Software Developer",
    "startYear": 2020,
    "endYear": "Current",
    "detail": Faker().lorem.sentences(2).join().toString(),
    "knowledges": [
      "AWS Lambda Functions and Serverless Architecture",
      "Google Cloud Platform, Cloud Build, Google Storage",
      "VueJS and AngularJS",
      "Python3 and Django",
      "NodeJS"
    ]
  },
  {
    "name": "Evolamp Lighting",
    "position": "Fullstack Software Developer",
    "startYear": 2019,
    "endYear": 2020,
    "detail": Faker().lorem.sentences(2).join().toString(),
    "knowledges": [
      "ESP32, ESP8266, Nordic Semiconductor NRF52XX Microcontroller Programming",
      "Production Management",
      "Building BLE Mesh Network for Lighting"
    ]
  },
  {
    "name": "Turkish Standards Institution",
    "position": "Development Intern",
    "startYear": 2018,
    "endYear": 2018,
    "detail": Faker().lorem.sentences(2).join().toString(),
    "knowledges": ["Python, Numpy and Scipy for Statistical Analysis"]
  },
  {
    "name": "Turkish Standards Institution",
    "position": "Production Management Intern",
    "startYear": 2018,
    "endYear": 2018,
    "detail": Faker().lorem.sentences(2).join().toString(),
    "knowledges": ["Building a Production Line and Analysing"]
  }
];

var userDetailMap = [
  {
    "education": [
      {
        "subtitle": "Hacettepe University",
        "title": "Industrial Engineering",
        "detail": ["2013 - 2019"]
      },
      {
        "subtitle": "Akdeniz University",
        "title": "Control and Automation",
        "detail": ["2009 - 2011"]
      }
    ],
  },
  {
    "skills": [
      {
        "title": "professional",
        "subtitle": "Cloud Knowledge",
        "detail": ["AWS Lambda Functions",
          "AWS S3",
          "AWS CloudFormation",
          "AWS CloudFront",
          "AWS API Gateway",
          "Google Cloud Platform",
          "Google Cloud Storage",
          "Google Cloud Build"]
      },{
        "title": "technical",
        "subtitle": "Development Knowledge",
        "detail": ["Python and Web Frameworks","Java Spring Boot",
          "NodeJS","Flutter Mobile and Web Development",
          "VueJS"]
      },
    ],
  },
  {
    "awards": [
      {
        "title": "Second Best Graduation Project Awards",
        "subtitle": "Hacettepe University Industrial Engineering Department",
        "detail": ["2019"]
      }
    ]
  }
];

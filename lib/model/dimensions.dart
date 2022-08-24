import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//// set the common dimensions
const String pageTitle = "Can Talay";
const double mobileWidth = 900.0;
const double tabletWidth = 1300.0;
const double maxHeaderSize = 1000.0;
const double maxMobileHeaderSize = 650.0;
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
  "Address": {"text": "TR - ANKARA", "icon": FontAwesomeIcons.house,
    'uri':{'https': 'goo.gl/maps/DyxELEpRQkyEmNvz8'}
  },
  "Phone Number": {
    "text": "+90 507 329 0916",
    "icon": FontAwesomeIcons.mobileScreenButton,
'uri':{'tel': "+905073290916"}
  },
  "Email Address": {
    "text": "cantalay0@gmail.com",
    "icon": FontAwesomeIcons.envelope,
'uri':{'email':'cantalay0@gmail.com'}
  },
  "Linkedin": {"text": "@cantalay", "icon": FontAwesomeIcons.linkedin, 'uri':{'https':'www.linkedin.com/in/can-talay-45110659/'}},
  "Github": {"text": "@cantalay", "icon": FontAwesomeIcons.github, 'uri':{'https':'www.github.com/cantalay'}},
  "Gitlab": {"text": "@cantalay", "icon": FontAwesomeIcons.gitlab},
  "Gender": {"text": "Male", "icon": FontAwesomeIcons.mars},
};

const Map<String, String> userInfo = {
  "name": "Ali Can",
  "surname": "Talay",
  "title": "FULLSTACK SOFTWARE developer"
};
String profileDescription = "The passion for software development started in 2008 when he was still a high school student. "
    "It started with JavaScript (mostly by playing video games) and he continue to do this passion in professional business life. "
    "Dynamic and creative software developer with over 2 years of experience in producing robust code for high-volume companies.";
List userExperience = [
  {
    "name": "Comodo Cybersecurity",
    "position": "Fullstack Software Developer",
    "startYear": 2020,
    "endYear": "Current",
    "detail": "Experience in cybersecurity projects like iTarian, Socaap, Dragon Platform and Enterprise Platform as a fullstack software engineer. ",
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
    "detail": "Experience in  embedded, microprocessors development.",
    "knowledges": [
      "Developed ESP32, ESP8266, Nordic Semiconductor NRF52XX Microcontroller",
      "Production Management",
      "Developed BLE Mesh Network for Lighting"
    ]
  },
  {
    "name": "Turkish Standards Institution",
    "position": "Development Intern",
    "startYear": 2018,
    "endYear": 2018,
    "detail": "Experience in simulation and statistical analysis of furniture testing machines.",
    "knowledges": ["Python, Numpy and Scipy for Statistical Analysis", "Decreased furniture testing machines with time study."]
  },
  {
    "name": "Turkish Standards Institution",
    "position": "Production Management Intern",
    "startYear": 2018,
    "endYear": 2018,
    "detail": "Experience in simulation and statistical analysis of production line.",
    "knowledges": ["Python, Numpy and Scipy for Statistical Analysis","Decreased troduction line productivity with time study."]
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

import 'package:flutter/material.dart';
import 'package:uresume/model/dimensions.dart';

import 'PanelTexts.dart';

class ProfileSkills extends StatelessWidget {
  const ProfileSkills({
    Key? key,
    required this.paddingMap,
  }) : super(key: key);

  final Map<String, double> paddingMap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingMap['top']!,
          right: paddingMap['right']!,
          left: paddingMap['left']!,
          bottom: paddingMap['bottom']!),
      child: ListView(
        shrinkWrap: true,
        controller: ScrollController(),
        children: [
          profileItem(),
          largePanelSeperator(),
          panelTitle("experience".toUpperCase()),
          const SizedBox(
            height: 20.0,
          ),
          largePanelElementList(),
        ],
      ),
    );
  }
}

Column profileItem() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      panelTitle("profile".toUpperCase()),
      const SizedBox(
        height: 20.0,
      ),
      panelText(profileDescription)
    ],
  );
}

Column largePanelSeperator() {
  return Column(
    children: const [
      SizedBox(height: 40.0),
      Divider(
        endIndent: 150.0,
      ),
      SizedBox(
        height: 40.0,
      )
    ],
  );
}

ListView largePanelElementList() {
  return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 30.0),
      itemCount: userExperience.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            panelSubTitle(userExperience[index]['name']),
            const SizedBox(
              height: 5.0,
            ),
            Row(children: [
              panelSubTitle(userExperience[index]['position']),
              const SizedBox(
                width: 5.0,
              ),
              MediaQuery.of(context).size.width > 900
                  ? panelSubTitle(
                      "${userExperience[index]['startYear']} - ${userExperience[index]['endYear']}")
                  : const SizedBox()
            ]),
            const SizedBox(
              height: 5.0,
            ),
            MediaQuery.of(context).size.width < 900
                ? panelSubTitle(
                    "${userExperience[index]['startYear']} - ${userExperience[index]['endYear']}")
                : const SizedBox(),
            const SizedBox(
              height: 8.0,
            ),
            panelText(userExperience[index]['detail']),
            const SizedBox(
              height: 8.0,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: userExperience[index]['knowledges'].length,
              shrinkWrap: true,
              itemBuilder: (context, innerIndex) {
                return panelText(
                    " • ${userExperience[index]['knowledges'][innerIndex]}");
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 2.0,
              ),
            ),
          ],
        );
      });
}

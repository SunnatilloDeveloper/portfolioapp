import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilova7/screens/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'area_info_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfo(
                    title: "Province",
                    text: "Samarkand",
                  ),
                  AreaInfo(
                    title: "District",
                    text: "Narpay",
                  ),
                  AreaInfo(
                    title: "Age",
                    text: "15",
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF2424E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                            onPressed: () async {
                              final url =
                                  "https://github.com/SunnatilloDeveloper";
                              ilova(url: url, inApp: true);
                            },
                            icon: SvgPicture.asset(
                                "lib/assets/icons/github.svg")),
                                IconButton(
                            onPressed: () async {
                              final url =
                                  "https://twitter.com/Sunnatdev";
                              ilova(url: url, inApp: true);
                            },
                            icon: SvgPicture.asset(
                                "lib/assets/icons/twitter.svg")),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

Future ilova({
  required String url,
  bool inApp = false,
}) async {
  if (await canLaunch(url)) {
    await launch(url,
        forceSafariVC: inApp, forceWebView: inApp, enableJavaScript: true);
  }
}

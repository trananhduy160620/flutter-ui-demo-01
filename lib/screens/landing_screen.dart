// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stateful_widget/customs/border_box.dart';
import 'package:flutter_stateful_widget/customs/option_button.dart';
import 'package:flutter_stateful_widget/screens/detail_screen.dart';
import 'package:flutter_stateful_widget/utils/contants.dart';
import 'package:flutter_stateful_widget/utils/custom_functions.dart';
import 'package:flutter_stateful_widget/utils/sample_data.dart';
import 'package:flutter_stateful_widget/utils/widget_function.dart';

// ignore: use_key_in_widget_constructors
class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double padding = 25;
    final ThemeData themeData = Theme.of(context);
    const edgeInsets = EdgeInsets.symmetric(horizontal: padding);

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: Theme.of(context).primaryColor),
        child: SafeArea(
          child: Container(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addVerticalSpace(padding),
                      Padding(
                        padding: edgeInsets,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            BorderBox(
                              width: 50,
                              height: 50,
                              child: Icon(Icons.menu, color: COLOR_BLACK),
                            ),
                            BorderBox(
                                width: 50,
                                height: 50,
                                child: Icon(Icons.settings, color: COLOR_BLACK))
                          ],
                        ),
                      ),
                      addVerticalSpace(padding),
                      Padding(
                        padding: edgeInsets,
                        child:
                            Text('City', style: themeData.textTheme.bodyText2),
                      ),
                      addVerticalSpace(10),
                      Padding(
                        padding: edgeInsets,
                        child: Text('San Francisco',
                            style: themeData.textTheme.headline1),
                      ),
                      Padding(
                        padding: edgeInsets,
                        child: Divider(
                          height: padding,
                          color: COLOR_GREY,
                        ),
                      ),
                      addVerticalSpace(10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            ChoiceOptionWidget(text: '<\$220,000'),
                            ChoiceOptionWidget(text: 'For sale'),
                            ChoiceOptionWidget(text: '3 - 4 beds'),
                            ChoiceOptionWidget(text: '>1000 sqft')
                          ],
                        ),
                      ),
                      addVerticalSpace(10),
                      Expanded(
                        child: Padding(
                          padding: edgeInsets,
                          child: ListView.builder(
                            itemCount: RE_DATA.length,
                            itemBuilder: (context, index) {
                              //return HomeItemWidget(itemData: RE_DATA[index]);
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailScreen(index: index)));
                                },
                                child: HomeItemWidget(itemData: RE_DATA[index]),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      bottom: 15,
                      width: size.width,
                      child: Center(
                        child: OptionButton(
                          icon: Icons.map_rounded,
                          text: 'Map View',
                          width: size.width * 0.35,
                        ),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}

class ChoiceOptionWidget extends StatelessWidget {
  final String text;
  const ChoiceOptionWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: COLOR_GREY),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 25),
      child: Text(text, style: themeData.textTheme.bodyText1),
    );
  }
}

class HomeItemWidget extends StatelessWidget {
  final dynamic itemData;
  const HomeItemWidget({Key? key, @required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(itemData['image'])),
            Positioned(
                top: 15,
                right: 15,
                child: BorderBox(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.favorite_border, color: COLOR_BLACK))),
          ],
        ),
        addVerticalSpace(15),
        Row(
          children: [
            Text("${formatConcurrency(itemData["amount"])}",
                style: themeData.textTheme.headline1),
            addHorizontalSpace(10),
            Text("${itemData["address"]}",
                style: themeData.textTheme.bodyText2),
          ],
        ),
        addVerticalSpace(10),
        Text(
            "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData['area']} sqft",
            style: themeData.textTheme.headline5),
      ]),
    );
  }
}

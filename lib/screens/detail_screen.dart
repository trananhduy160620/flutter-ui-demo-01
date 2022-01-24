// ignore_for_file: prefer_const_literals_to_create_immutables, missing_required_param, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stateful_widget/customs/border_box.dart';
import 'package:flutter_stateful_widget/customs/option_button.dart';
import 'package:flutter_stateful_widget/utils/contants.dart';
import 'package:flutter_stateful_widget/utils/custom_functions.dart';
import 'package:flutter_stateful_widget/utils/sample_data.dart';
import 'package:flutter_stateful_widget/utils/widget_function.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final itemDetail = RE_DATA.elementAt(index);
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
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(itemDetail['image'].toString()),
                            Positioned(
                              top: 25,
                              left: 25,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: BorderBox(
                                      width: 50,
                                      height: 50,
                                      child: Icon(Icons.arrow_back,
                                          color: COLOR_BLACK))),
                            ),
                            Positioned(
                              top: 25,
                              right: 25,
                              child: Icon(Icons.favorite_border,
                                  color: COLOR_BLACK),
                            )
                          ],
                        ),
                        addVerticalSpace(15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      formatConcurrency(num.parse(
                                          itemDetail["amount"].toString())),
                                      style: themeData.textTheme.headline1),
                                  Text(itemDetail["address"].toString(),
                                      style: themeData.textTheme.bodyText1)
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: BorderBox(
                                  child: Center(
                                      child: Text('20 Hours ago',
                                          style:
                                              themeData.textTheme.bodyText1))),
                            )
                          ],
                        ),
                        addVerticalSpace(15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text('House Information',
                              style: themeData.textTheme.headline3),
                        ),
                        addVerticalSpace(15),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ChoiceWidget(
                                  content: itemDetail["area"].toString(),
                                  title: 'Square Foot'),
                              ChoiceWidget(
                                  content: itemDetail["bedrooms"].toString(),
                                  title: 'Bedrooms'),
                              ChoiceWidget(
                                  content: itemDetail["bathrooms"].toString(),
                                  title: 'Bathrooms'),
                              ChoiceWidget(
                                  content: itemDetail["garage"].toString(),
                                  title: 'Garage')
                            ],
                          ),
                        ),
                        addVerticalSpace(15),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Center(
                              child: RichText(
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.ltr,
                                  text: TextSpan(
                                      text:
                                          itemDetail["description"].toString(),
                                      style: TextStyle(color: Colors.black))),
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      width: size.width,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OptionButton(
                            icon: Icons.message,
                            text: 'Message',
                            width: size.width * 0.35,
                          ),
                          addHorizontalSpace(10),
                          OptionButton(
                            icon: Icons.phone,
                            text: 'Call',
                            width: size.width * 0.35,
                          ),
                        ],
                      )))
                ],
              )),
        ),
      ),
    );
  }
}

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({Key? key, required this.title, required this.content})
      : super(key: key);
  final String title, content;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
          BorderBox(width: 80, height: 80, child: Text(content)),
          Text(title)
        ]),
        margin: const EdgeInsets.only(left: 25));
  }
}

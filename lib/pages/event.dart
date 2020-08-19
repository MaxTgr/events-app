import 'dart:ui';

import 'package:events_app/components/selectImg.dart';
import 'package:events_app/entities/event.dart';
import 'package:events_app/utils/colors.dart';
import 'package:events_app/utils/design.dart';
import 'package:flutter/material.dart';

import '../repository.dart';

class EventPage extends StatefulWidget {
  EventPage() : super();

  @override
  EventState createState() => EventState();
}

class EventState extends State<EventPage> {
  var repo = new Repository();
  Event _event = new Event();

  EventState() {
    repo.events.listen((value) {
      setState(() {
        _event = value[0];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final header = Stack(
      children: <Widget>[
        Container(
          height: selectImgFullHeight,
          color: backgroundColor,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32)),
            child: SelectFullImg(),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: EdgeInsets.all(8),
            child: FloatingActionButton(
              onPressed: () {},
              child: Image.asset('assets/images/undraw_female_avatar.png'),
              shape: borderRadius,
              mini: true,
            ),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          header,
          Expanded(
            child: ListView(
              //scrollDirection: Axis.vertical,
              //shrinkWrap: true,
              //padding: const EdgeInsets.all(8),
              children: <Widget>[
                TitleText(
                  _event.name != null ? _event.name : '',
                  color: secondaryColor,
                  align: TextAlign.center,
                ),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
          ),
          /* Container(
            transform: Matrix4.translationValues(0.0, -16.0, 0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16), topLeft: Radius.circular(16)),
              color: primaryColor,
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 0, 0),
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    TitleText(
                      _event.name != null ? _event.name : '',
                      color: secondaryColor,
                      align: TextAlign.center,
                    ),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                  ],
                ),
              ),
            )),
          ),*/
        ],
      ),
    );
  }
}

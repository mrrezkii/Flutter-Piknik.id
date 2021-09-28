import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic/model/place_model.dart';
import 'package:flutter_basic/model/user_model.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_basic/ui/widgets/detail_place_card.dart';

import 'detail_page.dart';

class ShowMorePage extends StatelessWidget {
  const ShowMorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7F7),
      appBar: AppBar(
        backgroundColor: primaryColor,
        brightness: Brightness.dark,
        title: Text("Populer di Bandung"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/images/banner.png",
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0, top: 5, bottom: 15),
                child: Text('Pilihan populer dengan standar protokol kesehatan',
                    style: blueBoldTextFont.copyWith(fontSize: 13)),
              ),
              Column(children: [
                Wrap(
                  children: mockPlace
                      .map((e) => DetailPlaceCard(e, () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPage(mockUser, e);
                            }));
                          }))
                      .toList(),
                )
              ]),
              SizedBox(
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}

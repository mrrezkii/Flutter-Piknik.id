import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic/model/place_model.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_basic/ui/widgets/detail_place_card.dart';

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
          onPressed: () {},
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
                    style: blueBoldTextFont.copyWith(fontSize: 16)),
              ),
              Column(
                children: mockPlace.map((e) => DetailPlaceCard(e)).toList(),
              ),
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

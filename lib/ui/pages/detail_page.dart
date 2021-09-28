import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_basic/model/place_model.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
  final PlaceModel place;

  DetailPage(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7F7),
      appBar: AppBar(
        backgroundColor: primaryColor,
        brightness: Brightness.dark,
        title: Text(place.name),
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
              Image.network(
                place.url,
                width: double.infinity,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/vector/ic_location.svg",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      place.location,
                      style:
                          blackTextFont.copyWith(fontSize: 9, color: greyColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  place.name,
                  style: blueSemiTextFont.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/vector/ic_guard.svg'),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'CHSE Certified',
                              style: blackMediumTextFont.copyWith(
                                  fontSize: 9, color: Color(0XFF2F2E41)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 3),
                          child: Text(
                            'Sertifikasi CHSE dari Kemenparekraf karena telah \nmemberikan jaminan terhadap protokol kebersihan',
                            style: blackTextFont.copyWith(
                                fontSize: 9, color: Color(0xFFA1A2AA)),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Info Lanjut',
                      style: blueMediumTextFont.copyWith(fontSize: 9),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

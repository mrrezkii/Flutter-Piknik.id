import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/model/place_model.dart';
import 'package:flutter_basic/model/user_model.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_basic/ui/pages/detail_page.dart';
import 'package:flutter_basic/ui/pages/show_more_page.dart';
import 'package:flutter_basic/ui/widgets/menu_icon.dart';
import 'package:flutter_basic/ui/widgets/place_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final UserModel user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 55, 24, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, ${user.name}',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: greyColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Bandung, West Java',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: blackColor)),
                        ],
                      )
                    ],
                  ),
                  Text(
                    'Chat',
                    style: blueSemiTextFont,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/iklan.png"),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuIcon('Bumper', "assets/vector/ic_bumper.svg"),
                  MenuIcon('Open Trip', "assets/vector/ic_open_trip.svg"),
                  MenuIcon('Nimbrung', "assets/vector/ic_nimbrung.svg"),
                  MenuIcon('Promo', "assets/vector/ic_promo.svg"),
                ],
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Populer di ',
                        style: blueSemiTextFont.copyWith(
                            fontSize: 14, color: blackColor),
                      ),
                      Text(
                        'Bandung ',
                        style: blueSemiTextFont.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ShowMorePage();
                      }));
                    },
                    child: Text(
                      'Lihat Semua',
                      style: blueMediumTextFont.copyWith(fontSize: 10),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                width: double.infinity,
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mockPlace
                          .map((e) => PlaceCard(e, () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DetailPage(mockUser, e);
                                }));
                              }))
                          .toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: accentColor),
                child: Text(
                  "Preview Tempat Wisata",
                  style:
                      blackTextFont.copyWith(fontSize: 12, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage();
                  }));
                },
              ),
              SizedBox(
                height: 55,
              )
            ],
          ),
        ),
      ),
    );
  }
}

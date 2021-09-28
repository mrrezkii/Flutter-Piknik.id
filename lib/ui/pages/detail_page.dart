import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic/model/place_model.dart';
import 'package:flutter_basic/model/user_model.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatefulWidget {
  final UserModel user;
  final PlaceModel place;

  DetailPage(this.user, this.place);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController placeNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7F7),
      appBar: AppBar(
        backgroundColor: primaryColor,
        brightness: Brightness.dark,
        title: Text(widget.place.name),
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
                widget.place.url,
                width: double.infinity,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 24, right: 24),
            padding: EdgeInsets.only(bottom: 40),
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
                      widget.place.location,
                      style:
                          blackTextFont.copyWith(fontSize: 9, color: greyColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  widget.place.name,
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
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Rating dan Review',
                  style: blackSemiTextFont.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          "assets/vector/ic_star.svg",
                          width: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${widget.place.rating}',
                          style: blueMediumTextFont.copyWith(fontSize: 13),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          (widget.place.price) > 4.5 ? "Sangat Bagus" : "Bagus",
                          style: blueTextFont.copyWith(fontSize: 9),
                        ),
                      ],
                    ),
                    Text(
                      'Lihat komentar',
                      style: blueMediumTextFont.copyWith(fontSize: 9),
                    )
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Konfirmasi Pembayaran',
                  style: blackSemiTextFont.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 7,
                ),
                TextField(
                  controller: nameController..text = widget.user.name,
                  decoration: InputDecoration(
                      hintText: "Nama",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                      hintStyle: blackTextFont.copyWith(
                          color: greyColor, fontSize: 14)),
                ),
                SizedBox(
                  height: 7,
                ),
                TextField(
                  controller: emailController..text = widget.user.email,
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                      hintStyle: blackTextFont.copyWith(
                          color: greyColor, fontSize: 14)),
                ),
                SizedBox(
                  height: 7,
                ),
                TextField(
                  controller: placeNameController..text = widget.place.name,
                  readOnly: true,
                  enabled: false,
                  decoration: InputDecoration(
                      hintText: "Nama Tempat",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                      hintStyle: blackTextFont.copyWith(
                          color: greyColor, fontSize: 14)),
                ),
                SizedBox(
                  height: 7,
                ),
                TextField(
                  controller: locationController..text = widget.place.location,
                  readOnly: true,
                  enabled: false,
                  decoration: InputDecoration(
                      hintText: "Lokasi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                      hintStyle: blackTextFont.copyWith(
                          color: greyColor, fontSize: 14)),
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rp${widget.place.price}',
                      style: blueSemiTextFont.copyWith(fontSize: 16),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: accentColor
                      ),
                      child: Text(
                        "Pesan Sekarang",
                        style: blackTextFont.copyWith(
                            fontSize: 12, color: Colors.white),
                      ),
                      onPressed: () {
                      },),
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

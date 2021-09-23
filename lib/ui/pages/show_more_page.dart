import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowMorePage extends StatelessWidget {
  const ShowMorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/images/banner.png",
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9.0),
              child: Text('Pilihan populer dengan standar protokol kesehatan',
                  style: blueTextFont.copyWith(fontSize: 12)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(18, 18, 18, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ClipRRect(
                      child: Image.asset("assets/images/wisata.png"),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/vector/ic_location.svg",
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Cibiru Wetan, Bandung',
                        style: blackTextFont.copyWith(
                            fontSize: 9, color: greyColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Batu Kuda Manglayang',
                    style: blueBoldTextFont.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/vector/ic_star.svg"),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "5.0 (dari 3 review)",
                            style: blackMediumTextFont.copyWith(
                                fontSize: 9, color: greyColor),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Mulai dari",
                            style: blackMediumTextFont.copyWith(fontSize: 12),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Rp150.000",
                            style: blueMediumTextFont.copyWith(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        child: Text("Pesan Sekarang"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

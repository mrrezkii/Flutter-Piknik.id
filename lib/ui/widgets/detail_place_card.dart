import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic/model/place_model.dart';
import 'package:flutter_basic/model/user_model.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_basic/ui/pages/detail_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPlaceCard extends StatelessWidget {
  late final PlaceModel place;
  late final Function onTap;

  DetailPlaceCard(this.place, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2.2,
        margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                child: Image.network(
                  place.url,
                  width: double.infinity,
                  height: 100,
                ),
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
                  place.location,
                  style: blackTextFont.copyWith(fontSize: 9, color: greyColor),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              place.name,
              style: blueBoldTextFont.copyWith(fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/vector/ic_star.svg",
                      width: 12,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "${place.rating} (dari 3 review)",
                      style: blackMediumTextFont.copyWith(
                          fontSize: 12, color: greyColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Mulai dari",
                      style: blackMediumTextFont.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${place.price}",
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
                  child: Text(
                    "Pesan",
                    style: blackTextFont.copyWith(
                        fontSize: 12, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage(mockUser, place);
                    }));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

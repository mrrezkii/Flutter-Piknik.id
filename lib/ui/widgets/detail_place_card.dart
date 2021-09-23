import 'package:flutter/material.dart';
import 'package:flutter_basic/model/place_model.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPlaceCard extends StatelessWidget {
  late final PlaceModel place;

  DetailPlaceCard(this.place);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 18, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              child: Image.network(place.url),
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
                    "${place.rating} (dari 3 review)",
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
                child: Text("Pesan Sekarang"),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

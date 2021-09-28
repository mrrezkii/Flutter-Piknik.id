import 'package:flutter/material.dart';
import 'package:flutter_basic/shared/theme.dart';

class CustomDialog extends StatelessWidget {
  final String name;
  final String email;
  final String birthday;
  final String gender;
  final String recommendation;

  CustomDialog(
      {required this.name,
      required this.email,
      required this.birthday,
      required this.gender,
      this.recommendation = ''});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.white,
      child: renderDialog(context),
    );
  }

  renderDialog(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Apa Anda yakin ?",
                  style: blackBoldTextFont.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Nama : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    name,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Email : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      email,
                      style: blackBoldTextFont.copyWith(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Tanggal Lahir : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    birthday,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Jenis kelamin : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    gender,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Pencarian : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    recommendation,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: accentColor),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Tidak",
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: primaryColor),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Iya",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

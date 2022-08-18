import 'package:project_flutter/models/country.dart';
import 'package:project_flutter/theme.dart';
import 'package:flutter/material.dart';


class CountryCard extends StatelessWidget {
  final Country country;

  CountryCard(this.country);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffFfffff),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  country.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                country.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              country.name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

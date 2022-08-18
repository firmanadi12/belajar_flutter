import 'package:flutter/material.dart';
import 'package:project_flutter/theme.dart';

import '../models/destination.dart';
import '../pages/detail_page.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;
  DestinationCard(this.destination);

  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    destination.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_star.png',
                              width: 15,
                              height: 15,
                            ),
                            Text(
                              '${destination.rating}/5',
                              style: whiteTextStyle.copyWith(
                                fontSize: 10,
                              ),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${destination.name}',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                  ),
              ),
              const SizedBox(
                height: 2,
              ),
             Text.rich(
                TextSpan(
                  text: '\$${destination.price}',
                  style: orangeTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: ' / Person',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )
                  ]
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '${destination.city}, ${destination.country}', 
                style: greyTextStyle),
            ],
          )
        ],
      ),
    );
  }
}

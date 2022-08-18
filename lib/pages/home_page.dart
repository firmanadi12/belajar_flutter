import 'package:flutter/material.dart';
import 'package:project_flutter/theme.dart';
import 'package:project_flutter/models/country.dart';
import 'package:project_flutter/widget/bottom_navbar_item.dart';
import 'package:project_flutter/widget/country_card.dart';
import 'package:project_flutter/widget/destinantion_card.dart';
import '../models/destination.dart';

//home page

class HomePage extends StatelessWidget {
  @override
  final String nama;

  HomePage({required this.nama});
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Hello $nama',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  height: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Go Explore Paradise',
                style: blackTextStyleThin.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // POLULAR COUNTRIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Country',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CountryCard(
                    Country(
                      id: 1,
                      name: 'Japan',
                      imageUrl: 'assets/country1.png',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CountryCard(
                    Country(
                      id: 2,
                      name: 'Indonesia',
                      imageUrl: 'assets/country2.png',
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CountryCard(
                    Country(
                      id: 3,
                      name: 'Netherland',
                      imageUrl: 'assets/country3.png',
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            // RECOMMENDED DESTINATIONS
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Destinations',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  DestinationCard(
                    Destination(
                      id: 1,
                      name: 'Paradise in Papua',
                      imageUrl: 'assets/destination1.png',
                      price: 400,
                      city: 'Raja Ampat',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DestinationCard(
                    Destination(
                      id: 2,
                      name: 'Bromo Mountain',
                      imageUrl: 'assets/destination2.png',
                      price: 150,
                      city: 'Pasuruan',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DestinationCard(
                    Destination(
                      id: 1,
                      name: 'Beautiful Nusa Penida',
                      imageUrl: 'assets/destination3.png',
                      price: 400,
                      city: 'Bali',
                      country: 'Indonesia',
                      rating: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DestinationCard(
                    Destination(
                      id: 1,
                      name: 'Beautiful Nusa Penida',
                      imageUrl: 'assets/destination3.png',
                      price: 400,
                      city: 'Bali',
                      country: 'Indonesia',
                      rating: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DestinationCard(
                    Destination(
                      id: 1,
                      name: 'Beautiful Nusa Penida',
                      imageUrl: 'assets/destination3.png',
                      price: 400,
                      city: 'Bali',
                      country: 'Indonesia',
                      rating: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (edge * 2),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffffffff), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_profil.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

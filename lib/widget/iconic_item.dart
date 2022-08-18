import 'package:flutter/material.dart';
import 'package:project_flutter/theme.dart';

class IconicItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String type;

  IconicItem({
    required this.name,
    required this.imageUrl,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
              text: '$type:',
              style: orangeTextStyle.copyWith(
                fontSize: 12,
              ),
              children: [
                TextSpan(
                  text: ' $name',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ]),
        ),
      ],
    );
  }
}

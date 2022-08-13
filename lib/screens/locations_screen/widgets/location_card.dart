import 'package:accelerator_simplecode/model/location_model.dart';
import 'package:accelerator_simplecode/screens/locations_screen/location_details_screen.dart';
import 'package:flutter/material.dart';

import 'location_card_text.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
    Key? key,
    required this.location,
  }) : super(key: key);

  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationDetailsScreen(
              location: location,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Expanded(
              child: LocationCardText(location: location),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    );
  }
}

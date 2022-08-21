import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/locations/locations_bloc.dart';
import '../../../generated/l10n.dart';
import '../../../model/location_model.dart';
import 'location_card.dart';

class LocationsBody extends StatelessWidget {
  const LocationsBody({
    Key? key,
    required this.data,
    this.query = '',
  }) : super(key: key);

  final List<LocationModel> data;
  final String query;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              S.of(context).locationsListIsEmpty,
            ),
          ),
        ],
      );
    } else {
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<LocationsBloc>(context).add(
            const LocationsFetch(),
          );
        },
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollNotification) {
              if (notification.metrics.extentAfter == 0) {
                BlocProvider.of<LocationsBloc>(context).add(
                  query.isEmpty
                      ? const LocationsNextPage()
                      : LocationsFilterNextPage(name: query),
                );
              }
            }
            return false;
          },
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            itemCount: data.length,
            itemBuilder: (context, i) => LocationCard(location: data[i]),
            separatorBuilder: (context, _) => const SizedBox(height: 10),
          ),
        ),
      );
    }
  }
}

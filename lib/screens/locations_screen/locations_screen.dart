import 'package:accelerator_simplecode/bloc/locations/locations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:accelerator_simplecode/constants/app_text_styles.dart';

import '../../generated/l10n.dart';
import '../../widgets/nav_bar/nav_bar.dart';
import '../characters_screen/widgets/search_bar.dart';
import 'widgets/location_card.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const NavBar(current: 1),
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              SearchBar(
                title: S.of(context).locationsSearch,
                onChanged: (val) {
                  BlocProvider.of<LocationsBloc>(context)
                      .add(LocationsFilterByName(name: val));
                },
              ),
              const SizedBox(height: 20),
              BlocBuilder<LocationsBloc, LocationsState>(
                builder: (context, state) {
                  var locationsTotal = 0;
                  if (state is LocationsData) {
                    locationsTotal = state.data.length;
                  }
                  return Row(
                    children: [
                      Text(
                        '${S.of(context).numberOfLocations.toUpperCase()}: $locationsTotal',
                        style: AppTextStyles.s10w500,
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 10),
              Expanded(
                child: BlocBuilder<LocationsBloc, LocationsState>(
                  builder: ((context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [CircularProgressIndicator()],
                        );
                      },
                      data: (data) {
                        if (data.isEmpty) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  S.of(context).charactersListIsEmpty,
                                ),
                              ),
                            ],
                          );
                        } else {
                          return ListView.separated(
                            itemCount: data.length,
                            itemBuilder: (context, i) =>
                                LocationCard(location: data[i]),
                            separatorBuilder: (context, i) => const Divider(),
                          );
                        }
                      },
                      error: (error) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(child: Text(error)),
                          ],
                        );
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

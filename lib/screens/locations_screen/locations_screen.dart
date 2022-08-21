import 'package:accelerator_simplecode/bloc/locations/locations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:accelerator_simplecode/constants/app_text_styles.dart';

import '../../generated/l10n.dart';
import '../../widgets/app_alert_dialog.dart';
import '../../widgets/nav_bar/nav_bar.dart';
import '../characters_screen/widgets/search_bar.dart';
import 'widgets/body_locations_screen.dart';

class LocationsScreen extends StatefulWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  State<LocationsScreen> createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  String _query = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const NavBar(current: 1),
        backgroundColor: AppColors.background,
        body: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  children: [
                    SearchBar(
                      title: S.of(context).locationsSearch,
                      onChanged: (val) {
                        setState(() => _query = val);
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
                        buildWhen: (prevState, nextState) {
                          if (prevState.runtimeType != nextState.runtimeType) {
                            return true;
                          } else {
                            final prevDataLength = prevState.mapOrNull(
                              data: (state) => state.data.length,
                            );
                            final nextDataLength = nextState.mapOrNull(
                              data: (state) => state.data.length,
                            );
                            return prevDataLength != nextDataLength;
                          }
                        },
                        builder: ((context, state) {
                          return state.when(
                            initial: () => const SizedBox.shrink(),
                            loading: () {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [CircularProgressIndicator()],
                              );
                            },
                            data: (data, isLoading, errorMessage) =>
                                LocationsBody(data: data, query: _query),
                            error: (error) => ErrorWidget(error),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocConsumer<LocationsBloc, LocationsState>(
              builder: (context, state) {
                final isLoading = state.maybeMap(
                  data: (state) => state.isLoading,
                  orElse: () => false,
                );
                return Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: isLoading
                      ? const LinearProgressIndicator()
                      : const SizedBox.shrink(),
                );
              },
              listener: (context, state) {
                state.mapOrNull(
                  data: (state) {
                    if (state.errorMessage != null) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AppAlertDialog(
                            title: S.of(context).error,
                            content: state.errorMessage!,
                          );
                        },
                      );
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

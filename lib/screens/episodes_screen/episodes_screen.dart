import 'package:accelerator_simplecode/screens/episodes_screen/widgets/body_episodes_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:accelerator_simplecode/constants/app_text_styles.dart';

import '../../bloc/episodes/episodes_bloc.dart';
import '../../generated/l10n.dart';
import '../../widgets/nav_bar/nav_bar.dart';
import '../../widgets/app_alert_dialog.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).episodes,
            style: AppTextStyles.s20w500,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.background,
        ),
        bottomNavigationBar: const NavBar(current: 2),
        backgroundColor: AppColors.background,
        body: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<EpisodesBloc, EpisodesState>(
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
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          data: (data, isLoading, errorMessage) =>
                              Body(data: data),
                          error: (error) => ErrorWidget(error),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            BlocConsumer<EpisodesBloc, EpisodesState>(
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

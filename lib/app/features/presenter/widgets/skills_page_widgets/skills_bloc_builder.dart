import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../blocs/bloc.dart';
import '../widgets.dart';

Widget skillsBlocBuilder({
  required SkillsBloc bloc,
  required bool isWeb,
}) {
  return BlocBuilder<SkillsBloc, SkillsState>(
      bloc: bloc,
      builder: (context, state) {
        final skillsList = state.skills ?? [];

        switch (bloc.loadingStatus) {
          case StatusLoading.loading:
            return CircularProgress();

          case StatusLoading.complete:
          default:
            return isWeb == true
                ? skillsListWeb(context: context, skillsList: skillsList)
                : skillsListMobile(context: context, skillsList: skillsList);
        }
      });
}

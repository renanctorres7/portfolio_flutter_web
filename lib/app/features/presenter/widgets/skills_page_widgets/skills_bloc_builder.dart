import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../blocs/bloc.dart';
import '../widgets.dart';

class SkillsBlocBuilder extends StatelessWidget {
  const SkillsBlocBuilder({Key? key, required this.bloc, required this.isWeb})
      : super(key: key);

  final SkillsBloc bloc;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
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
                  ? SkillsListWeb(skillsList: skillsList)
                  : SkillsListMobile(skillsList: skillsList);
          }
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context.dart';

import '../../../../core/configs/configs.dart';
import '../../blocs/bloc.dart';
import '../widgets.dart';
import 'projects_pageview_mobile.dart';

class ProjectsBlocBuilder extends StatelessWidget {
  const ProjectsBlocBuilder(
      {Key? key,
      required this.bloc,
      required this.isWeb,
      required this.pageController})
      : super(key: key);

  final ProjectsBloc bloc;
  final bool isWeb;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.screenSize.width,
        height: context.screenSize.height,
        child: BlocBuilder<ProjectsBloc, ProjectsState>(
            bloc: bloc,
            builder: (context, state) {
              final projectsList = state.projects ?? [];
              switch (bloc.loadingStatus) {
                case StatusLoading.loading:
                  return const CircularProgress();
                case StatusLoading.complete:
                default:
                  return isWeb == true
                      ? ProjectsPageViewWeb(
                          pageController: pageController,
                          projectsList: projectsList)
                      : ProjectsPageViewMobile(
                          pageController: pageController,
                          projectsList: projectsList);
              }
            }));
  }
}

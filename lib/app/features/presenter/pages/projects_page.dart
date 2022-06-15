import 'package:flutter/material.dart';
import 'package:portfolio/app/features/presenter/widgets/custom_layout/custom_layout.dart';

import '../../../core/utils/utils.dart';
import '../blocs/bloc.dart';

import '../widgets/projects_page_widgets/projects.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  late ProjectsBloc bloc;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    bloc = ProjectsBloc(s1());
    bloc.add(LoadProjectsEvents());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        color: Colors.white,
        webWidget: ProjectsBlocBuilder(
            key: const ValueKey('ProjectsBlocBuilder'),
            bloc: bloc,
            isWeb: true,
            pageController: pageController),
        mobileWidget: ProjectsBlocBuilder(
            key: const ValueKey('ProjectsBlocBuilder1'),
            bloc: bloc,
            isWeb: false,
            pageController: pageController));
  }
}

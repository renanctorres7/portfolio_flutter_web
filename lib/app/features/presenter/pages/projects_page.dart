import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/core/constants/colors.dart';
import 'package:portfolio/app/core/utils/dependency_injection.dart';
import 'package:portfolio/app/features/presenter/blocs/projects/projects_bloc.dart';
import 'package:portfolio/app/features/presenter/blocs/projects/projects_events.dart';
import 'package:portfolio/app/features/presenter/blocs/projects/projects_state.dart';

import '../../../core/constants/status.dart';
import '../../../core/constants/values.dart';
import '../../../core/utils/utils.dart';
import '../../infra/models/projects_model.dart';
import '../widgets/carousel_widget/mobile/carousel_mobile.dart';
import '../widgets/carousel_widget/web/carousel_web.dart';

class ProjectsPage extends StatefulWidget {
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
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: ColorsApp.white,
            height: _returnSizeValue(constraints, context, 0.7, 0.9),
            width: Utils.sizeQuery(context).width,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800, minWidth: 350),
            child: Container(
              color: ColorsApp.white,
              height: _returnSizeValue(constraints, context, 0.7, 0.9),
              width: Utils.sizeQuery(context).width,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                        width: Utils.sizeQuery(context).width,
                        height: Utils.sizeQuery(context).height * 0.8,
                        child: BlocBuilder<ProjectsBloc, ProjectsState>(
                            bloc: bloc,
                            builder: (context, state) {
                              final projectsList = state.projects ?? [];
                              switch (bloc.loadingStatus) {
                                case StatusLoading.loading:
                                  return Center(
                                    child: CircularProgressIndicator(
                                      color: ColorsApp.purple,
                                    ),
                                  );
                                case StatusLoading.complete:
                                default:
                                  if (constraints.maxWidth >
                                      DefaultValues.MOBILE_MAX) {
                                    return _webVersion(
                                        projectsList, pageController);
                                  } else {
                                    return _mobileVersion(
                                        projectsList, pageController);
                                  }
                              }
                            })),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}

Widget _webVersion(
    List<ProjectsModels>? projectsList, PageController pageController) {
  return PageView.builder(
    itemCount: projectsList?.length,
    controller: pageController,
    itemBuilder: (BuildContext context, int index) {
      return CarouselWeb(
        key: Key(index.toString()),
        index: index,
        lastIndex: projectsList != null ? projectsList.length - 1 : 0,
        pageCrtl: pageController,
        title: projectsList?[index].title ?? "",
        text: projectsList?[index].text ?? "",
        image: projectsList?[index].imageUrl ?? "",
        urlAndroid: projectsList?[index].androidUrl ?? "",
        urlIOS: projectsList?[index].iosUrl ?? "",
        urlWeb: projectsList?[index].webUrl ?? "",
      );
    },
  );
}

Widget _mobileVersion(
    List<ProjectsModels>? projectsList, PageController pageController) {
  return PageView.builder(
    itemCount: projectsList?.length,
    controller: pageController,
    itemBuilder: (BuildContext context, int index) {
      return CarouselMobile(
        key: Key(index.toString()),
        index: index,
        lastIndex: projectsList != null ? projectsList.length - 1 : 0,
        pageCrtl: pageController,
        title: projectsList?[index].title ?? "",
        text: projectsList?[index].text ?? "",
        image: projectsList?[index].imageUrl ?? "",
        urlAndroid: projectsList?[index].androidUrl ?? "",
        urlIOS: projectsList?[index].iosUrl ?? "",
        urlWeb: projectsList?[index].webUrl ?? "",
      );
    },
  );
}

double _returnSizeValue(
    BoxConstraints constraints, BuildContext context, double a, double b) {
  if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
    return Utils.sizeQuery(context).height * a;
  } else {
    return Utils.sizeQuery(context).height * b;
  }
}

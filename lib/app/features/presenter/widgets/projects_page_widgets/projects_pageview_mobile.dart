import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/core/extensions/context.dart';
import 'package:portfolio/app/features/presenter/widgets/projects_page_widgets/projects.dart';

import '../../../../core/constants/constants.dart';
import '../../../infra/models/projects_model.dart';

class ProjectsPageViewMobile extends StatelessWidget {
  const ProjectsPageViewMobile(
      {Key? key, required this.pageController, this.projectsList})
      : super(key: key);

  final PageController pageController;
  final List<ProjectsModels>? projectsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenSize.width,
      height: context.screenSize.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: 900,
              alignment: Alignment.centerLeft,
              child: const AutoSizeText(
                'Projetos',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 26,
                    color: ColorsApp.graphite,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          SizedBox(
            width: context.screenSize.width,
            height: context.screenSize.height * 0.8,
            child: PageView.builder(
              itemCount: projectsList?.length,
              controller: pageController,
              itemBuilder: (BuildContext context, int index) {
                return ProjectsItemMobile(
                  index: index,
                  lastIndex:
                      projectsList != null ? projectsList!.length - 1 : 0,
                  pageCrtl: pageController,
                  title: projectsList?[index].title ?? "",
                  text: projectsList?[index].text ?? "",
                  image: projectsList?[index].imageUrl ?? "",
                  urlAndroid: projectsList?[index].androidUrl ?? "",
                  urlIOS: projectsList?[index].iosUrl ?? "",
                  urlWeb: projectsList?[index].webUrl ?? "",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

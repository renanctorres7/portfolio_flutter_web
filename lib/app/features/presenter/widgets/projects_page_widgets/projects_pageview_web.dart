import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/core/extensions/context.dart';

import '../../../infra/models/projects_model.dart';
import '../widgets.dart';

class ProjectsPageViewWeb extends StatelessWidget {
  const ProjectsPageViewWeb(
      {Key? key, required this.pageController, this.projectsList})
      : super(key: key);

  final PageController pageController;
  final List<ProjectsModels>? projectsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitle(
          title: 'Projetos',
          textIsWhite: false,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            width: context.screenSize.width,
            height: context.screenSize.height * 0.8,
            child: PageView.builder(
              itemCount: projectsList?.length,
              controller: pageController,
              itemBuilder: (BuildContext context, int index) {
                return ProjectsItemWeb(
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
        ),
      ],
    );
  }
}

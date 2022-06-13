import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/status.dart';
import '../../../core/constants/values.dart';
import '../../../core/utils/dependency_injection.dart';
import '../../../core/utils/utils.dart';
import '../../infra/models/skills_model.dart';
import '../blocs/skills/skills_bloc.dart';
import '../blocs/skills/skills_events.dart';
import '../blocs/skills/skills_state.dart';
import '../widgets/skills_carousel/common/skills_general_carousel.dart';
import '../widgets/slide_percent/slide_percent.dart';

class SkillsPage extends StatefulWidget {
  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  late SkillsBloc bloc;
  PageController pageController = PageController();
  int index = 1;

  @override
  void initState() {
    super.initState();
    bloc = SkillsBloc(s1());
    bloc.add(LoadSkillsEvents());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool constraintWidth = constraints.maxWidth > DefaultValues.MOBILE_MAX;
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: ColorsApp.graphite,
            height: _returnSizeValueHeight(constraints, context, 0.7, 0.9),
            width: Utils.sizeQuery(context).width,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900, minWidth: 350),
            child: Container(
              color: ColorsApp.graphite,
              height: _returnSizeValueHeight(constraints, context, 0.7, 0.9),
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
                        height: _returnSizeValueHeight(
                            constraints, context, 0.8, 0.9),
                        child: PageView(
                          children: [
                            SkillsGeneralCarousel(
                              index: index,
                              pageController: pageController,
                            ),
                            BlocBuilder<SkillsBloc, SkillsState>(
                                bloc: bloc,
                                builder: (context, state) {
                                  final skillsList = state.skills ?? [];

                                  switch (bloc.loadingStatus) {
                                    case StatusLoading.loading:
                                      return Center(
                                        child: CircularProgressIndicator(
                                          color: ColorsApp.purple,
                                        ),
                                      );

                                    case StatusLoading.complete:
                                    default:
                                      return constraintWidth
                                          ? _webSkillsList(
                                              constraintWidth,
                                              constraints,
                                              context,
                                              pageController,
                                              skillsList)
                                          : _mobileSkillsList(
                                              constraintWidth,
                                              constraints,
                                              context,
                                              pageController,
                                              skillsList);
                                  }
                                }),
                          ],
                          controller: pageController,
                        )),
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

Widget _webSkillsList(
    bool constraintWidth,
    BoxConstraints constraints,
    BuildContext context,
    PageController? pageController,
    List<SkillsModel>? skillsList) {
  return Container(
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        padding: constraintWidth
            ? EdgeInsets.symmetric(horizontal: 50)
            : EdgeInsets.only(left: 20),
        alignment: constraintWidth ? Alignment.center : Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Habilidades',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 26,
                  color: ColorsApp.white,
                  fontWeight: FontWeight.w800),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: Utils.sizeQuery(context).height * 0.05),
              width: _returnSizeValueWidth(constraints, context, 0.68, 0.9),
              height: _returnSizeValueHeight(constraints, context, 0.45, 0.65),
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: skillsList?.length,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: SlidePercent(
                          width: Utils.sizeQuery(context).width * 0.68,
                          height: Utils.sizeQuery(context).height * 0.02,
                          text: skillsList?[index].title ?? "",
                          percent:
                              skillsList?[index].percent?.toDouble() ?? 50),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  constraintWidth ? EdgeInsets.only(top: 30) : EdgeInsets.zero,
              child: Container(
                height: 50,
                width: Utils.sizeQuery(context).width,
                alignment: Alignment.bottomRight,
                child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      pageController?.previousPage(
                          duration: Duration(seconds: 1), curve: Curves.easeIn);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 50,
                      color: ColorsApp.gray,
                    )),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _mobileSkillsList(
    bool constraintWidth,
    BoxConstraints constraints,
    BuildContext context,
    PageController? pageController,
    List<SkillsModel>? skillsList) {
  return Container(
    child: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        padding: constraintWidth
            ? EdgeInsets.symmetric(horizontal: 50)
            : EdgeInsets.only(left: 20),
        alignment: constraintWidth ? Alignment.center : Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Habilidades',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 24,
                  color: ColorsApp.white,
                  fontWeight: FontWeight.w800),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: Utils.sizeQuery(context).height * 0.05),
              width: _returnSizeValueWidth(constraints, context, 0.68, 0.9),
              height: _returnSizeValueHeight(constraints, context, 0.45, 0.65),
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: skillsList?.length,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: SlidePercent(
                          width: Utils.sizeQuery(context).width * 0.68,
                          height: Utils.sizeQuery(context).height * 0.02,
                          text: skillsList?[index].title ?? "",
                          percent:
                              skillsList?[index].percent?.toDouble() ?? 50),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  constraintWidth ? EdgeInsets.only(top: 30) : EdgeInsets.zero,
              child: Container(
                height: 50,
                width: Utils.sizeQuery(context).width,
                alignment: Alignment.bottomRight,
                child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      pageController?.previousPage(
                          duration: Duration(seconds: 1), curve: Curves.easeIn);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 50,
                      color: ColorsApp.gray,
                    )),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

double _returnSizeValueHeight(
    BoxConstraints constraints, BuildContext context, double a, double b) {
  if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
    return Utils.sizeQuery(context).height * a;
  } else {
    return Utils.sizeQuery(context).height * b;
  }
}

double _returnSizeValueWidth(
    BoxConstraints constraints, BuildContext context, double a, double b) {
  if (constraints.maxWidth > DefaultValues.MOBILE_MAX) {
    return Utils.sizeQuery(context).width * a;
  } else {
    return Utils.sizeQuery(context).width * b;
  }
}

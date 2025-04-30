import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/widgets/contact_widget.dart';
import 'package:portfolio/widgets/custom_count_widget.dart';
import 'package:portfolio/widgets/profile_widget.dart';
import 'package:portfolio/widgets/project_widget.dart';
import 'package:portfolio/widgets/resume_block.dart';
import 'package:portfolio/widgets/services_widget.dart';
import 'package:portfolio/widgets/social_media_widget.dart';
import 'package:portfolio/widgets/tech_arsenal.dart';
import 'package:portfolio/widgets/testimonials_widget.dart';
import 'package:portfolio/widgets/workflow_highlights.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: ProfileWidget(showResume: false,),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: CustomCountWidget(
                      title: 'Projects',
                      iconData: Icons.flag_rounded,
                      number: TextString.projectCount,
                    ),
                  ),

                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: CustomCountWidget(
                      title: 'Client trust',
                      iconData: Icons.emoji_emotions,
                      number: TextString.clientCount,
                    ),
                  ),

                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: CustomCountWidget(
                      title: 'Years Exp.  ',
                      iconData: Icons.star_rounded,
                      number: TextString.yoeCount,
                    ),
                  ),

                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CustomColors.lightCardColor,
                          width: 0.8,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColors.cardColor,
                      ),
                      child: ResumeBlock(),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: TechArsenal(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: ProjectWidget(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.5,
                    child: ServicesWidget(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3,
                    child: TestimonialsWidget(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: WorkflowHighlights(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: SocialMediaWidget(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: ContactWidget(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

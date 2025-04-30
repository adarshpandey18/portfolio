import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/widgets/contact_widget.dart';
import 'package:portfolio/widgets/custom_count_widget.dart';
import 'package:portfolio/widgets/profile_widget.dart';
import 'package:portfolio/widgets/project_widget.dart';
import 'package:portfolio/widgets/services_widget.dart';
import 'package:portfolio/widgets/social_media_tile.dart';
import 'package:portfolio/widgets/social_media_widget.dart';
import 'package:portfolio/widgets/tech_arsenal.dart';
import 'package:portfolio/widgets/testimonial_card.dart';
import 'package:portfolio/widgets/testimonials_widget.dart';
import 'package:portfolio/widgets/unknown_widget.dart';
import 'package:portfolio/widgets/workflow_highlights.dart';

class HomePageTablet extends StatelessWidget {
  const HomePageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 5,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: TechArsenal(),
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
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3,
                    child: ProfileWidget(showResume: true,),
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
                    mainAxisCellCount: 1.5,
                    child: UnknownWidget(),
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
                    crossAxisCellCount: 3,
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

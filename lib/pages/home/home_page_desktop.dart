import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/widgets/custom_count_widget.dart';
import 'package:portfolio/widgets/profile_widget.dart';
import 'package:portfolio/widgets/tech_arsenal.dart';
import 'package:portfolio/widgets/workflow_highlights.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: StaggeredGrid.count(
          crossAxisCount: 11,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
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
              child: Container(color: Colors.blueGrey),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: WorkflowHighlights(),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 3,
              child: ProfileWidget(),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Container(color: Colors.blueGrey),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 3,
              child: Container(color: Colors.blueGrey),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Container(color: Colors.blueGrey),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Container(color: Colors.blueGrey),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Container(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}

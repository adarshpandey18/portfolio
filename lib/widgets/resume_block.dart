import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/text_string.dart';
import 'package:portfolio/utils/helper_functions.dart';

class ResumeBlock extends StatefulWidget {
  const ResumeBlock({super.key});

  @override
  State<ResumeBlock> createState() => _ResumeBlockState();
}

class _ResumeBlockState extends State<ResumeBlock> {
  var isHoveringDownloadButton = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Resume', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(width: 5),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.linear,
          transform:
              isHoveringDownloadButton
                  ? Matrix4.translationValues(0, -5, 0)
                  : Matrix4.translationValues(0, 0, 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: CustomColors.extraLightCardColor,
            ),
            width: 45,
            height: 45,
            child: MouseRegion(
              onEnter:
                  (event) => setState(() {
                    isHoveringDownloadButton = true;
                  }),
              onExit:
                  (event) => setState(() {
                    isHoveringDownloadButton = false;
                  }),
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap:
                    () => HelperFunctions.launchCustomURL(
                      url: TextString.resumeLink,
                    ),
                child: Icon(
                  Icons.file_download_outlined,
                  color: CustomColors.labelTextColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

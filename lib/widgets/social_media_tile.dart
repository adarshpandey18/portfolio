import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';

class SocialMediaTile extends StatefulWidget {
  final String title;
  final IconData iconData;

  const SocialMediaTile({
    super.key,
    required this.title,
    required this.iconData,
  });

  @override
  State<SocialMediaTile> createState() => _SocialMediaTileState();
}

class _SocialMediaTileState extends State<SocialMediaTile> {
  var isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter:
          (event) => setState(() {
            isHovering = true;
          }),
      onExit:
          (event) => setState(() {
            isHovering = false;
          }),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColors.extraLightCardColor,
                width: 0.8,
              ),
              color: CustomColors.lightCardColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColors.extraLightCardColor,
                  ),
                  child: Icon(
                    widget.iconData,
                    size: 20,
                    color:
                        isHovering
                            ? CustomColors.labelTextColor
                            : CustomColors.doubleExtraLightCardColor,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color:
                        isHovering
                            ? CustomColors.labelTextColor
                            : CustomColors.doubleExtraLightCardColor,
                  ),
                ),
              ],
            ),
          ),
          if (isHovering)
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_outward_rounded,
                  color: CustomColors.labelTextColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/constants/image_path.dart';
import 'package:portfolio/utils/helper_functions.dart';

class TechStackTile extends StatefulWidget {
  final String title;
  final String? url;
  final String? iconData;
  const TechStackTile({
    super.key,
    required this.title,
    required this.url,
    required this.iconData,
  });

  @override
  State<TechStackTile> createState() => _TechStackTileState();
}

class _TechStackTileState extends State<TechStackTile> {
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

      child: GestureDetector(
        onTap:
            () =>
                isHovering
                    ? {
                      HelperFunctions.launchCustomURL(
                        url: widget.url ?? 'www.google.com',
                      ),
                    }
                    : null,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
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
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: CustomColors.extraLightCardColor,
                    ),
                    child: Image.asset(
                      widget.iconData ?? ImagePath.flutterIconPath,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: CustomColors.labelTextColor,
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
                    Icons.arrow_outward_outlined,
                    color: CustomColors.accentColor,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:doctoc/core/theming/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Araby!',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'Hi, Araby!',
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor:ColourManager.moreLightGray ,
          child: SvgPicture.asset('assets/svgs/notifications.svg'),
        )
      ],
    );
  }
}

import 'package:doctoc/core/helpers/extension.dart';
import 'package:doctoc/core/routing/routes.dart';
import 'package:doctoc/core/theming/colours.dart';
import 'package:doctoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(ColourManager.mainBluePrimary),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStateProperty.all(
            const Size(double.infinity, 52),
          ),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
        ),
        onPressed: () {

          context.pushNamed(Routes.loginScreen);
        },
        child: Text('Get Started', style: TextStyles.font16WhiteSemiBold));
  }
}

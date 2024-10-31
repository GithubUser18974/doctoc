import 'package:doctoc/core/theming/colours.dart';
import 'package:doctoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
class PasswordValidation extends StatelessWidget {
  const PasswordValidation({super.key, required this.hasLowerCase, required this.hasUpperCase, required this.hasSpecialCharchter, required this.hasNumber, required this.hasMinLength});
  final bool hasLowerCase;
final bool hasUpperCase;
final bool hasSpecialCharchter;
final bool hasNumber;
final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("at least 1 lowercase letter",hasLowerCase),
        verticalSpace(2),
        buildValidationRow("at least 1 UpperCase letter",hasUpperCase),
        verticalSpace(2),
        buildValidationRow("at least 1 Special  letter",hasSpecialCharchter),
        verticalSpace(2),
        buildValidationRow("at least 1 number",hasNumber),
        verticalSpace(2),
        buildValidationRow("at least 8 charchters long",hasMinLength),
        verticalSpace(2),
      ],
    );
  }
  
  Widget buildValidationRow(String text, bool hasVlidation) {
    return  Row(
      children: [
        const CircleAvatar(radius: 2.5,
        backgroundColor:
         ColourManager.gray,),
         horizontalSpace(6),
         Text(text,style: TextStyles.font13DarkBlueRegular.copyWith(
          decoration: hasVlidation?TextDecoration.lineThrough:null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasVlidation?ColourManager.gray:ColourManager.darkBlue,
         ),)
      ],
    );
  }
}
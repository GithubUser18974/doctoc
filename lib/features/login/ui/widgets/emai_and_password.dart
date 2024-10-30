import 'package:doctoc/core/routing/app_router.dart';
import 'package:doctoc/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'password_validation.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscuredText = true;

     bool hasLowerCase=false;
 bool hasUpperCase=false;
 bool hasSpecialCharchter=false;
 bool hasNumber=false;
 bool hasMinLength=false;
  late TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: 'Email',
              controller: context.read<LoginCubit>().emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid email';
                }
              },
            ),
            verticalSpace(18),
            AppTextFormField(
              hintText: 'Password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Password';
                }
              },
              controller: context.read<LoginCubit>().passwordController,
              isObscureText: isObscuredText,
              sufficIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscuredText = !isObscuredText;
                  });
                },
                child: Icon(
                    isObscuredText ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            verticalSpace(24),
            PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialCharchter: hasSpecialCharchter,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
          ],
        ));
  }
}

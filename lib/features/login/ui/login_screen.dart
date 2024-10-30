import 'package:doctoc/core/helpers/spacing.dart';
import 'package:doctoc/core/theming/styles.dart';
import 'package:doctoc/core/widgets/app_text_button.dart';
import 'package:doctoc/core/widgets/app_text_form_field.dart';
import 'package:doctoc/features/login/data/models/login_request_body.dart';
import 'package:doctoc/features/login/logic/cubit/login_cubit.dart';
import 'package:doctoc/features/login/ui/widgets/already_have_account.dart';
import 'package:doctoc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/emai_and_password.dart';
import 'widgets/login_bloc_listener.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscuredText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, Can\'t wait to see what you have been up since you last login',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forget Password',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  void validateThenDoLogin(BuildContext context) {
    if(context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
        email: context.read<LoginCubit>().emailController.text,
         password: context.read<LoginCubit>().passwordController.text));
    }
  }
}

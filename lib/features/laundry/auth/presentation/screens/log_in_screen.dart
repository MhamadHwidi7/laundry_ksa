import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/features/laundry/auth/domain/params/log_in_params.dart';
import 'package:laundry_app/features/laundry/auth/presentation/controllers/cubit/log_in_laundry_cubit.dart';
import 'package:laundry_app/features/laundry/auth/presentation/controllers/text_field_controller.dart';

class LogInScreen extends StatelessWidget {
  final controller = Get.put(TextFieldController());

  LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        border: const Border(),
        backgroundColor: ColorConstants.backGroundAppColor,
        automaticallyImplyLeading: true,
        middle: Padding(
          padding: EdgeInsets.only(right: context.screenWidth * 0.7),
          child: Text(
            TextConstants.loginAppBarText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:
                    context.screenWidth > 600 ? context.mediumFontSize : 20),
          ),
        ),
      ),
      child: SafeArea(
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: context.screenHeight > 600 ? 100 : 120,
                  ),
                  Center(
                    child: Container(
                      height: context.screenHeight > 600 ? 206 : 206,
                      width: context.screenWidth > 600 ? 450 : 353,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CupertinoTextFormFieldRow(
                            controller: controller.phoneNumberController,
                            validator: controller.validatePhoneNumber,
                            onChanged: (value) =>
                                controller.formKey.currentState!.validate(),
                            placeholderStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.black),
                            prefix: Padding(
                              padding: EdgeInsets.only(left: 10, right: 5),
                              child: SvgPicture.asset(
                                ImageConstants.phoneIcon,
                              ),
                            ),
                            placeholder: 'Phone Number',
                          ),
                          SizedBox(
                            height: context.screenHeight > 600 ? 40 : 20,
                          ),
                          Obx(() => Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CupertinoTextFormFieldRow(
                                    validator: controller.validatePassword,
                                    controller: controller.passwordController,
                                    obscureText:
                                        controller.isPasswordVisible.value,
                                    prefix: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: SvgPicture.asset(
                                        ImageConstants.lockIcon,
                                      ),
                                    ),
                                    placeholderStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: CupertinoColors.black),
                                    placeholder: 'Password',
                                  ),
                                  GestureDetector(
                                    onTap: controller.togglePasswordVisibility,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: SvgPicture.asset(
                                        controller.isPasswordVisible.value
                                            ? ImageConstants
                                                .earningsIcon // Icon when password is visible
                                            : ImageConstants
                                                .eyeIcon, // Icon when password is hidden
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: context.screenWidth > 600 ? 350 : 300,
                child: _buildBlocConsumerButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BlocConsumer<LogInLaundCubit, LogInLaundState> _buildBlocConsumerButton() {
    return BlocConsumer<LogInLaundCubit, LogInLaundState>(
      listener: (context, state) => state.mapOrNull(
        success: (entity) => context.go(
            '${RouterConstants.homeLaundryScreen}/${entity.logInLaundryEntity.laundryId}'),
        error: (ex) => Fluttertoast.showToast(
            msg: NetworkExceptions.getErrorMessage(ex.networkExceptions),
            toastLength: Toast.LENGTH_SHORT),
      ),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return CupertinoButton(
              color: ColorConstants.purpleAppColor,
              borderRadius: BorderRadius.circular(25.0),
              onPressed: () {
                if (controller.formKey.currentState!.validate()) {
                  context.read<LogInLaundCubit>().emitLogInlaundry(
                      LogInLaundryParams(
                          phoneNumber: controller.phoneNumberController.text,
                          password: controller.passwordController.text));
                } else {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text("Validation Error"),
                        content: Text("Please correct the form errors."),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("OK"),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            );
          },
          
          initial: () {
            return CupertinoButton(
              color: ColorConstants.purpleAppColor,
              borderRadius: BorderRadius.circular(25.0),
              onPressed: () {
                if (controller.formKey.currentState!.validate()) {
                  context.read<LogInLaundCubit>().emitLogInlaundry(
                      LogInLaundryParams(
                          phoneNumber: controller.phoneNumberController.text,
                          password: controller.passwordController.text));
                } else {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text("Validation Error"),
                        content: Text("Please correct the form errors."),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("OK"),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            );
          },
          loading: () => const CupertinoActivityIndicator(),
        );
      },
    );
  }
}

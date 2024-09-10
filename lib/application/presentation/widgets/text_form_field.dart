import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/validators/validators.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.isBorder = false,
    this.fillColor,
    this.textCapitalization,
    this.focusNode,
    this.showUnderline = false,
    this.validate = Validate.none,
    this.onTapOutside,
    this.obscureText = false,
    this.maxLines,
    this.prefixIcon,
    this.suffixIcon,
    this.prefix,
    this.validator,
    this.clr,
    this.enabledBorder,
    this.password,
    this.borderRadius = 8,
    this.onChanged,
    this.keyboardType,
    this.maxLength,
    this.lebelText,
    this.focusedBorder,
    this.inputFormatters = const <TextInputFormatter>[],
  });

  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Color? clr;
  final FocusNode? focusNode;
  final VoidCallback? onTapOutside;
  final bool showUnderline;
  final Validate validate;
  final String hintText;
  final int? maxLines;
  final int? maxLength;
  final TextEditingController? controller;
  final bool isBorder;
  final Color? fillColor;
  final TextCapitalization? textCapitalization;
  final bool obscureText;
  final TextEditingController? password;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final double borderRadius;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final String? lebelText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showEye = false;

  @override
  void initState() {
    super.initState();
    showEye = widget.obscureText;
  }

  EdgeInsets calculateContentPadding() {
    if (widget.maxLines != null && widget.maxLines! > 1) {
      return EdgeInsets.symmetric(horizontal: 15, vertical: 10.w);
    }
    return const EdgeInsets.symmetric(horizontal: 15);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      maxLines: widget.maxLines ?? 1,
      maxLength: widget.maxLength,
      style: TextStyle(color: kBlack, fontSize: 12.sp),
      obscureText: showEye,
      autofocus: false,
      onTapOutside: (event) {
        if (widget.onTapOutside != null) {
          widget.onTapOutside!();
        }
      },
      textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
      controller: widget.controller,
      decoration: InputDecoration(
        labelStyle: textThinStyle1,
        labelText: widget.lebelText,
        errorMaxLines: 5,
        fillColor: widget.fillColor,
        filled: true,
        enabledBorder: widget.enabledBorder,
        focusedBorder: widget.focusedBorder,
        counter: const SizedBox.shrink(),
        contentPadding: calculateContentPadding(),
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showEye = !showEye;
                  });
                },
                icon: Icon(
                  showEye
                      ? Icons.remove_red_eye_outlined
                      : Icons.remove_red_eye,
                ),
              )
            : widget.suffixIcon,
        prefix: widget.prefix,
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        border: widget.isBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
              )
            : null,
      ),
      validator: widget.validator ??
          (value) {
            if (Validate.none == widget.validate) {
              return null;
            } else if (widget.validate == Validate.phone &&
                !isValidPhoneNumber(value!)) {
              return 'Please enter a valid phone number';
            } else if (widget.validate == Validate.email &&
                !isValidEmail(value!)) {
              return 'Please enter a valid email address';
            } else if (widget.validate == Validate.password &&
                value!.length < 8) {
              return 'Password must contavin at least 8 characters';
            } else if (widget.validate == Validate.notNullAndLength10) {
              if (value == null || value == '') {
                return '${widget.hintText} should not be Empty';
              } else if (value.length < 10) {
                return '${widget.hintText} should be at least 10 letters.';
              } else {
                return null;
              }
            } else if (widget.validate == Validate.passportNumber) {
              if (value == null || value == '') {
                return 'Passport Number should not be Empty';
              } else if (value.length < 8) {
                return 'Passport Number should be at least 8 letters.';
              }
              // else if (!isValidIndianPassportNumber(value)) {
              //   return 'The first character must be an uppercase alphabet. The next two characters should be numbers, with the first character ranging from 1 to 9 and the second character from 0 to 9.';
              // }
              else {
                return null;
              }
            } else if (widget.validate == Validate.notNull &&
                (value == null || value == '')) {
              return 'This Field cannot be Empty';
            } else if (widget.validate == Validate.password) {
              if (!hasLowerCase(value!)) {
                return 'Password must contains lowerCase letters';
              } else if (!hasCapsLetter(value)) {
                return 'Password must contains UpperCase letters';
              } else if (!hasNumbers(value)) {
                return 'Password must contains numbers';
              } else if (!hasSpecialChar(value)) {
                return 'Password must contains special characters';
              } else if (value.length < 8) {
                return 'Password must contains 8 characters';
              } else {
                return null;
              }
            } else if (Validate.phone == widget.validate) {
              if (!RegExp(r'^[0-9]+$').hasMatch(value!)) {
                return 'Enter valid phone number (numeric characters only)';
              } else if (value.length != 10) {
                return 'Phone number should have exactly 10 digits';
              } else {
                return null;
              }
            } else if (Validate.rePassword == widget.validate &&
                widget.password!.text.trim() != value) {
              return 'Password must be same';
            } else if (Validate.noneOrGst == widget.validate) {
              if (value == '') {
                return null;
              } else if (!isValidGst(value!)) {
                return 'Enter valid gst number';
              }
            } else if (Validate.noneOrNotNull == widget.validate) {
              if (value == '') {
                return null;
              } else if (value!.length < 3) {
                return 'Enter valid ${widget.hintText}';
              }
            } else if (Validate.noneOrEmail == widget.validate) {
              if (value == '') {
                return null;
              } else if (!isValidEmail(value!)) {
                return 'Enter valid email';
              }
            } else if (Validate.noneOrPhone == widget.validate) {
              if (value == '') {
                return null;
              } else if (!isValidPhoneNumber(value!)) {
                return 'Enter valid phone';
              }
            }
            return null;
          },
    );
  }
}

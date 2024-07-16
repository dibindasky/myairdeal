import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
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
    this.clr,
    this.enabledBorder,
    this.password,
    this.borderRadius = 8,
    this.onChanged,
    this.keyboardType,
    this.maxLength,
  });

  final Widget? prefixIcon;
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
  final double borderRadius;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;

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

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        fillColor: widget.fillColor,
        filled: true,
        enabledBorder: widget.enabledBorder,
        counter: const SizedBox.shrink(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
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
      validator: (value) {
        if (Validate.none == widget.validate) {
          return null;
        } else if (widget.validate == Validate.phone &&
            !isValidPhoneNumber(value!)) {
          return 'Please enter a valid phone number';
        } else if (widget.validate == Validate.email && !isValidEmail(value!)) {
          return 'Please enter a valid email address';
        } else if (widget.validate == Validate.password && value!.length < 8) {
          return 'Password must contavin at least 8 characters';
        } else if (widget.validate == Validate.notNull &&
            (value == null || value == '')) {
          return 'This field cannot be empty';
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

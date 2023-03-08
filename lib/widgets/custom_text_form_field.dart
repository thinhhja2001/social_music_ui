import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.InterMedium16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      case TextFormFieldFontStyle.InterSemiBold14:
        return TextStyle(
          color: ColorConstant.deepPurpleA200,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.21,
          ),
        );
      case TextFormFieldFontStyle.InterMedium14Gray50002_1:
        return TextStyle(
          color: ColorConstant.gray50002,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeppurpleA200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.deepPurpleA200,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillWhiteA70070:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray10001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA70070:
        return ColorConstant.whiteA70070;
      case TextFormFieldVariant.FillGray10001:
        return ColorConstant.gray10001;
      default:
        return ColorConstant.deepPurpleA100Cc;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeppurpleA200:
        return false;
      case TextFormFieldVariant.FillWhiteA70070:
        return true;
      case TextFormFieldVariant.FillGray10001:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT16:
        return getPadding(
          left: 16,
          top: 16,
          bottom: 16,
        );
      case TextFormFieldPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case TextFormFieldPadding.PaddingT16_2:
        return getPadding(
          left: 12,
          top: 16,
          right: 12,
          bottom: 16,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }
}

enum TextFormFieldShape {
  CircleBorder25,
  RoundedBorder16,
}

enum TextFormFieldPadding {
  PaddingAll16,
  PaddingT16,
  PaddingAll7,
  PaddingT16_2,
}

enum TextFormFieldVariant {
  None,
  FillDeeppurpleA100cc,
  OutlineDeeppurpleA200,
  FillWhiteA70070,
  FillGray10001,
}

enum TextFormFieldFontStyle {
  InterMedium14WhiteA700,
  InterMedium16WhiteA700,
  InterSemiBold14,
  InterMedium14Gray50002_1,
}

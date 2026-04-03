import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';

class AppStyle {
  AppStyle._();
  static const String _fontFamily = 'Urbanist';

  static const TextStyle display = TextStyle(
    fontSize: 56,
    fontWeight: FontWeight.w800,
    fontFamily: _fontFamily,
    height: 1.1,
    color: ColorManager.textPrimary,
  );

  static const TextStyle h1 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
    fontFamily: _fontFamily,
    height: 1.2,
    color: ColorManager.textPrimary,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    fontFamily: _fontFamily,
    height: 1.3,
    color: ColorManager.textPrimary,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    height: 1.3,
    color: ColorManager.textPrimary,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    height: 1.4,
    color: ColorManager.textPrimary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamily,
    height: 1.6,
    color: ColorManager.textSecondary,
  );

  static const TextStyle bodyBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: _fontFamily,
    height: 1.6,
    color: ColorManager.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
    height: 1.5,
    color: ColorManager.textSecondary,
  );

  // Legacy Aliases for Migration
  static TextStyle f22UrbanistBold = h4.copyWith(fontSize: 22, fontWeight: FontWeight.bold);
  static TextStyle f24UrbanistBold = h3.copyWith(fontWeight: FontWeight.bold);
  static TextStyle f20UrbanistSemibold = h4;
  static TextStyle f30UrbanistBold = h2.copyWith(fontSize: 30, fontWeight: FontWeight.bold);
  static TextStyle f35UrbanistBold = h1.copyWith(fontSize: 35, fontWeight: FontWeight.bold);
  static TextStyle f16UrbanistMeduim = body.copyWith(fontWeight: FontWeight.w500);
  static TextStyle f16UrbanistBold = bodyBold;
  static TextStyle f14Urbanistbold = caption.copyWith(fontWeight: FontWeight.bold);
  static TextStyle f14UrbanistboldWhite = f14Urbanistbold.copyWith(color: ColorManager.white);
  static TextStyle f50UrbanistBold = display.copyWith(fontSize: 50, fontWeight: FontWeight.w700);
}

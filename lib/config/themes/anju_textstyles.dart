import 'package:anju/config/themes/anju_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AnjuTextStyles {
  static TextStyle defaultStyle = GoogleFonts.roboto();
  static TextStyle cinna = GoogleFonts.spicyRice();
  static TextStyle titleScreens =
      defaultStyle.copyWith(fontSize: 22, fontWeight: FontWeight.bold);
  // DETAILS
  static TextStyle customer =
      defaultStyle.copyWith(color: AnjuColors.customerColor);
  static TextStyle date = defaultStyle.copyWith(color: AnjuColors.dueDate);
  static TextStyle colorsName = defaultStyle.copyWith(fontSize: 13);
  static TextStyle mediumTitle =
      defaultStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle titleAmigurumi =
      defaultStyle.copyWith(fontSize: 35, fontWeight: FontWeight.bold);
  static TextStyle details = defaultStyle.copyWith(fontWeight: FontWeight.bold);
  // SHOPPING

  static TextStyle available =
      defaultStyle.copyWith(color: Colors.grey.shade200, fontSize: 15);
  static TextStyle titleCard = defaultStyle.copyWith(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  // INVENTORY
  static TextStyle itemTitle = defaultStyle.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  static TextStyle subtitleCard = defaultStyle.copyWith(
    fontSize: 15,
  );
  static TextStyle info =
      defaultStyle.copyWith(color: Colors.grey.shade200, fontSize: 15);
  // SHOP SCREEN
  static TextStyle handmade = defaultStyle.copyWith(
      color: AnjuColors.primary, fontSize: 17, fontWeight: FontWeight.bold);
  static TextStyle amigurumiName = defaultStyle.copyWith(
      color: Colors.black, fontSize: 28, fontWeight: FontWeight.w700);
  static TextStyle priceTag = defaultStyle.copyWith(
      color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
  // PDF SCREEN
  static TextStyle pdfText = defaultStyle.copyWith(
    color: Colors.black,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );
  static TextStyle pagesPdf = defaultStyle.copyWith(
    color: Colors.grey,
    fontSize: 18,
    overflow: TextOverflow.ellipsis,
  );
  // Wallet
  static TextStyle walletCards =
      defaultStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold);

  static TextStyle expenses = defaultStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AnjuColors.secondary,
  );
  static TextStyle income = defaultStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AnjuColors.primary,
  );
  static TextStyle pedido = defaultStyle.copyWith(
    fontWeight: FontWeight.bold,
  );
  static TextStyle descriptionPedido = defaultStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w100,
    color: Colors.black.withOpacity(0.4),
  );
}

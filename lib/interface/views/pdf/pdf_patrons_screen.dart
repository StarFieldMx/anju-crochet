import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:pdfx/pdfx.dart';

@RoutePage()

/// Muestra los patrones PDF existentes
class PdfPatrons extends StatefulWidget {
  const PdfPatrons({super.key});

  @override
  State<PdfPatrons> createState() => _PdfPatronsState();
}

class _PdfPatronsState extends State<PdfPatrons> {
  late PDFViewController pdfController;
  int? pages;
  bool isReady = false;

  final pdfPinchController = PdfControllerPinch(
    document: PdfDocument.openAsset('pdf/nezuko.pdf'),
  );

  @override
  Widget build(BuildContext context) {
    return PdfViewPinch(
      controller: pdfPinchController,
    );
  }
}

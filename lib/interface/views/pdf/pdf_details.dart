import 'dart:async';

import 'package:anju/interface/widgets/widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

@RoutePage()

/// Ver pdf en la app (puede hacer zoom)
class PdfViewScreen extends StatelessWidget {
  PdfViewScreen({super.key, required this.path});
  final String path;

  final pdfData = StreamController<PdfControllerPinch>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnjuTopBar(),
      body: StreamBuilder<PdfControllerPinch>(
          stream: pdfData.stream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              pdfData.add(PdfControllerPinch(
                document: PdfDocument.openAsset('pdf/nezuko.pdf'),
              ));
              pdfData.close();
            }
            if (snapshot.connectionState == ConnectionState.active ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError || !snapshot.hasData) {
              return Center(
                child: Text(
                    snapshot.hasError ? snapshot.error.toString() : 'No data'),
              );
            }
            return PdfViewPinch(controller: snapshot.data!);
          }),
    );
  }
}

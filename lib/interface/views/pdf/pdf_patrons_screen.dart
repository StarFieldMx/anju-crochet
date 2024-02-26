import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdfx/pdfx.dart';

@RoutePage()

/// Muestra los patrones PDF existentes
class PdfPatrons extends StatefulWidget {
  const PdfPatrons({super.key});

  @override
  State<PdfPatrons> createState() => _PdfPatronsState();
}

class _PdfPatronsState extends State<PdfPatrons> {
  // TODO: USE IN VIEW PDF FOR VIEW ALL PDF (PDFPinchView)
  final pdfPinchController = PdfControllerPinch(
    document: PdfDocument.openAsset('pdf/nezuko.pdf'),
  );

  // @override
  // void initState() {
  //   pages = pdfPinchController.pageListenable.value;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      children: const [
        SizedBox(height: 20),
        _Test('pdf/nezuko.pdf'),
        _Test('pdf/nezuko.pdf'),
        _Test('pdf/nezuko.pdf'),
        _Test('pdf/nezuko.pdf'),
        SizedBox(height: 80),
      ],
    );
  }
}

class _Test extends StatefulWidget {
  const _Test(this.path);
  final String path;
  @override
  State<_Test> createState() => _TestState();
}

class _TestState extends State<_Test> {
  late PdfController pdfView;
  PdfDocument? doc;
  late Future<PdfPageImage> pageImage;
  int pages = 0;
  Future<PdfPageImage> initDocs() async {
    pdfView = PdfController(
      document: PdfDocument.openAsset(widget.path),
    );
    doc = await pdfView.document;
    final page = await doc!.getPage(1);
    final pdfPageImage = await page.render(
      // rendered image width resolution, required
      width: page.width * 2,
      // rendered image height resolution, required
      height: page.height * 2,

      // Rendered image compression format, also can be PNG, WEBP*
      // Optional, default: PdfPageImageFormat.PNG
      // Web not supported
      format: PdfPageImageFormat.jpeg,
    );
    pages = doc!.pagesCount;
    if (mounted) {
      setState(() {});
    }
    return pdfPageImage!;
  }

  @override
  void initState() {
    super.initState();
    if (mounted) {
      pageImage = initDocs();
    }
  }

  @override
  void dispose() {
    super.dispose();
    pdfView.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        color: AnjuColors.primaryShade100,
        child: Column(
          children: [
            if (doc != null)
              Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: PdfPageImageProvider(
                      pageImage, // Aquí accedes al PdfPageImage no nulo
                      1,
                      doc!.id,
                    ),
                  ),
                ),
              ),
            if (doc != null)
              Container(
                width: size.width,
                height: 80,
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doc!.sourceName,
                      style: AnjuTextStyles.pdfText,
                    ),
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.filePdf),
                        const SizedBox(width: 20),
                        Text(
                          '$pages páginas',
                          style: AnjuTextStyles.pagesPdf,
                        ),
                      ],
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

// @RoutePage()

// /// Muestra los patrones PDF existentes
// class PdfPatrons extends StatefulWidget {
//   const PdfPatrons({super.key});

//   @override
//   State<PdfPatrons> createState() => _PdfPatronsState();
// }

// class _PdfPatronsState extends State<PdfPatrons> {
//   final pdfPinchController = PdfControllerPinch(
//     document: PdfDocument.openAsset('pdf/nezuko.pdf'),
//   );
//   void awa() async {
//     final doc = await pdfPinchController.document;
//     final page = doc.getPage(1);
//   }
//   // @override
//   // void initState() {
//   //   pages = pdfPinchController.pageListenable.value;
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return PdfViewPinch(
//       controller: pdfPinchController,
//     );
//   }
// }

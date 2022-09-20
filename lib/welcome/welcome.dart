import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileScanner(
        allowDuplicates: false,
        controller: MobileScannerController(
            facing: CameraFacing.back, torchEnabled: true),
        onDetect: (barcode, args) {
          final String code = barcode.rawValue!;
          debugPrint("Barcode found! $code");
        },
      ),
    );
  }
}

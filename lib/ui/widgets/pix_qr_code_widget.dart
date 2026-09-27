import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PixQrCodeWidget extends StatelessWidget {
  final String brCode;

  const PixQrCodeWidget({Key? key, required this.brCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final qrSize = (MediaQuery.sizeOf(context).width - 64)
        .clamp(120.0, 200.0)
        .toDouble();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Use QrImageView se QrImage der erro
        QrImageView(data: brCode, version: QrVersions.auto, size: qrSize),
        const SizedBox(height: 16),
        const Text(
          "Escaneie para pagar via PIX",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

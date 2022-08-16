import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCreateView extends StatefulWidget {
  const QRCreateView({Key? key}) : super(key: key);

  @override
  State<QRCreateView> createState() => _QRCreateViewState();
}

class _QRCreateViewState extends State<QRCreateView> {
  String qrCodeText = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              const SizedBox(height: 100),
              QrImage(data: qrCodeText, size: 320),
              const SizedBox(height: 20),
              buildTextField()
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField() {
    return TextField(
      autofocus: false,
      onSubmitted: (value) {
        setState(() {
          qrCodeText = value ;
        });
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: "Enter your qr code",
          prefixIcon: Icon(
            Icons.qr_code,
            color: Theme.of(context).colorScheme.primary,
          )),
    );
  }
}

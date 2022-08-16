import 'package:flutter/material.dart';
import 'package:qr_code_generator/view/qr_create_view.dart';
import 'package:qr_code_generator/view/qr_scan_view.dart';

class NavigationBarApp extends StatefulWidget {
  const NavigationBarApp({Key? key}) : super(key: key);

  @override
  State<NavigationBarApp> createState() => _NavigationBarAppState();
}

class _NavigationBarAppState extends State<NavigationBarApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> widgets = [
    QRScanView(),
    QRCreateView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text("QR Code generator"),
          centerTitle: true,
        ),
        body: Center(child: widgets[_selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Theme
                .of(context)
                .colorScheme
                .primary,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner),
                label: 'Scan QR code',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code),
                label: 'generate Qr code',
              ),
            ],
          currentIndex: _selectedIndex,
          selectedItemColor:
          Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          onTap: _onItemTapped,
        )
    );
  }}
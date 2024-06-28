import 'package:flutter/material.dart';

import 'Screens/invoice_detail.dart';
import 'Screens/invoice_generator.dart';
import 'Screens/pdf.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const InvoicePage(),
        '/detail' : (context) => DetailPage(),
        '/pdf' : (context) => PdfPage(),
      },

    );
  }
}

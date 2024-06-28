import 'package:flutter/material.dart';


class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            'Invoice Generator',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            ...List.generate(invoiceDetails.length, (index)=> GestureDetector(
              onTap: () {
                SelectedIndex=index;
                Navigator.pushNamed(context, '/detail');
              },
              child: ListTile(
                title: Text('${invoiceDetails[index]['title']}',style: TextStyle(fontWeight: FontWeight.w600),),
                subtitle: Text('${invoiceDetails[index]['name']}',style: TextStyle(fontWeight: FontWeight.w600),),
                trailing: Text('${invoiceDetails[index]['Price']}',style: TextStyle(
                    fontSize: 15
                ),),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}

List invoiceDetails=[
  {
    'name': 'Ravi Narayan',
    'title': 'Web Developer',
    'Price': 'Rs. 25000/-',
  },
  {
    'name': 'Sajid Shaikh ',
    'title': 'UI UX',
    'Price': 'Rs. 35000/-',
  },
  {
    'name': 'Yash Jain',
    'title': 'Game Developer',
    'Price': 'Rs. 45000/-',
  }
];
int SelectedIndex=0;
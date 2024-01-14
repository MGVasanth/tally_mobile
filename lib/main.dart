import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:number_to_words/number_to_words.dart';

void main() {
  return runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Myapp(),
    theme: ThemeData(
      primarySwatch: Colors.yellow,

    ),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  final TextEditingController _hospname = TextEditingController();
  final TextEditingController _streetname = TextEditingController();
  final TextEditingController _colonyname = TextEditingController();
  final TextEditingController _didtrict = TextEditingController();
  final TextEditingController _gstno = TextEditingController();
  final TextEditingController _invoiceno = TextEditingController();
  final TextEditingController _deliverynote = TextEditingController();
  final TextEditingController _termsofpayment = TextEditingController();
  final TextEditingController _supplier_ref = TextEditingController();
  final TextEditingController _other_ref = TextEditingController();
  final TextEditingController _buyer_order_no = TextEditingController();
  final TextEditingController _despatch_doc_no = TextEditingController();
  final TextEditingController _despatch_through = TextEditingController();
  final TextEditingController _destination = TextEditingController();
  final TextEditingController _terms_of_delivery = TextEditingController();
  final TextEditingController _item1 = TextEditingController();
  final TextEditingController _quantity1 = TextEditingController();
  final TextEditingController _rate1 = TextEditingController();
  final TextEditingController _item2 = TextEditingController();
  final TextEditingController _quantity2 = TextEditingController();
  final TextEditingController _rate2 = TextEditingController();
  final TextEditingController _item3 = TextEditingController();
  final TextEditingController _quantity3 = TextEditingController();
  final TextEditingController _rate3 = TextEditingController();
  final TextEditingController _item4 = TextEditingController();
  final TextEditingController _quantity4 = TextEditingController();
  final TextEditingController _rate4 = TextEditingController();
  final TextEditingController _item5 = TextEditingController();
  final TextEditingController _quantity5 = TextEditingController();
  final TextEditingController _rate5 = TextEditingController();
  final TextEditingController _item6 = TextEditingController();
  final TextEditingController _quantity6 = TextEditingController();
  final TextEditingController _rate6 = TextEditingController();
  final TextEditingController _item7 = TextEditingController();
  final TextEditingController _quantity7 = TextEditingController();
  final TextEditingController _rate7 = TextEditingController();
  final TextEditingController _item8 = TextEditingController();
  final TextEditingController _quantity8 = TextEditingController();
  final TextEditingController _rate8 = TextEditingController();
  final TextEditingController _item9 = TextEditingController();
  final TextEditingController _quantity9 = TextEditingController();
  final TextEditingController _rate9 = TextEditingController();
  final TextEditingController _item10 = TextEditingController();
  final TextEditingController _quantity10 = TextEditingController();
  final TextEditingController _rate10 = TextEditingController();
  final TextEditingController _item11 = TextEditingController();
  final TextEditingController _quantity11 = TextEditingController();
  final TextEditingController _rate11 = TextEditingController();
  final TextEditingController _item12 = TextEditingController();
  final TextEditingController _quantity12 = TextEditingController();
  final TextEditingController _rate12 = TextEditingController();
  final TextEditingController _item13 = TextEditingController();
  final TextEditingController _quantity13 = TextEditingController();
  final TextEditingController _rate13 = TextEditingController();
  final TextEditingController _item14 = TextEditingController();
  final TextEditingController _quantity14 = TextEditingController();
  final TextEditingController _rate14 = TextEditingController();

  DateTime date = DateTime(2022, 10, 30);
  DateTime date1 = DateTime(2022, 10, 30);
  DateTime date2 = DateTime(2022, 10, 30);
  bool? enable = false;
  bool? enable1 = false;

  List<String> items = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14"
  ];
  String? selectedItem = "1";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Tally Mobile',
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                onclick();
              },
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.yellow,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  _hospname.clear();
                  _streetname.clear();
                  _colonyname.clear();
                  _didtrict.clear();
                  _gstno.clear();
                  _invoiceno.clear();
                  _deliverynote.clear();
                  _termsofpayment.clear();
                  _supplier_ref.clear();
                  _other_ref.clear();
                  _buyer_order_no.clear();
                  _despatch_doc_no.clear();
                  _despatch_through.clear();
                  _destination.clear();
                  _terms_of_delivery.clear();
                  _item1.clear();
                  _quantity1.clear();
                  _rate1.clear();
                  _item2.clear();
                  _quantity2.clear();
                  _rate2.clear();
                  _item3.clear();
                  _quantity3.clear();
                  _rate3.clear();
                  _item4.clear();
                  _quantity4.clear();
                  _rate4.clear();
                  _item5.clear();
                  _quantity5.clear();
                  _rate5.clear();
                  _item6.clear();
                  _quantity6.clear();
                  _rate6.clear();
                  _item7.clear();
                  _quantity7.clear();
                  _rate7.clear();
                  _item8.clear();
                  _quantity8.clear();
                  _rate8.clear();
                  _item9.clear();
                  _quantity9.clear();
                  _rate9.clear();
                  _item10.clear();
                  _quantity10.clear();
                  _rate10.clear();
                  _item11.clear();
                  _quantity11.clear();
                  _rate11.clear();
                  _item12.clear();
                  _quantity12.clear();
                  _rate12.clear();
                  _item13.clear();
                  _quantity13.clear();
                  _rate13.clear();
                  _item14.clear();
                  _quantity14.clear();
                  _rate14.clear();
                });
              },
              icon: Icon(
                Icons.clear_all,
                color: Colors.yellow,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(15.0),
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 30.0,
                child: Center(
                  child: Text(
                    "BUYER INFO",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 410.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Hospital Name",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.local_hospital,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _hospname,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Street Name",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.streetview,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _streetname,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Colony Name",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.landscape,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _colonyname,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "District Name",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.location_city,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _didtrict,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "GST Number",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "15 digits",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _gstno,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 30.0,
                child: Center(
                  child: Text(
                    "INVOICE DETAILS",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 1150.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Invoice Number",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers_sharp,
                              color: Colors.black,
                            ),
                            hintText: "(eg:054)",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _invoiceno,
                        keyboardType: TextInputType.number,
                      ), //1
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 50,
                            ),
                            Text(
                              '${date.day}/${date.month}/${date.year}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            SizedBox(
                              width: 20,
                              height: 50,
                            ),
                            IconButton(
                                onPressed: () async {
                                  DateTime? newDate = await showDatePicker(
                                      context: context,
                                      initialDate: date,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100));

                                  if (newDate == null) return;
                                  setState(() {
                                    date = newDate;
                                  });
                                },
                                icon: Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ), //2
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Delivery Note",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.note,
                              color: Colors.black,
                            ),
                            hintText: "",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _deliverynote,
                        textCapitalization: TextCapitalization.characters,
                      ), //3
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Terms of Payment",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.payment,
                              color: Colors.black,
                            ),
                            hintText: "(in CAPITAL LETTER)",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _termsofpayment,
                        textCapitalization: TextCapitalization.characters,
                      ), //4
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Supplier's Reference",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.read_more,
                              color: Colors.black,
                            ),
                            hintText: "(in CAPITAL LETTER)",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _supplier_ref,
                        textCapitalization: TextCapitalization.characters,
                      ), //5
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Other Reference(s)",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.newspaper,
                              color: Colors.black,
                            ),
                            hintText: "(in CAPITAL LETTER)",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _other_ref,
                        textCapitalization: TextCapitalization.characters,
                      ), //6
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Buyer's Order Number",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _buyer_order_no,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text("Order Date",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20.0)),
                            Checkbox(
                                checkColor: Colors.yellow,
                                activeColor: Colors.black,
                                value: enable,
                                tristate: false,
                                onChanged: (value) {
                                  setState(() {
                                    enable = value;
                                  });
                                }),
                            Text(
                              "Enable",
                              style: TextStyle(fontSize: 20.0),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 50,
                            ),
                            Text(
                              '${date1.day}/${date1.month}/${date1.year}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            SizedBox(
                              width: 20,
                              height: 50,
                            ),
                            IconButton(
                                onPressed: () async {
                                  DateTime? newDate1 = await showDatePicker(
                                      context: context,
                                      initialDate: date1,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100));

                                  if (newDate1 == null) return;
                                  setState(() {
                                    date1 = newDate1;
                                  });
                                },
                                icon: Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ), //2
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),

                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Despatched Document Number",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _despatch_doc_no,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text("Dated",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20.0)),
                            Checkbox(
                                checkColor: Colors.yellow,
                                activeColor: Colors.black,
                                value: enable1,
                                tristate: false,
                                onChanged: (value1) {
                                  setState(() {
                                    enable1 = value1;
                                  });
                                }),
                            Text(
                              "Enable",
                              style: TextStyle(fontSize: 20.0),
                            )
                          ],
                        ),
                      ), //7
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 50,
                            ),
                            Text(
                              '${date2.day}/${date2.month}/${date2.year}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            SizedBox(
                              width: 20,
                              height: 50,
                            ),
                            IconButton(
                                onPressed: () async {
                                  DateTime? newDate = await showDatePicker(
                                      context: context,
                                      initialDate: date2,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100));

                                  if (newDate == null) return;
                                  setState(() {
                                    date2 = newDate;
                                  });
                                },
                                icon: Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                      //8
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Despatched through",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.emoji_transportation,
                              color: Colors.black,
                            ),
                            hintText: "(in CAPITAL LETTER)",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _despatch_through,
                      ), //9
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Destination",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.location_city,
                              color: Colors.black,
                            ),
                            hintText: "(in CAPITAL LETTER)",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _destination,
                      ), //10
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Terms of Delivery",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.electric_car,
                              color: Colors.black,
                            ),
                            hintText: "(in CAPITAL LETTER)",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: _terms_of_delivery,
                      ), //11
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 30.0,
                child: Center(
                  child: Text(
                    "ITEMS",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              SizedBox(
                width: 500,
                child: DropdownButtonFormField<String>(
                  dropdownColor: Colors.black,
                  style: TextStyle(color: Colors.yellow),
                  decoration: InputDecoration(
                      labelText: "Number of Items",
                      labelStyle: TextStyle(color: Colors.yellow),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.white))),
                  value: selectedItem,
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(fontSize: 24),
                          )))
                      .toList(),
                  onChanged: (item) => setState(() {
                    selectedItem = item;
                  }),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 1"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 1",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item1,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity1,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate1,
                        keyboardType: TextInputType.number,
                        onTap: null,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 2"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 2",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item2,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity2,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate2,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 3"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 3",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item3,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity3,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate3,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 4"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 4",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item4,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity4,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate4,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 5"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 5",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item5,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity5,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate5,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 6"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 6",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item6,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity6,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate6,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 7"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 7",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item7,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity7,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate7,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 8"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 8",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item8,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity8,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate8,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 9"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 9",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item9,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity9,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate9,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 10"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 10",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item10,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity10,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate10,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 11"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 11",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item11,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity11,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate11,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 12"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 12",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item12,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity12,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate12,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 13"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 13",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item13,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity13,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate13,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: null,

                child: Text("ITEM 14"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 245.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Item Name 14",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.black,
                            ),
                            hintText: "in CAPITAL LETTERS",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _item14,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.characters,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Quantity",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Quantity",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _quantity14,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Rate",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Enter Rate",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 6.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        autocorrect: true,
                        controller: _rate14,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0))),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              TextButton(
                onPressed: () {
                  onclick();
                },

                child: Text(
                  "GENERATE INVOICE ---->",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      )),
    ));
  }

  Future<void> onclick() async {
    final doc = pw.Document();
    final image =
        (await rootBundle.load("images/Declaration.png")).buffer.asUint8List();
    var exclgst = 0;
    var totqty = 0;
    String dte1;
    String dte2;
    if (enable == true) {
      dte1 = '${date1.day}/${date1.month}/${date1.year}';
    } else {
      dte1 = " ";
    }
    if (enable1 == true) {
      dte2 = '${date2.day}/${date2.month}/${date2.year}';
    } else {
      dte2 = " ";
    }

    if (selectedItem == "1") {
      exclgst = exclgst + (int.parse(_quantity1.text) * int.parse(_rate1.text));
      totqty = totqty + int.parse(_quantity1.text);
    } else if (selectedItem == "2") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text));
      totqty = totqty + int.parse(_quantity1.text) + int.parse(_quantity2.text);
    } else if (selectedItem == "3") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          ((int.parse(_quantity3.text) * int.parse(_rate3.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text);
    } else if (selectedItem == "4") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          ((int.parse(_quantity4.text) * int.parse(_rate4.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text);
    } else if (selectedItem == "5") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          ((int.parse(_quantity5.text) * int.parse(_rate5.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text);
    } else if (selectedItem == "6") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          ((int.parse(_quantity6.text) * int.parse(_rate6.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text);
    } else if (selectedItem == "7") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          (int.parse(_quantity6.text) * int.parse(_rate6.text)) +
          ((int.parse(_quantity7.text) * int.parse(_rate7.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text) +
          int.parse(_quantity7.text);
    } else if (selectedItem == "8") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          (int.parse(_quantity6.text) * int.parse(_rate6.text)) +
          (int.parse(_quantity7.text) * int.parse(_rate7.text)) +
          ((int.parse(_quantity8.text) * int.parse(_rate8.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text) +
          int.parse(_quantity7.text) +
          int.parse(_quantity8.text);
    } else if (selectedItem == "9") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          (int.parse(_quantity6.text) * int.parse(_rate6.text)) +
          (int.parse(_quantity7.text) * int.parse(_rate7.text)) +
          (int.parse(_quantity8.text) * int.parse(_rate8.text)) +
          ((int.parse(_quantity9.text) * int.parse(_rate9.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text) +
          int.parse(_quantity7.text) +
          int.parse(_quantity8.text) +
          int.parse(_quantity9.text);
    } else if (selectedItem == "10") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          (int.parse(_quantity6.text) * int.parse(_rate6.text)) +
          (int.parse(_quantity7.text) * int.parse(_rate7.text)) +
          (int.parse(_quantity8.text) * int.parse(_rate8.text)) +
          (int.parse(_quantity9.text) * int.parse(_rate9.text)) +
          ((int.parse(_quantity10.text) * int.parse(_rate10.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text) +
          int.parse(_quantity7.text) +
          int.parse(_quantity8.text) +
          int.parse(_quantity9.text) +
          int.parse(_quantity10.text);
    } else if (selectedItem == "11") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          (int.parse(_quantity6.text) * int.parse(_rate6.text)) +
          (int.parse(_quantity7.text) * int.parse(_rate7.text)) +
          (int.parse(_quantity8.text) * int.parse(_rate8.text)) +
          (int.parse(_quantity9.text) * int.parse(_rate9.text)) +
          (int.parse(_quantity10.text) * int.parse(_rate10.text)) +
          ((int.parse(_quantity11.text) * int.parse(_rate11.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text) +
          int.parse(_quantity7.text) +
          int.parse(_quantity8.text) +
          int.parse(_quantity9.text) +
          int.parse(_quantity10.text) +
          int.parse(_quantity11.text);
    } else if (selectedItem == "12") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          (int.parse(_quantity6.text) * int.parse(_rate6.text)) +
          (int.parse(_quantity7.text) * int.parse(_rate7.text)) +
          (int.parse(_quantity8.text) * int.parse(_rate8.text)) +
          (int.parse(_quantity9.text) * int.parse(_rate9.text)) +
          (int.parse(_quantity10.text) * int.parse(_rate10.text)) +
          (int.parse(_quantity11.text) * int.parse(_rate11.text)) +
          ((int.parse(_quantity12.text) * int.parse(_rate12.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text) +
          int.parse(_quantity7.text) +
          int.parse(_quantity8.text) +
          int.parse(_quantity9.text) +
          int.parse(_quantity10.text) +
          int.parse(_quantity11.text) +
          int.parse(_quantity12.text);
    } else if (selectedItem == "13") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          (int.parse(_quantity6.text) * int.parse(_rate6.text)) +
          (int.parse(_quantity7.text) * int.parse(_rate7.text)) +
          (int.parse(_quantity8.text) * int.parse(_rate8.text)) +
          (int.parse(_quantity9.text) * int.parse(_rate9.text)) +
          (int.parse(_quantity10.text) * int.parse(_rate10.text)) +
          (int.parse(_quantity11.text) * int.parse(_rate11.text)) +
          (int.parse(_quantity12.text) * int.parse(_rate12.text)) +
          ((int.parse(_quantity13.text) * int.parse(_rate13.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text) +
          int.parse(_quantity7.text) +
          int.parse(_quantity8.text) +
          int.parse(_quantity9.text) +
          int.parse(_quantity10.text) +
          int.parse(_quantity11.text) +
          int.parse(_quantity12.text) +
          int.parse(_quantity13.text);
    } else if (selectedItem == "14") {
      exclgst = exclgst +
          (int.parse(_quantity1.text) * int.parse(_rate1.text)) +
          (int.parse(_quantity2.text) * int.parse(_rate2.text)) +
          (int.parse(_quantity3.text) * int.parse(_rate3.text)) +
          (int.parse(_quantity4.text) * int.parse(_rate4.text)) +
          (int.parse(_quantity5.text) * int.parse(_rate5.text)) +
          (int.parse(_quantity6.text) * int.parse(_rate6.text)) +
          (int.parse(_quantity7.text) * int.parse(_rate7.text)) +
          (int.parse(_quantity8.text) * int.parse(_rate8.text)) +
          (int.parse(_quantity9.text) * int.parse(_rate9.text)) +
          (int.parse(_quantity10.text) * int.parse(_rate10.text)) +
          (int.parse(_quantity11.text) * int.parse(_rate11.text)) +
          (int.parse(_quantity12.text) * int.parse(_rate12.text)) +
          (int.parse(_quantity13.text) * int.parse(_rate13.text)) +
          ((int.parse(_quantity14.text) * int.parse(_rate14.text)));
      totqty = totqty +
          int.parse(_quantity1.text) +
          int.parse(_quantity2.text) +
          int.parse(_quantity3.text) +
          int.parse(_quantity4.text) +
          int.parse(_quantity5.text) +
          int.parse(_quantity6.text) +
          int.parse(_quantity7.text) +
          int.parse(_quantity8.text) +
          int.parse(_quantity9.text) +
          int.parse(_quantity10.text) +
          int.parse(_quantity11.text) +
          int.parse(_quantity12.text) +
          int.parse(_quantity13.text) +
          int.parse(_quantity14.text);
    }

    double roundDouble(double value, int places) {
      num mod = pow(10.0, places);
      return ((value * mod).round().toDouble() / mod);
    }

    var exclgststr = exclgst.toString() + ".00";

    double cgst = roundDouble((exclgst / 100) * 2.5, 2);
    double sgst = cgst;

    var total = (exclgst + cgst + sgst).round();
    double roundoff1 = (total - roundDouble(exclgst + cgst + sgst, 2));
    double roundoff = roundDouble(roundoff1, 2);
    final img = pw.MemoryImage(image);
    String strng = (NumberToWord().convert('en-in', total)).toString();
    String capitalizeAllWord(String value) {
      var result = value[0].toUpperCase();
      for (int i = 1; i < value.length; i++) {
        if (value[i - 1] == " ") {
          result = result + value[i].toUpperCase();
        } else {
          result = result + value[i];
        }
      }
      return result;
    }

    String totstr = "Rs." + capitalizeAllWord(strng) + "Only";

    doc.addPage(pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => <pw.Widget>[
              pw.Container(
                  decoration: pw.BoxDecoration(
                      border: pw.Border.all(color: PdfColors.black, width: 4)),
                  width: 480,
                  height: 705,
                  child: pw.Column(children: [
                    pw.SizedBox(width: 0, height: 0),
                    pw.Container(
                      width: 480,
                      height: 230,
                      child: pw.Row(children: [
                        pw.Container(
                          width: 230,
                          height: 230,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.all(8.0),
                            child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text("ADITHYA LINSUR",
                                      style: pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold)),
                                  pw.Text("10 SUNDARA VINAYAKAR STREET"),
                                  pw.Text("THULASI RAM MAIN STREET"),
                                  pw.Text("MEENAKSHI NAGAR"),
                                  pw.Text("MADURAI 625 012"),
                                  pw.Text("GSTIN:33AONPG8475J1ZG"),
                                  pw.Text("Phone:9043369877"),
                                  pw.Text("E-mail : adithyalinsur@gmail.com"),
                                  pw.Text("Buyer"),
                                  pw.Text(_hospname.text.toUpperCase(),
                                      style: pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold)),
                                  pw.Text(_streetname.text.toUpperCase()),
                                  pw.Text(_colonyname.text.toUpperCase()),
                                  pw.Text(_didtrict.text.toUpperCase()),
                                  pw.Text("GSTIN:" + _gstno.text.toUpperCase()),
                                ]),
                          ),
                          decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                  color: PdfColors.black, width: 4)),
                        ),
                        pw.SizedBox(width: 0, height: 230),
                        pw.Container(
                          width: 250,
                          height: 230,
                          child: pw.Column(children: [
                            pw.Container(
                                width: 250,
                                height: 150,
                                child: pw.Column(children: [
                                  pw.Container(
                                      //1
                                      width: 240,
                                      height: 24,
                                      child: pw.Padding(
                                          padding: pw.EdgeInsets.all(3.0),
                                          child: pw.Row(children: [
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Invoice No.",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _invoiceno.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                            pw.SizedBox(width: 120, height: 24),
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Dated",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      '${date.day}/${date.month}/${date.year}',
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                          ]))),
                                  pw.Divider(height: 1),
                                  pw.Container(
                                      //2
                                      width: 240,
                                      height: 24,
                                      child: pw.Padding(
                                          padding: pw.EdgeInsets.all(3.0),
                                          child: pw.Row(children: [
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Delivery Note",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _deliverynote.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                            pw.SizedBox(width: 114, height: 24),
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                      "Mode/Terms of Payment",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _termsofpayment.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                          ]))),
                                  pw.Divider(height: 1),
                                  pw.Container(
                                      //3
                                      width: 240,
                                      height: 24,
                                      child: pw.Padding(
                                          padding: pw.EdgeInsets.all(3.0),
                                          child: pw.Row(children: [
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Supplier's Ref.",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _supplier_ref.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                            pw.SizedBox(width: 111, height: 24),
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Other Reference(s)",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _other_ref.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                          ]))),
                                  pw.Divider(height: 1),
                                  pw.Container(
                                      //4
                                      width: 240,
                                      height: 24,
                                      child: pw.Padding(
                                          padding: pw.EdgeInsets.all(3.0),
                                          child: pw.Row(children: [
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Buyer's Order No.",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _buyer_order_no.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                            pw.SizedBox(width: 100, height: 24),
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Dated",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(dte1,
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                          ]))),
                                  pw.Divider(height: 1),
                                  pw.Container(
                                      //5
                                      width: 240,
                                      height: 24,
                                      child: pw.Padding(
                                          padding: pw.EdgeInsets.all(3.0),
                                          child: pw.Row(children: [
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                      "Despatched Document No.",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _despatch_doc_no.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                            pw.SizedBox(width: 72, height: 24),
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Dated",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(dte2,
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                          ]))),
                                  pw.Divider(height: 1),
                                  pw.Container(
                                      //6
                                      width: 240,
                                      height: 24,
                                      child: pw.Padding(
                                          padding: pw.EdgeInsets.all(3.0),
                                          child: pw.Row(children: [
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Despatched through",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _despatch_through.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                            pw.SizedBox(width: 93, height: 24),
                                            pw.Column(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text("Destination ",
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0)),
                                                  pw.Text(
                                                      _destination.text
                                                          .toUpperCase(),
                                                      style: pw.TextStyle(
                                                          fontSize: 7.0,
                                                          fontWeight: pw
                                                              .FontWeight.bold))
                                                ]),
                                          ]))),
                                  pw.Divider(height: 1),
                                ])),
                            pw.Divider(height: 1),
                            pw.Container(
                                width: 240,
                                height: 49,
                                child: pw.Padding(
                                    padding: pw.EdgeInsets.all(3.0),
                                    child: pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text("Terms of Delivery",
                                              style:
                                                  pw.TextStyle(fontSize: 7.0)),
                                          pw.Text(
                                              _terms_of_delivery.text
                                                  .toUpperCase(),
                                              style: pw.TextStyle(
                                                  fontSize: 7.0,
                                                  fontWeight:
                                                      pw.FontWeight.bold))
                                        ])))
                          ]),
                          decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                  color: PdfColors.black, width: 4)),
                        ),
                      ]),
                      decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(color: PdfColors.black, width: 4)),
                    ),
                    pw.SizedBox(width: 0, height: 0),
                    pw.Container(
                      width: 480,
                      height: 300,
                      child: pw.Row(children: [
                        pw.Container(
                            //1
                            width: 235,
                            height: 300,
                            child: pw.Column(children: [
                              pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Column(children: [
                                      pw.Text("Description of Goods"),
                                      pw.Divider(height: 1)
                                    ]),
                                    pw.Padding(
                                        padding: pw.EdgeInsets.all(5.0),
                                        child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              if (selectedItem == "1") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight:
                                                            pw.FontWeight.bold))
                                              ] else if (selectedItem ==
                                                  "2") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "3") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "4") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "5") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "6") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "7") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item7.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "8") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(_item2.text,
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item7.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item8.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "9") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item7.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item8.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item9.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "10") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item7.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item8.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item9.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item10.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "11") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item7.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item8.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item9.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item10.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item11.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "12") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(_item2.text,
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item7.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item8.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item9.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item10.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item11.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item12.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "13") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item7.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item8.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item9.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item10.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item11.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item12.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item13.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "14") ...[
                                                pw.Text(
                                                    _item1.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item2.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item3.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item4.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item5.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item6.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item7.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item8.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item9.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item10.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item11.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item12.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item13.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text(
                                                    _item14.text.toUpperCase(),
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ]
                                            ])),
                                  ]),
                              pw.Padding(
                                  padding: pw.EdgeInsets.all(2.0),
                                  child: pw.Container(
                                      width: 235,
                                      height: 60,
                                      child: pw.Column(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.end,
                                          children: [
                                            pw.Text("Excl.GST",
                                                style: pw.TextStyle(
                                                    fontStyle:
                                                        pw.FontStyle.italic,
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text("CGST 2.5%",
                                                style: pw.TextStyle(
                                                    fontStyle:
                                                        pw.FontStyle.italic,
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text("SGST 2.5%",
                                                style: pw.TextStyle(
                                                    fontStyle:
                                                        pw.FontStyle.italic,
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text("ROUND OFF SALES",
                                                style: pw.TextStyle(
                                                    fontStyle:
                                                        pw.FontStyle.italic,
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ])))
                            ])),
                        pw.SizedBox(
                          child: pw.Container(color: PdfColors.black),
                          width: 1,
                          height: 300,
                        ),
                        pw.Container(
                          //2
                          width: 60,
                          height: 300,
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.end,
                              children: [
                                pw.Column(children: [
                                  pw.Text("Quantity"),
                                  pw.Divider(height: 1)
                                ]),
                                pw.Padding(
                                    padding: pw.EdgeInsets.all(5.0),
                                    child: pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.end,
                                        children: [
                                          if (selectedItem == "1") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold))
                                          ] else if (selectedItem == "2") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "3") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "4") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "5") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "6") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "7") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity7.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "8") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity7.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity8.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "9") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity7.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity8.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity9.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "10") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity7.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity8.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity9.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity10.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "11") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity7.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity8.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity9.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity10.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity11.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "12") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity7.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity8.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity9.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity10.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity11.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity12.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "13") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity7.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity8.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity9.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity10.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity11.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity12.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity13.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "14") ...[
                                            pw.Text(_quantity1.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity2.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity3.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity4.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity5.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity6.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity7.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity8.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity9.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity10.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity11.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity12.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity13.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_quantity14.text,
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ]
                                        ]))
                              ]),
                        ),
                        pw.SizedBox(
                          child: pw.Container(color: PdfColors.black),
                          width: 1,
                          height: 300,
                        ),
                        pw.Container(
                          //3
                          width: 60,
                          height: 300,
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.end,
                              children: [
                                pw.Column(children: [
                                  pw.Text("Rate"),
                                  pw.Divider(height: 1)
                                ]),
                                pw.Padding(
                                    padding: pw.EdgeInsets.all(5.0),
                                    child: pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.end,
                                        children: [
                                          if (selectedItem == "1") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold))
                                          ] else if (selectedItem == "2") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "3") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "4") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "5") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "6") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "7") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate7.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "8") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate7.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate8.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "9") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate7.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate8.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate9.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "10") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate7.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate8.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate9.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate10.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "11") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate7.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate8.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate9.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate10.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate11.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "12") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate7.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate8.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate9.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate10.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate11.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate12.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "13") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate7.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate8.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate9.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate10.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate11.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate12.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate13.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "14") ...[
                                            pw.Text(_rate1.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate2.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate3.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate4.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate5.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate6.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate7.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate8.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate9.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate10.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate11.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate12.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate13.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(_rate14.text + ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ],
                                          pw.SizedBox(height: 23, width: 60),
                                          pw.Text("2.50",
                                              style: pw.TextStyle(
                                                  fontStyle:
                                                      pw.FontStyle.italic)),
                                          pw.Text("2.50",
                                              style: pw.TextStyle(
                                                  fontStyle:
                                                      pw.FontStyle.italic))
                                        ]))
                              ]),
                        ),
                        pw.SizedBox(
                          child: pw.Container(color: PdfColors.black),
                          width: 1,
                          height: 300,
                        ),
                        pw.Container(
                            //4
                            width: 40,
                            height: 300,
                            child: pw.Column(children: [
                              pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                                  children: [
                                    pw.Column(children: [
                                      pw.Text("per"),
                                      pw.Divider(height: 1)
                                    ]),
                                    pw.Padding(
                                        padding: pw.EdgeInsets.all(5.0),
                                        child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.end,
                                            children: [
                                              if (selectedItem == "1") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight:
                                                            pw.FontWeight.bold))
                                              ] else if (selectedItem ==
                                                  "2") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "3") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "4") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "5") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "6") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "7") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "8") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "9") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "10") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "11") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "12") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "13") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ] else if (selectedItem ==
                                                  "14") ...[
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                                pw.Text("PCS",
                                                    style: pw.TextStyle(
                                                        fontWeight: pw
                                                            .FontWeight.bold)),
                                              ]
                                            ]))
                                  ]),
                              pw.Container(
                                width: 30,
                                height: 50,
                                child: pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    mainAxisAlignment: pw.MainAxisAlignment.end,
                                    children: [
                                      pw.Text("%"),
                                      pw.Text("%"),
                                      pw.SizedBox(width: 30, height: 5)
                                    ]),
                              )
                            ])),
                        pw.SizedBox(
                          child: pw.Container(color: PdfColors.black),
                          width: 1,
                          height: 300,
                        ),
                        pw.Container(
                          //5
                          width: 80,
                          height: 300,
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.end,
                              children: [
                                pw.Column(children: [
                                  pw.Text("Amount"),
                                  pw.Divider(height: 1)
                                ]),
                                pw.Padding(
                                    padding: pw.EdgeInsets.all(5.0),
                                    child: pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.end,
                                        children: [
                                          if (selectedItem == "1") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "2") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "3") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "4") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "5") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "6") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "7") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity7.text) *
                                                            int.parse(
                                                                _rate7.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "8") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity7.text) *
                                                            int.parse(
                                                                _rate7.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity8.text) *
                                                            int.parse(
                                                                _rate8.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "9") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity7.text) *
                                                            int.parse(
                                                                _rate7.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity8.text) *
                                                            int.parse(
                                                                _rate8.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity9.text) *
                                                            int.parse(
                                                                _rate9.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "10") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity7.text) *
                                                            int.parse(
                                                                _rate7.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity8.text) *
                                                            int.parse(
                                                                _rate8.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity9.text) *
                                                            int.parse(
                                                                _rate9.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity10.text) *
                                                            int.parse(
                                                                _rate10.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "10") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity7.text) *
                                                            int.parse(
                                                                _rate7.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity8.text) *
                                                            int.parse(
                                                                _rate8.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity9.text) *
                                                            int.parse(
                                                                _rate9.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity10.text) *
                                                            int.parse(
                                                                _rate10.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity11.text) *
                                                            int.parse(
                                                                _rate11.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "12") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity7.text) *
                                                            int.parse(
                                                                _rate7.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity8.text) *
                                                            int.parse(
                                                                _rate8.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity9.text) *
                                                            int.parse(
                                                                _rate9.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity10.text) *
                                                            int.parse(
                                                                _rate10.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity11.text) *
                                                            int.parse(
                                                                _rate11.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity12.text) *
                                                            int.parse(
                                                                _rate12.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "13") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity7.text) *
                                                            int.parse(
                                                                _rate7.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity8.text) *
                                                            int.parse(
                                                                _rate8.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity9.text) *
                                                            int.parse(
                                                                _rate9.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity10.text) *
                                                            int.parse(
                                                                _rate10.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity11.text) *
                                                            int.parse(
                                                                _rate11.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity12.text) *
                                                            int.parse(
                                                                _rate12.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity13.text) *
                                                            int.parse(
                                                                _rate13.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ] else if (selectedItem == "14") ...[
                                            pw.Text(
                                                (int.parse(_quantity1.text) *
                                                            int.parse(
                                                                _rate1.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity2.text) *
                                                            int.parse(
                                                                _rate2.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity3.text) *
                                                            int.parse(
                                                                _rate3.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity4.text) *
                                                            int.parse(
                                                                _rate4.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity5.text) *
                                                            int.parse(
                                                                _rate5.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity6.text) *
                                                            int.parse(
                                                                _rate6.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity7.text) *
                                                            int.parse(
                                                                _rate7.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity8.text) *
                                                            int.parse(
                                                                _rate8.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity9.text) *
                                                            int.parse(
                                                                _rate9.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity10.text) *
                                                            int.parse(
                                                                _rate10.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity11.text) *
                                                            int.parse(
                                                                _rate11.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity12.text) *
                                                            int.parse(
                                                                _rate12.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity13.text) *
                                                            int.parse(
                                                                _rate13.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.Text(
                                                (int.parse(_quantity14.text) *
                                                            int.parse(
                                                                _rate14.text))
                                                        .toString() +
                                                    ".00",
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                          ],
                                          pw.Divider(height: 1),
                                          pw.Text(exclgststr,
                                              style: pw.TextStyle(
                                                  fontWeight:
                                                      pw.FontWeight.bold)),
                                          pw.Text("$cgst",
                                              style: pw.TextStyle(
                                                  fontWeight:
                                                      pw.FontWeight.bold)),
                                          pw.Text("$sgst",
                                              style: pw.TextStyle(
                                                  fontWeight:
                                                      pw.FontWeight.bold)),
                                          pw.Text("$roundoff",
                                              style: pw.TextStyle(
                                                  fontWeight:
                                                      pw.FontWeight.bold)),
                                        ]))
                              ]),
                        ),
                        pw.SizedBox(
                          child: pw.Container(color: PdfColors.black),
                          width: 1,
                          height: 300,
                        ),
                      ]),
                      decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(color: PdfColors.black, width: 4)),
                    ),
                    pw.SizedBox(width: 0, height: 0),
                    pw.Container(
                        width: 480,
                        height: 20,
                        child: pw.Row(children: [
                          pw.Container(
                              width: 235,
                              height: 15,
                              child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                                  children: [
                                    pw.Text("Total",
                                        style: pw.TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: pw.FontWeight.bold))
                                  ])),
                          pw.VerticalDivider(width: 1, color: PdfColors.black),
                          pw.Container(
                              width: 60,
                              height: 15,
                              child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                                  children: [
                                    pw.Text("$totqty",
                                        style: pw.TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: pw.FontWeight.bold))
                                  ])),
                          pw.VerticalDivider(width: 1, color: PdfColors.black),
                          pw.SizedBox(width: 1, height: 15),
                          pw.Container(
                              width: 60, height: 15, color: PdfColors.white),
                          pw.VerticalDivider(width: 1, color: PdfColors.black),
                          pw.SizedBox(width: 1, height: 15),
                          pw.Container(
                              width: 40, height: 15, color: PdfColors.white),
                          pw.VerticalDivider(width: 1, color: PdfColors.black),
                          pw.SizedBox(width: 1, height: 15),
                          pw.Container(
                              width: 75,
                              height: 15,
                              child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                                  children: [
                                    pw.Padding(
                                        padding: pw.EdgeInsets.all(1.0),
                                        child: pw.Text("$total" + ".00",
                                            style: pw.TextStyle(
                                                fontSize: 10.0,
                                                fontWeight:
                                                    pw.FontWeight.bold)))
                                  ])),
                        ])),
                    pw.SizedBox(width: 0, height: 0),
                    pw.Container(
                      width: 480,
                      height: 80, //90
                      child: pw.Row(children: [
                        pw.Container(
                            width: 400,
                            height: 75,

                            ///85
                            child: pw.Padding(
                                padding: pw.EdgeInsets.all(2.0),
                                child: pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Container(
                                          width: 395,
                                          height: 30,

                                          ///40
                                          child: pw.Column(
                                              crossAxisAlignment:
                                                  pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.Text(
                                                    "Amount Chargeable (in words)"),
                                                pw.Text(totstr,
                                                    style: pw.TextStyle(
                                                        fontWeight:
                                                            pw.FontWeight.bold))
                                              ])),
                                      pw.Container(
                                          width: 395,
                                          height: 40, //40
                                          child: pw.Column(
                                              crossAxisAlignment:
                                                  pw.CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  pw.MainAxisAlignment.end,
                                              children: [
                                                pw.RichText(
                                                    text: pw.TextSpan(
                                                        text:
                                                            "Buyer's Local Sales Tax No. : ",
                                                        children: <pw.TextSpan>[
                                                      pw.TextSpan(
                                                          text: "GSTIN:" +
                                                              _gstno.text
                                                                  .toUpperCase(),
                                                          style: pw.TextStyle(
                                                              fontWeight: pw
                                                                  .FontWeight
                                                                  .bold))
                                                    ]))
                                              ]))
                                    ]))),
                        pw.SizedBox(width: 1, height: 75),
                        pw.Container(
                            width: 80,
                            height: 75,
                            child: pw.Padding(
                                padding: pw.EdgeInsets.all(5.0),
                                child: pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.end,
                                    children: [
                                      pw.Text("E & O.E.",
                                          style: pw.TextStyle(
                                              fontStyle: pw.FontStyle.italic))
                                    ])))
                      ]),
                      decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(color: PdfColors.black, width: 4)),
                    ),
                    pw.SizedBox(width: 0, height: 0),
                    pw.Container(
                      width: 480,
                      height: 75, //85
                      child: pw.Padding(
                          padding: pw.EdgeInsets.all(1.0),
                          child: pw.Row(children: [
                            pw.Container(
                                width: 350, //380
                                height: 85,
                                child: pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Text("Declaration"),
                                      pw.Text(
                                          "We declare that this invoice shows the actual price of the"),
                                      pw.Text(
                                          "goods described and that all particulars are true and"),
                                      pw.Text("correct."),
                                    ])),
                            pw.SizedBox(width: 1, height: 85),
                            pw.Container(
                                child: pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.end,
                                    children: [
                                  pw.Container(
                                      width: 120,
                                      height: 70,
                                      child: pw.Column(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.end,
                                          children: [
                                            pw.Text("for ADITHYA LINSUR",
                                                style: pw.TextStyle(
                                                    fontSize: 10.0,
                                                    fontWeight:
                                                        pw.FontWeight.bold)),
                                            pw.SizedBox(width: 120, height: 40),
                                            pw.Text("Authorised Signatory",
                                                style: pw.TextStyle(
                                                    fontSize: 10.0))
                                          ])),
                                ]))
                          ])),
                      decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(color: PdfColors.black, width: 4)),
                    ),
                  ])),
              pw.Center(
                  child: pw.Text("This is a Computer Generated Invoice",
                      style: pw.TextStyle(fontSize: 11.0)))
            ]));
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}

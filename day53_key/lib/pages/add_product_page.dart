import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class AddProductPage extends StatefulWidget {
  static const routeName = "/add-product";

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController titleController = TextEditingController();
// DateTime date;
   var date =DateTime.now() ;

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              products.addProduct(titleController.text, date);
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextField(
                autocorrect: false,
                controller: titleController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Product Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (date == null)
                          ? "No date chosen..."
                          : DateFormat().add_yMMMMd().format(date),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2022),
                        ).then(
                          (value) {
                            setState(() {
                              date = value!;
                            });
                          },
                        );
                      },
                      child: Text(
                        "Select Date",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

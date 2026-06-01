import 'package:flutter/material.dart';
import 'package:to_do/widgets/add_entry_bottom_sheet.dart';
import 'package:to_do/widgets/card.dart';

class todoScreen extends StatelessWidget {
  const todoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My To Do List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return EntryCard(); // class name of card.dart
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) {
              return AddEntryBottomSheet();
            },
          );
        },
        backgroundColor: const Color.fromARGB(255, 3, 180, 142),
        child: Icon(Icons.add, color: const Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}

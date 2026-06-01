import 'package:flutter/material.dart';

class AddEntryBottomSheet extends StatefulWidget {
  const AddEntryBottomSheet({super.key});

  @override
  State<AddEntryBottomSheet> createState() => _AddEntryBottomSheetState();
}

class _AddEntryBottomSheetState extends State<AddEntryBottomSheet> {
  // text editing controllers
  TextEditingController _titleEditingControler = TextEditingController();
  TextEditingController _contentEditingControler = TextEditingController();

  void printData() {
    print(_titleEditingControler.text);
    print(_contentEditingControler.text);

    _titleEditingControler.clear(); // to erase or clear after pressing button
    _contentEditingControler.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // wrap the column with padding
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                // textfield is used for text input from user
                controller: _titleEditingControler,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Title",
                ),
              ),

              SizedBox(height: 16),

              TextField(
                // textfield is used for text input from user
                controller: _contentEditingControler,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Content",
                ),
              ),

              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {
                      Navigator.pop(
                        context,
                      ); // to get out of this page after pressing cancel
                    },
                    child: const Text(
                      "Cancle",
                      style: TextStyle(color: Color.fromARGB(255, 204, 6, 65)),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pop(
                        context,
                      ); // to get out of this page after pressing save
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

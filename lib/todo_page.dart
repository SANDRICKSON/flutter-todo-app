import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TodoPage extends StatefulWidget {
  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<String> items = [];

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: items.isEmpty
                ? Center(
              child: Text(
                "სია ცარიელია",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            )
                : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(items[index]),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(items[index]),
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: inputController,
                    decoration: InputDecoration(label: Text("დაამატე ტასკი")),
                  ),
                ),
                Gap(24),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (inputController.text.isNotEmpty) {
                        items.add(inputController.text);
                        inputController.clear();
                      } else {}
                    });
                  },
                  child: Text("დამატება"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          Container(
            // YOUR CODE
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),

            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("title", style: TextStyle(color: Colors.blue)),
                      SizedBox(height: 8),
                      Text('Description'),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.favorite, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);

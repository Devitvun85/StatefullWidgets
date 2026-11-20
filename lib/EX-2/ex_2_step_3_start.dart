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
          FavoriteCard(isfavorite: true),
          FavoriteCard(isfavorite: false),
          FavoriteCard(isfavorite: true),
        ],
      ),
    ),
  ),
);

class FavoriteCard extends StatefulWidget {
  final bool isfavorite;
  const FavoriteCard({super.key, required this.isfavorite});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
    late bool isFavorite = widget.isfavorite;

  

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon:Icon(isFavorite? Icons.favorite:Icons.favorite_border,
                 color: isFavorite?Colors.red:Colors.grey,)

          ),
        ],
      ),
    );
  }
}

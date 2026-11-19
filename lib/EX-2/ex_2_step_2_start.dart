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
          FavoriteCard(isFavorite: true),
          FavoriteCard(isFavorite: false),
          FavoriteCard(isFavorite: true),
        
          
        ],
      ),
    ),
  ),
);

class FavoriteCard extends StatelessWidget {
  final bool isFavorite;
  const FavoriteCard({super.key,required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                  onPressed: () {},
                  //if isFavorite is true, show a filled heart; otherwise, show an empty heart.
                  icon: Icon(isFavorite? Icons.favorite:Icons.favorite_border,color: isFavorite?Colors.red:Colors.grey,)
                ),
              ],
            ),
    );
  
  }
}

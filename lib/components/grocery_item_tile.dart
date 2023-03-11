import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imgPart;
  final color;
  void Function()? onPressed;

   GroceryItemTile({Key? key,
  required this.itemName,
    required this.itemPrice,
    required this.imgPart,
    required this.color,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color[100]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(imgPart,height: 66,),
            // item name
          Text(itemName),
            // price + button
            MaterialButton(
                onPressed: onPressed,
                color: color[800],
                child: Text( '\$$itemPrice',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

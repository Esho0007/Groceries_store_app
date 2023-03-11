import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_store_app/model/card_model.dart';
import 'package:groceries_store_app/pages/cart_page.dart';
import 'package:provider/provider.dart';

import 'components/grocery_item_tile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // good morning...
            const SizedBox(
              height: 46,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Good Morning...',
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // let order some fresh fruits for you
            Text(
              'Lets order some fresh items for you',
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                fontSize: 46,
                fontWeight: FontWeight.bold,
              ),
            ),
            //divider
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Divider(),
            ),
            //fresh items + grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Fresh Items'),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
                    ),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imgPart: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(int, index);
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const CartPage();
            },
          ),
        ),
        child:  const Icon(Icons.add_shopping_cart,),
      ),
    );
  }
}

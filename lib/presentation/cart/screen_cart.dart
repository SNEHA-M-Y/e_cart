import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 177, 242),
        title: const SizedBox(
          width: double.infinity,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search E-Cart.in",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.center_focus_weak,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.mic,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                focusColor: Colors.white,
                fillColor: Colors.white,
                filled: true),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 450,
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Messages about items in your Cart",
                    suffixIcon: Icon(Icons.arrow_forward_ios),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            CartItemsWidget(
              size: size,
              cartimage:
                  "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/5/y/8/-original-imagtt4mhqrzjs9r.jpeg?q=70&crop=false",
              productname: "vivo T2 Pro 5G (Dune Gold, 256 GB)(8 GB RAM)",
              productprice: "₹24,999",
              productcolor: "Colour:New Moon Black,Dune Gold",
              dispatch: "7 Days Service Center Replacement/Repair",
            ),
            SizedBox(
              height: 20,
            ),
            CartItemsWidget(
              size: size,
              cartimage:
                  'https://rukminim2.flixcart.com/image/832/832/xif0q/sunglass/b/g/l/-original-imagvgeupqw6w6hj.jpeg?q=70&crop=false',
              productname:
                  "UV Protection Wayfarer Sunglasses (53)  (For Men & Women, Grey)",
              productprice: "₹899",
              productcolor: "Colour:Grey",
              dispatch: "10 Days",
            ),
            SizedBox(
              height: 20,
            ),
            CartItemsWidget(
              size: size,
              cartimage:
                  'https://rukminim2.flixcart.com/image/832/832/xif0q/shoe/6/x/d/-original-imagtbtffrffnvk6.jpeg?q=70&crop=false',
              productname: " 480 Running Shoes For Men  (White)",
              productprice: "₹4472",
              productcolor: "White",
              dispatch: "5 Days ",
            ),
          ],
        ),
      ),
    );
  }
}

class CartItemsWidget extends StatelessWidget {
  const CartItemsWidget({
    super.key,
    required this.size,
    required this.cartimage,
    required this.productname,
    required this.productprice,
    required this.productcolor,
    required this.dispatch,
  });

  final Size size;
  final String cartimage;
  final String productname;
  final String productprice;
  final String productcolor;
  final String dispatch;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 350,
      width: size.width,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 226, 221, 221),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                blurRadius: 0.5,
                spreadRadius: 0.5,
                offset: Offset(0, 1),
                color: Colors.black38)
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                    width: 180,
                    child: Image.network(
                      width: 180, cartimage,
                      // "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/5/y/8/-original-imagtt4mhqrzjs9r.jpeg?q=70&crop=false"
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productname,
                        // "vivo T2 Pro 5G (Dune Gold, 256 GB)(8 GB RAM)",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        productprice,
                        // "₹24,999",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "In Stock",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 7, 77, 10),
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        productcolor,
                        // "Colour:New Moon Black,Dune Gold",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        dispatch,
                        // "7 Days Service Center Replacement/Repair",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 224, 211, 224)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Compare",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 224, 211, 224)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Save For Later",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 224, 211, 224)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

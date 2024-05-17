import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ScreenExplore extends StatelessWidget {
  const ScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Explore',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic_none_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
        bottom: AppBar(
          title: Text(
            "Products For You",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 280,
        ),
        children: [
          CustomProducts(
            productimage:
                'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/c/4/d/-original-imaghx9qygjjg8hz.jpeg',
            productname: 'iPhone 14 Plus',
            drscription: 'Apple iphone 14 plus (Midnight,128GB)',
            rate: "79,900",
            discount: "₹59,999",
            offer: "24.9% off",
            rating: 4.6,
          ),
          CustomProducts(
            productimage:
                'https://rukminim2.flixcart.com/image/416/416/xif0q/smartwatch/i/o/6/-original-imaghxghyggtah94.jpeg?q=70&crop=false',
            productname: 'Apple Watch SE GPS',
            drscription:
                "Apple Watch SE GPS (2nd Gen) Heart Rate Monitor, Crash Detection, Sleep Tracking",
            rate: "32,900",
            discount: "₹29,999",
            offer: "8% off",
            rating: 4,
          ),
          CustomProducts(
            productimage:
                'https://rukminim2.flixcart.com/image/832/832/xif0q/shoe/p/y/k/9-rpd102-43-rapidbox-white-original-imags9xsg4hhgfvg.jpeg?q=70&crop=false',
            productname: 'AlphaStride Sneakers For Men',
            drscription: 'RapidBox AlphaStride Sneakers For Men  (White)',
            rate: "999",
            discount: "₹549",
            offer: "45% off",
            rating: 3.4,
          ),
          CustomProducts(
            productimage:
                'https://rukminim2.flixcart.com/image/832/832/xif0q/watch/v/f/2/-original-imagrdzghye4wtqq.jpeg?q=70&crop=false',
            productname: 'Analog Watch - For Men PE000017B',
            drscription: 'PETER ENGLAND Analog Watch - For Men PE000017B',
            rate: "3,045",
            discount: "₹1,483",
            offer: "51% off",
            rating: 4,
          ),
          CustomProducts(
            productimage:
                'https://rukminim2.flixcart.com/image/832/832/xif0q/watch/6/2/i/-original-imagnvwuythhzxrj.jpeg?q=70&crop=false',
            productname: 'Bold Fonts Analog Watch - For Men NN38051SM07',
            drscription:
                'Fastrack Bold Fonts Analog Watch - For Men NN38051SM07',
            rate: "1,995",
            discount: "₹1,395",
            offer: "30% off",
            rating: 3.8,
          ),
          CustomProducts(
            productimage:
                'https://rukminim2.flixcart.com/image/832/832/xif0q/track-pant/7/e/n/l-sports-wear-track-pant-and-shorts-combo-yazole-original-imaghqbf6hbydtph.jpeg?q=70&crop=false',
            productname: 'Pack of 2 Solid Men Black Sports Shorts',
            drscription: 'Yazole Pack of 2 Solid Men Black Sports Shorts',
            rate: "2,999",
            discount: "₹379",
            offer: "87% off",
            rating: 3.4,
          ),
        ],
      ),
    );
  }
}

class CustomProducts extends StatelessWidget {
  const CustomProducts({
    super.key,
    required this.productimage,
    required this.productname,
    required this.drscription,
    required this.rate,
    required this.discount,
    required this.offer,
    required this.rating,
  });
  final String productimage;
  final String productname;
  final String drscription;
  final String rate;
  final String discount;
  final String offer;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CachedNetworkImage(
                imageUrl: productimage, height: 150,
                // 'https://www.pngall.com/wp-content/uploads/15/Apple-Watch-No-Background.png',
              ),
            ),
            const Spacer(),
            Text(
              productname,
              //  "Apple Smartwatches",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              drscription,
              // "Apple Watch SE GPS (2nd Gen) Heart Rate Monitor, Crash Detection, Sleep Tracking  ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Text(
                  rate,
                  // "₹32,900",
                  style: TextStyle(
                      color: Colors.black38,
                      decoration: TextDecoration.lineThrough),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                Text(
                  discount,
                  // "₹29,999",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  offer,
                  //  "8% off",
                  style: TextStyle(color: Colors.green),
                  maxLines: 1, overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            RatingBarIndicator(
              rating: rating,
              unratedColor: Colors.black12,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Colors.green,
              ),
              itemCount: 5,
              itemSize: 20,
            )
          ],
        ),
      ),
    );
  }
}

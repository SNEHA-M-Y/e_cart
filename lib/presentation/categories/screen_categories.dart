import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "All Categories",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mic,
                color: Colors.black,
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: 80,
            height: double.infinity,
            color: Color.fromARGB(255, 241, 206, 217),
            child: ListView(
              children: [
                AllCategories(
                  imagedata:
                      'https://www.freepnglogos.com/uploads/shopping-bag-png/shopping-bag-plaseto-bag-plaseto-bags-manufacturer-west-bengal-17.png',
                  name: "For You",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://rukminim2.flixcart.com/flap/64/64/image/29327f40e9c4d26b.png?q=100',
                  name: "Grocery",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://static.vecteezy.com/system/resources/previews/026/721/203/original/washing-machine-and-laundry-laundry-sticker-png.png',
                  name: "Appliances",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://rukminim2.flixcart.com/flap/64/64/image/22fddf3c7da4c4f4.png?q=100',
                  name: "Mobiles",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://www.pngall.com/wp-content/uploads/5/Samsung-TV-PNG-Clipart.png',
                  name: "Electronics",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata: 'https://freepngimg.com/thumb/categories/2356.png',
                  name: "Home",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://www.pngall.com/wp-content/uploads/2016/06/Furniture-PNG-Clipart.png',
                  name: "Furniture",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://cdni.iconscout.com/illustration/premium/thumb/skin-care-product-9774568-7974586.png',
                  name: "Personal Care",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata: 'https://pngimg.com/d/teddy_bear_PNG57.png',
                  name: "Toys & Baby",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://cdn3d.iconscout.com/3d/premium/thumb/food-and-drink-5727926-4800418.png?f=webp',
                  name: "Food & More",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Sport_balls.svg/800px-Sport_balls.svg.png',
                  name: "Sports Hub",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://rukminim1.flixcart.com/flap/64/64/image/71050627a56b4693.png?q=100',
                  name: "Travel",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata: 'https://pngimg.com/d/gift_PNG100372.png',
                  name: "Gift Cards",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata: 'https://www.moralpharma.com/images/newpharma.png',
                  name: "Medicines",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://www.odtap.com/wp-content/uploads/2019/03/home-services.png',
                  name: "Home Services",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                  imagedata:
                      'https://www.pngall.com/wp-content/uploads/2/Sports-Bike-PNG-Picture.png',
                  name: "Bike & Scooters",
                ),
                Divider(
                  color: Colors.black26,
                ),
                AllCategories(
                    imagedata:
                        'https://static.vecteezy.com/system/resources/thumbnails/019/616/875/small/insurance-hands-and-shield-png.png',
                    name: "Insurance")
              ],
            ),
          ),
          Container(
            width: size.width - 80,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Store",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 320,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 20,
                          mainAxisExtent: 140,
                          crossAxisSpacing: 15),
                      children: [
                        PopularStoreWidget(
                          imagepath:
                              'https://roobai.com/assets/img/sale_cat_img/qCK8v.png',
                          dataname: "Sale is Live",
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://i.pinimg.com/originals/77/12/47/77124761f8510f6df2fd307827e28505.png',
                          dataname: "Cricket Fever",
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://cdn-icons-png.flaticon.com/512/66/66841.png',
                          dataname: "One Day Delivery",
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://www.pngall.com/wp-content/uploads/13/Galaxy-S23-Ultra-PNG-Clipart.webp',
                          dataname: "Mobiles",
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://static.vecteezy.com/system/resources/previews/030/351/270/non_2x/cosmetics-images-ai-generative-free-png.png',
                          dataname: "Makeup",
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://www.pngall.com/wp-content/uploads/5/Bluetooth-Headset-PNG-Free-Image.png',
                          dataname: "Bluetooth Headphones",
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSagXlg5ZOBrWXkz70o52oU-4Z3cLaP1UBg5xzFFtJKCw&s',
                          dataname: "Travel",
                        ),
                        PopularStoreWidget(
                            imagepath:
                                'https://www.pngall.com/wp-content/uploads/14/Down-Arrow-PNG-Images.png',
                            dataname: "View All")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Have You Tried?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // SizedBox(
                  // height: 20,
                  //  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: 130,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20),
                      children: [
                        PopularStoreWidget(
                          imagepath:
                              'https://www.payway.com/wp-content/uploads/hero-img-20.png',
                          dataname: "Scan & Pay",
                          color: Color.fromARGB(106, 132, 181, 247),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://cdn3d.iconscout.com/3d/premium/thumb/game-coin-11210836-9006795.png',
                          dataname: "Super Coin",
                          color: Color.fromARGB(150, 255, 230, 163),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://icons.veryicon.com/png/o/commerce-shopping/o2o-business-platform/coupon-59.png',
                          dataname: "Coupons",
                          color: Color.fromARGB(83, 235, 147, 141),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://cdn3d.iconscout.com/3d/premium/thumb/postpaid-bill-payment-2870168-2386920.png',
                          dataname: "Bill & Recharge",
                          color: Color.fromARGB(82, 141, 166, 235),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Money_Flat_Icon.svg/800px-Money_Flat_Icon.svg.png',
                          dataname: "Money +",
                          color: Color.fromARGB(82, 141, 235, 149),
                        ),
                        PopularStoreWidget(
                          imagepath: 'https://postalrmsbank.in/im/l1.png',
                          dataname: "Personal Loan",
                          color: Color.fromARGB(82, 141, 182, 235),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://styles.redditmedia.com/t5_2qph1/styles/communityIcon_j1e4i0asql951.png',
                          dataname: "Free Credit Score",
                          color: Color.fromARGB(82, 198, 253, 190),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://cdn2.iconfinder.com/data/icons/fire-flame-1/500/nim1040_7_burn_fire_flame_frame_-512.png',
                          dataname: "FireDrops",
                          color: Color.fromARGB(82, 235, 194, 141),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://static.thenounproject.com/png/94050-200.png',
                          dataname: "Become a Seller",
                          color: Color.fromARGB(82, 190, 141, 235),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://static.vecteezy.com/system/resources/previews/027/688/016/non_2x/a-blue-and-orange-play-button-icon-free-png.png',
                          dataname: "Liveshop +",
                          color: Color.fromARGB(82, 141, 179, 235),
                        ),
                        PopularStoreWidget(
                          imagepath:
                              'https://www.pngall.com/wp-content/uploads/14/Down-Arrow-PNG-Images.png',
                          dataname: "View All",
                          color: Color.fromARGB(82, 141, 235, 230),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // color: Colors.cyan,
          )
        ],
      ),
    );
  }
}

class PopularStoreWidget extends StatelessWidget {
  const PopularStoreWidget({
    super.key,
    required this.imagepath,
    required this.dataname,
    this.color = const Color.fromARGB(34, 135, 147, 150),
    this.offer = "",
  });
  final String imagepath;
  final String dataname;
  final Color color;
  final String offer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                imagepath,
                // 'https://roobai.com/assets/img/sale_cat_img/qCK8v.png',
              ),
            ),
            Positioned(
              bottom: 0,
              child: Text(
                offer,
                style: TextStyle(
                    backgroundColor: Colors.indigo[500],
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            )
          ],
        ),
        Text(
          dataname,
          // "Sale is Live",
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class AllCategories extends StatelessWidget {
  const AllCategories({
    super.key,
    required this.imagedata,
    required this.name,
  });
  final String imagedata;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imagedata,
          // 'https://www.freepnglogos.com/uploads/shopping-bag-png/shopping-bag-plaseto-bag-plaseto-bags-manufacturer-west-bengal-17.png',
          height: 60,
        ),
        Text(
          name,
          // "For You",
          style: TextStyle(
              color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

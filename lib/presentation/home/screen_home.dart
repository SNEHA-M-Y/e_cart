import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_cart/presentation/home/grocery/grocery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

final List slidingImages = [
  "https://rukminim1.flixcart.com/flap/700/300/image/b0e088ff138c58be.jpg?q=90",
  "https://rukminim1.flixcart.com/flap/700/300/image/aebf043a3a4f15d6.jpg?q=90",
  "https://rukminim1.flixcart.com/flap/700/300/image/c16af8723f41e655.jpeg?q=90",
  "https://rukminim1.flixcart.com/flap/700/300/image/a395b780f474838c.jpg?q=90",
  "https://rukminim1.flixcart.com/flap/700/300/image/714233634472f340.jpeg?q=90",
  "https://rukminim1.flixcart.com/flap/700/300/image/24d2d83a84eee76b.jpg?q=90",
  "https://rukminim1.flixcart.com/flap/700/300/image/b92081b232f55ec0.jpeg?q=90",
  "https://rukminim1.flixcart.com/flap/700/300/image/4786aae94e794340.jpg?q=90",
];
final addimage =
    "https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/0e6fd0a2-d6d4-42a6-a843-6d78bfd32615.jpg";

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: TabBar(
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: "🛒 E-Cart",
              ),
              Tab(
                text: "🛍️ Grocery",
              )
            ],
          ),
        ),
        backgroundColor: Colors.white10,
        body: TabBarView(
          children: [
            _ecart(context),
            Grocery(),
          ],
        ),
      ),
    );
  }

  bool switchValue = true;
  ListView _ecart(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Column(
              children: [
                Text("Brand Mall"),
                CupertinoSwitch(

                    // This bool value toggles the switch.
                    value: switchValue,
                    activeColor: CupertinoColors.activeBlue,
                    onChanged: (value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        switchValue = value;
                      });
                    }),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search_outlined),
                  suffixIcon: Icon(Icons.mic_none_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
        CarouselSlider.builder(
          itemCount: slidingImages.length,
          itemBuilder: (context, index, realIndex) {
            return CachedNetworkImage(imageUrl: slidingImages[index]);
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: slidingImages.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 6.0,
                height: 6.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        Container(
          width: double.infinity,
          height: 250,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisExtent: 150,
              crossAxisSpacing: 10,
            ),
            children: [
              CustomWavyButton(
                  wavyimagurl: "logos/Scan_Pay.png", data: "Scan & Pay"),
              CustomWavyButton(
                  wavyimagurl: "logos/Mobiles.png", data: "Mobiles"),
              CustomWavyButton(
                  wavyimagurl: "logos/fashion.png", data: "Fashion"),
              CustomWavyButton(
                  wavyimagurl: "logos/tvs_appliances.png",
                  data: "Tvs & Appliances"),
              CustomWavyButton(
                  wavyimagurl: "logos/beauty_toys.png",
                  data: "Beauty,Food,Toys,Sports..."),
              CustomWavyButton(
                  wavyimagurl: "logos/smart_gadgets.png",
                  data: "Smart Gadgets"),
              CustomWavyButton(
                  wavyimagurl: "logos/Electronics.png", data: "Electronics"),
              CustomWavyButton(
                  wavyimagurl: "logos/home_furniture.png",
                  data: "Home & Furniture "),
              CustomWavyButton(
                  wavyimagurl: "logos/flights_buses_more.png",
                  data: "Flight,Buse & More"),
              CustomWavyButton(
                  wavyimagurl: "logos/grocery.png", data: "Grocery"),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Color.fromARGB(193, 255, 225, 246),
              Color.fromARGB(193, 255, 225, 246),
              Colors.white
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            child: Image.network(
              addimage,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Text(
          "BRANDS OF THE DAY",
          style: GoogleFonts.cinzel(
            textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisExtent: 220, crossAxisSpacing: 10),
            children: [
              // CachedNetworkImage(
              //     imageUrl:
              //         'https://pngimg.com/uploads/gas_stove/gas_stove_PNG66.png'),
              CustomBrands(
                brandsimage:
                    'https://pngimg.com/uploads/gas_stove/gas_stove_PNG66.png',
                brandname: "Cooker,Gas Stove",
                brandprice: "Up to 70% Off",
              ),

              CustomBrands(
                  brandsimage:
                      'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/c/4/d/-original-imaghx9qygjjg8hz.jpeg',
                  brandname: "iPhone 14 Plus",
                  brandprice: " Just ₹59,999* "),

              CustomBrands(
                  brandsimage:
                      'https://www.pngall.com/wp-content/uploads/15/Apple-Watch-No-Background.png',
                  brandname: "Apple Smartwatches",
                  brandprice: "From ₹26,999")
            ],
          ),
        )
      ],
    );
  }
}

class CustomBrands extends StatelessWidget {
  const CustomBrands({
    super.key,
    required this.brandsimage,
    required this.brandname,
    required this.brandprice,
  });
  final String brandsimage;
  final String brandname;
  final String brandprice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: CachedNetworkImage(
            imageUrl: brandsimage,
            // 'https://pngimg.com/uploads/gas_stove/gas_stove_PNG66.png',
            height: 150,
          ),
        ),
        Container(
          height: 25,
          width: double.infinity,
          color: Colors.black,
          child: Text(
            brandname,
            // "Cooker,Gas Stove",
            style: TextStyle(color: Colors.white, fontSize: 12),
            maxLines: 1, overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            brandprice,
            // "Up to 70% Off",
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class CustomWavyButton extends StatelessWidget {
  const CustomWavyButton({
    super.key,
    required this.wavyimagurl,
    required this.data,
  });
  final String wavyimagurl;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: WavyCircleClipper(30),
          child: Container(
            height: 80,
            width: 80,
            child: Image.asset(
              wavyimagurl,
              // "logos/Scan_Pay.png",
              scale: 1.5,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 250, 196, 234), Colors.white],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
          ),
        ),
        Text(
          data,
          // "Scan & Pay",
          style: TextStyle(color: Colors.black, fontSize: 12),
          textAlign: TextAlign.center,
        ),
        // Text("BRANDS OF THE DAY",style:GoogleFonts.cinzel(textStyle: TextStyle(fontSize: ),
        // ),)
      ],
    );
  }
}
// Container(
//           height: 150,
//           width: 150,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Colors.white,
//               Color.fromARGB(255, 250, 196, 234),
//               Color.fromARGB(255, 250, 196, 234),
//               Colors.white
//             ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
//           ),
//         )
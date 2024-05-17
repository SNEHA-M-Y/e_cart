import 'package:e_cart/presentation/categories/screen_categories.dart';
import 'package:flutter/material.dart';

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Search E-Cart.in",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.checklist_outlined,
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
                    fillColor: Colors.white24,
                    filled: true),
              ),
            ),
          ),
          Center(
            child: Text(
              "Shop by Category",
              style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 11, 88, 13),
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 420,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 150,
                crossAxisCount: 4,
              ),
              children: [
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/416/416/xif0q/flour/4/9/2/2-certified-organic-whole-wheat-flour-stone-ground-100-whole-original-imagmv7bqadjucpw.jpeg?q=70&crop=false',
                  dataname: 'Atta,Rice & Dal',
                  offer: "Upto 40% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/416/416/xif0q/ready-meal/t/v/t/-original-imagjxxfcpmemz23.jpeg?q=70&crop=false',
                  dataname: 'Spices, Salt & Sugar',
                  offer: "Upto 60% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/416/416/xif0q/edible-oil/j/v/q/6-gold-refined-cooking-rice-bran-sunflower-can-1-blended-oil-original-imagwyvf9wygpf2q.jpeg?q=70&crop=false',
                  dataname: 'Oil & Ghee',
                  offer: "Upto 60% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/416/416/kwv0djk0/nut-dry-fruit/t/l/6/-original-imag9fuswbq7uews.jpeg?q=70&crop=false',
                  dataname: 'Dry Fruits,Nuts & Seeds',
                  offer: "Upto 50% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/416/416/kz7bcsw0/chips/z/6/x/100-combo-pack-of-potato-chips-piri-piri-lime-chips-flavor-100-original-imagb9hy7qg2j8kg.jpeg?q=70&crop=false',
                  dataname: 'Snacks & Packaged Food',
                  offer: "Upto 65% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/416/416/xif0q/aerated-drink/f/z/9/1-5-wild-berry-bubbly-fruit-drink-can-6-rio-original-imagysbfu9jcvccz.jpeg?q=70&crop=false',
                  dataname: 'Bevarages',
                  offer: "Upto 60% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/416/416/xif0q/chocolate/t/5/a/-original-imahyuhmzrz6jwkk.jpeg?q=70&crop=false',
                  dataname: 'Chocolates & Sweets',
                  offer: "Upto 60% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/612/612/xif0q/dish-cleaning-gel/g/e/9/lemon-dish-wash-liquid-bottle-1-biovidhan-original-imagxx7ycm5xrhbe.jpeg?q=70',
                  dataname: 'Laundry & Dishwash',
                  offer: "Upto 60% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/612/612/kljrvrk0/combo-kit/j/c/u/herbal-skin-care-combo-products-kit-pack-lemon-honey-face-wash-1-original-imagyn9kdwrgnmw5.jpeg?q=70',
                  dataname: 'Body & Skin Care',
                  offer: "Upto 60% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/612/612/xif0q/hair-serum/o/o/m/200-alips-rosemary-water-hair-spray-for-regrowth-hair-growth-original-imahyvxyqn3d5xfy.jpeg?q=70',
                  dataname: 'Hair Care',
                  offer: "Upto 60% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/612/612/xif0q/mouthwash/v/d/e/250-mouthwash-complete-protection-all-in-one-mouth-wash-for-original-imagtzuabfmxmgw2.jpeg?q=70',
                  dataname: 'Oral Care & Wellness',
                  offer: "Upto 60% Off",
                ),
                PopularStoreWidget(
                  imagepath:
                      'https://rukminim2.flixcart.com/image/612/612/xif0q/toilet-cleaner/k/i/f/na-3-original-powerplus-1000-ml-pack-of-2-bathroom-cleaner-lemon-original-imagutjwpgb29gsp.jpeg?q=70',
                  dataname: 'Household & Cleaning',
                  offer: "Upto 50% Off",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Hey! Joe",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.wallet),
                SizedBox(
                  width: 10,
                ),
                Text("₹45.5")
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 150,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 50,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5),
              children: [
                CustomAccountList(
                  icon: Icons.shopping_cart,
                  data: "Your Orders",
                  color: Color.fromARGB(255, 1, 54, 98),
                ),
                CustomAccountList(
                  icon: Icons.favorite,
                  data: "Wishlist",
                  color: Colors.red,
                ),
                CustomAccountList(
                  icon: Icons.card_giftcard,
                  data: "Coupons",
                  color: Colors.purple,
                ),
                CustomAccountList(
                  icon: Icons.help_center,
                  data: "Help Center",
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            title: Text(
              "Add/Verify your Email",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            leading: Icon(
              Icons.mail,
              color: Colors.deepOrange[400],
            ),
            subtitle: Text(
              "Get latest updates of your orders",
              style: TextStyle(color: Colors.black87, fontSize: 12),
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Update",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ),
          Divider(
            color: Colors.black26,
          ),
          Text(
            "Credit Options",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          ListTile(
            title: Text(
              "Personal Loan",
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            subtitle: Text(
              "Instant Loan up to 5 Lakhs",
              style: TextStyle(color: Colors.black38, fontSize: 12),
            ),
            leading: Icon(
              Icons.real_estate_agent,
              color: Colors.blue,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ),
          ListTile(
            title: Text(
              "E-Cart Pay Later",
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            subtitle: Text(
              "Get ₹20,000* worth Times Prime benefits",
              style: TextStyle(color: Colors.black38, fontSize: 12),
            ),
            leading: Icon(
              Icons.calendar_month,
              color: Colors.blue,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ),
          Divider(
            color: Colors.black26,
          ),
          Text(
            "Credit Score",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          ListTile(
            title: Text(
              "Check my Credit Score",
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            subtitle: Text(
              "Free Score Check,Personalised loan Offers",
              style: TextStyle(color: Colors.black38, fontSize: 12),
            ),
            leading: Icon(
              Icons.request_quote,
              color: Colors.blue,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ),
          Divider(
            color: Colors.black26,
          ),
          Text(
            "Try E-Cart in your language",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "English",
                    style: TextStyle(color: Colors.blue),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "മലയാളം",
                    style: TextStyle(color: Colors.black),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "தமிழ்",
                    style: TextStyle(color: Colors.black),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "ಕನ್ನಡ",
                    style: TextStyle(color: Colors.black),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "+ 8 More",
                    style: TextStyle(color: Colors.black),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black26,
          ),
          Text(
            "Account Settings",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          ListTile(
            title: Text(
              "E-Cart Plus",
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            leading: Icon(
              Icons.join_full,
              color: Colors.blue,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ),
          ListTile(
            title: Text(
              "Edit Profile",
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ),
          ListTile(
            title: Text(
              "Saved Cards & Wallet",
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            leading: Icon(
              Icons.wallet,
              color: Colors.blue,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}

class CustomAccountList extends StatelessWidget {
  const CustomAccountList({
    super.key,
    required this.icon,
    required this.data,
    required this.color,
  });
  final IconData icon;
  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            //Icons.shopping_cart,
            // color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            data,
            // "Your Orders",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}

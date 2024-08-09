import 'package:flutter/material.dart';
import 'package:project/profile.dart';
import 'package:project/widgets/Vscroll.dart';
import 'package:project/widgets/creditCard.dart';

class wallet extends StatefulWidget {
  const wallet({super.key});

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images.jpg'),
          radius: 50,
        ),
        title: Center(
          child: Text(
            "Wallet",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        automaticallyImplyLeading: true,
        actions: [
          PopupMenuButton<String>(
            color: Color.fromARGB(255, 0, 0, 0),
            onSelected: (String choice) {
              if (choice == 'profile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              } else
                setState(() {
                  Navigator.pop(context);
                });
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Home',
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'profile',
                  child: Text(
                    'profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(30),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        child: Text(
                          "+",
                          style: TextStyle(
                            height: 1.0,
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    child: CreditCardWidget(color: Colors.white),
                    width: 350,
                    height: 220,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    child: CreditCardWidget(
                        color: Color.fromARGB(255, 248, 163, 105)),
                    width: 350,
                    height: 220,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    Icon(Icons.tune_rounded)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WidgetItem(
                  icon: Icons.laptop_mac,
                  title: 'Dribbble',
                  subtitle: 'Subscription fee',
                  amount: '-\$15.00',
                  color: Color.fromARGB(255, 248, 226, 194),
                  textcolor: Colors.red,
                  iconcolor: Color.fromARGB(255, 245, 179, 81),
                ),
                SizedBox(height: 16),
                WidgetItem(
                    icon: Icons.file_download_outlined,
                    title: 'house',
                    subtitle: 'saving',
                    amount: '-\$50.00',
                    color: Color.fromARGB(255, 194, 195, 248),
                    textcolor: Colors.red,
                    iconcolor: Color.fromARGB(255, 81, 92, 245)),
                SizedBox(height: 16),
                WidgetItem(
                    icon: Icons.shopping_bag_outlined,
                    title: 'Sony Camera',
                    subtitle: 'Shopping fee',
                    amount: '-\$200.00',
                    color: Color.fromARGB(255, 248, 213, 224),
                    textcolor: Colors.red,
                    iconcolor: Color.fromARGB(255, 250, 123, 165)),
                SizedBox(height: 16),
                WidgetItem(
                    icon: Icons.credit_card,
                    title: 'Paypal',
                    subtitle: 'Salary',
                    amount: '-\$32.00',
                    color: Color.fromARGB(255, 183, 250, 185),
                    textcolor: Colors.green,
                    iconcolor: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

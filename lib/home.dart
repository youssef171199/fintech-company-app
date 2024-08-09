import 'package:flutter/material.dart';
import 'package:project/profile.dart';
import 'package:project/wallet.dart';
import 'package:project/widgets/Vscroll.dart';
import 'package:project/widgets/hscroll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images.jpg'),
            radius: 50,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Text(
                  "Good Morning!",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text("Client Name",
                    style: TextStyle(fontSize: 25, color: Colors.black)),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  size: 40,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: Text(
                    '\$25,000.40',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'My Wallet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => wallet()),
                            );
                          });
                        },
                        icon: Icon(Icons.arrow_forward),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 350,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Income', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.arrow_downward, color: Colors.green),
                          SizedBox(width: 8),
                          Text('\$ 20,000',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Outcome', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.arrow_upward, color: Colors.red),
                          SizedBox(width: 8),
                          Text('\$ 17,000',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Earnings",
                      style: TextStyle(fontSize: 30),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Text("see all",
                            style: TextStyle(color: Colors.blue))),
                  ],
                )),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Hscroll(
                  icon: 'U',
                  title: 'Upwork',
                  price: '3,000',
                  color: Colors.redAccent,
                ),
                Hscroll(
                    color: Color.fromARGB(255, 245, 128, 167),
                    icon: "F",
                    price: "3,000",
                    title: "freepik"),
                Hscroll(
                    icon: 'W',
                    title: 'Envato',
                    price: '2,000',
                    color: Colors.blueAccent),
              ],
            ),
          ),
          Center(
            child: Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      style: TextStyle(fontSize: 30),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Text("see all",
                            style: TextStyle(color: Colors.blue))),
                  ],
                )),
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
                      "Today",
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 92, 90, 90)),
                    ),
                  ],
                )),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetItem(
                icon: Icons.laptop_mac,
                title: 'Adobe Illustrator',
                subtitle: 'Subscription fee',
                amount: '-\$32.00',
                color: Color.fromARGB(255, 248, 226, 194),
                textcolor: Colors.red,
                iconcolor: Color.fromARGB(255, 245, 179, 81),
              ),
              SizedBox(height: 16),
              WidgetItem(
                  icon: Icons.laptop_mac,
                  title: 'Dribbble',
                  subtitle: 'Subscription fee',
                  amount: '-\$15.00',
                  color: Color.fromARGB(255, 248, 226, 194),
                  textcolor: Colors.red,
                  iconcolor: Color.fromARGB(255, 245, 179, 81)),
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
                  amount: '+\$32.00',
                  color: Color.fromARGB(255, 183, 250, 185),
                  textcolor: Colors.green,
                  iconcolor: Colors.green),
            ],
          ),
        ]),
      ),
    );
  }
}

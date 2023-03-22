import 'package:flutter/material.dart';
import 'package:paal_kanakku/screens/add_provision_screen.dart';
import 'package:paal_kanakku/screens/add_service_screen.dart';
import 'package:paal_kanakku/screens/goods_entry.dart';
import 'package:paal_kanakku/screens/list_provisions_screen.dart';
import 'package:paal_kanakku/screens/list_services_screen.dart';
import 'package:paal_kanakku/screens/service_entry_screen.dart';

import 'provision_entry_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100), //height of appbar
          child: Container(
            color: Colors.lightBlue,
            child: Column(
              children: [
                AppBar(
                  toolbarHeight: 80.0,
                  backgroundColor: Colors.lightBlue,
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/milk-bottle.png",
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Paal Kanakku",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Track daily provisions/services",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: textTheme.bodyMedium!.fontSize,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.density_medium),
                    ],
                  ),
                  elevation: 0,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 5.0, bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.lightBlueAccent.withOpacity(0.35),
                              ),
                              child: Icon(Icons.chevron_left),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      Colors.lightBlueAccent.withOpacity(0.35),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "March 2023",
                                      style: TextStyle(
                                        fontSize:
                                            textTheme.titleMedium!.fontSize,
                                        fontWeight: FontWeight.bold,
                                        // color: Colors.lightBlue,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Settled: ",
                                          style: TextStyle(
                                            fontSize:
                                                textTheme.caption!.fontSize,
                                            // fontWeight: FontWeight.bold,
                                            // color: Colors.lightBlue,
                                          ),
                                        ),
                                        Text(
                                          "₹400",
                                          style: TextStyle(
                                            fontSize:
                                                textTheme.caption!.fontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Text(
                                          "  |  Pending : ",
                                          style: TextStyle(
                                            fontSize:
                                                textTheme.caption!.fontSize,
                                            // fontWeight: FontWeight.bold,
                                            // color: Colors.lightBlue,
                                          ),
                                        ),
                                        Text(
                                          "₹4200",
                                          style: TextStyle(
                                            fontSize:
                                                textTheme.caption!.fontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.lightBlueAccent.withOpacity(0.35),
                              ),
                              child: Icon(Icons.chevron_right),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Container(
                      //   width: double.infinity,
                      //   padding: EdgeInsets.all(20.0),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10.0),
                      //     color: Colors.grey.withOpacity(0.15),
                      //   ),
                      //   child: Text(
                      //     "Settled: ₹400  |  Pending : 4200",
                      //     style: TextStyle(
                      //       fontSize: textTheme.caption!.fontSize,
                      //       // fontWeight: FontWeight.bold,
                      //       // color: Colors.lightBlue,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Provisions:",
                            style: TextStyle(
                              fontSize: textTheme.titleMedium!.fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProvisionList(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.settings,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Setup",
                                  style: TextStyle(
                                      fontSize:
                                          textTheme.titleMedium!.fontSize),
                                ),
                              ],
                            ),
                          ),
                          // Divider(
                          //   color: Colors.grey.shade200,
                          //   thickness: 2.0,
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      HomeItemTile(
                        textTheme: textTheme,
                        icon: "🥛",
                        title: "Milk",
                        subtitle: "15 Litre - Rs 600",
                        settledAmount: "200",
                        pendingAmount: "400",
                        itemType: ItemType.provision,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),

                      HomeItemTile(
                        textTheme: textTheme,
                        icon: "💧",
                        title: "Watercane",
                        subtitle: "12 cane - Rs 360",
                        settledAmount: "130",
                        pendingAmount: "130",
                        itemType: ItemType.provision,
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => AddProvision(),
                      //       ),
                      //     );
                      //   },
                      //   child: Text(
                      //     "+ Setup New Provision",
                      //     style: TextStyle(
                      //       color: Colors.blue.withOpacity(0.7),
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 3.0,
                      // ),
                      // Services
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Services:",
                            style: TextStyle(
                              fontSize: textTheme.titleMedium!.fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceList(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.settings,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Setup",
                                  style: TextStyle(
                                      fontSize:
                                          textTheme.titleMedium!.fontSize),
                                ),
                              ],
                            ),
                          ),
                          // Divider(
                          //   color: Colors.grey.shade200,
                          //   thickness: 2.0,
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      HomeItemTile(
                        textTheme: textTheme,
                        icon: "👩🏻‍🍼",
                        title: "Baby Sitter",
                        subtitle: "Monthly - ₹8000",
                        settledAmount: "1000",
                        pendingAmount: "8000",
                        itemType: ItemType.service,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      HomeItemTile(
                        textTheme: textTheme,
                        icon: "🙋🏻‍♀️",
                        title: "Maid",
                        subtitle: "Monthly - ₹4000",
                        settledAmount: "0",
                        pendingAmount: "4000",
                        itemType: ItemType.service,
                      ),

                      // SizedBox(
                      //   height: 5.0,
                      // ),
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => AddService(),
                      //       ),
                      //     );
                      //   },
                      //   child: Text(
                      //     "+ Setup New Service",
                      //     style: TextStyle(
                      //       color: Colors.blue.withOpacity(0.7),
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Row(
            //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Expanded(
            //       child: Container(
            //         margin: EdgeInsets.only(
            //             top: 20, left: 20.0, right: 10.0, bottom: 25.0),
            //         // width: double.infinity,
            //         padding: EdgeInsets.all(20.0),
            //         decoration: BoxDecoration(
            //           color: Colors.greenAccent.withOpacity(0.5),
            //           borderRadius: BorderRadius.circular(20.0),
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             // Text(
            //             //   "🍎 🥚",
            //             //   style: TextStyle(
            //             //     fontSize: textTheme.headline5!.fontSize,
            //             //     fontWeight: FontWeight.bold,
            //             //   ),
            //             // ),
            //             // SizedBox(
            //             //   height: 15.0,
            //             // ),
            //             Text(
            //               "Add Provisions",
            //               style: TextStyle(
            //                 fontSize: textTheme.titleSmall!.fontSize,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.black54,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         margin: EdgeInsets.only(
            //             top: 20, left: 10.0, right: 20.0, bottom: 25.0),
            //         // width: double.infinity,
            //         padding: EdgeInsets.all(20.0),
            //         decoration: BoxDecoration(
            //           color: Colors.lightGreenAccent.withOpacity(0.75),
            //           borderRadius: BorderRadius.circular(20.0),
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             // Text(
            //             //   "👩🏻‍🍳  ️🧑🏻‍🔧",
            //             //   style: TextStyle(
            //             //     fontSize: textTheme.headline5!.fontSize,
            //             //     fontWeight: FontWeight.bold,
            //             //   ),
            //             // ),
            //             // SizedBox(
            //             //   height: 15.0,
            //             // ),
            //             Text(
            //               "Add Services",
            //               style: TextStyle(
            //                 fontSize: textTheme.titleSmall!.fontSize,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.black54,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ));
  }
}

enum ItemType { provision, service }

class HomeItemTile extends StatelessWidget {
  const HomeItemTile({
    Key? key,
    required this.textTheme,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.settledAmount,
    required this.pendingAmount,
    required this.itemType,
  }) : super(key: key);

  final TextTheme textTheme;
  final String icon;
  final String title;
  final String subtitle;
  final String settledAmount;
  final String pendingAmount;
  final ItemType itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: ListTile(
        leading: Text(
          icon,
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.lightBlue,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // fontSize: textTheme.titleLarge!.fontSize,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: textTheme.bodyMedium!.fontSize),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Settled: ",
                    style: TextStyle(
                      fontSize: textTheme.caption!.fontSize,
                      // fontWeight: FontWeight.bold,
                      // color: Colors.lightBlue,
                    ),
                  ),
                  Text(
                    "₹$settledAmount",
                    style: TextStyle(
                      fontSize: textTheme.caption!.fontSize,
                      fontWeight: FontWeight.w400,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "  |  Balance : ",
                    style: TextStyle(
                      fontSize: textTheme.caption!.fontSize,
                      // fontWeight: FontWeight.bold,
                      // color: Colors.lightBlue,
                    ),
                  ),
                  Text(
                    "₹$pendingAmount",
                    style: TextStyle(
                      fontSize: textTheme.caption!.fontSize,
                      // fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Last entry : 2 days before",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: textTheme.bodySmall!.fontSize),
              ),
            ],
          ),
        ),
        trailing: Container(
          // color: Colors.red,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.chevron_right,
                size: 25.0,
                color: Colors.black54,
              ),
            ],
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
        //   child: const Icon(
        //     Icons.chevron_right,
        //     size: 25.0,
        //     color: Colors.black54,
        //   ),
        // ),
        onTap: () {
          if (itemType == ItemType.provision) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProvisionEntryScreen(
                  image: icon,
                  provision: title,
                ),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ServiceEntryScreen(
                  image: icon,
                  provision: title,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:paal_kanakku/models/provision.dart';

import '../models/isar_service.dart';
import 'add_provision_screen.dart';
import 'home_screen.dart';

class ProvisionList extends StatelessWidget {
  const ProvisionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80), //height of appbar
        child: Container(
          color: Colors.lightBlue,
          child: Column(
            children: [
              AppBar(
                // toolbarHeight: 80.0,
                backgroundColor: Colors.lightBlue,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // Text("📖"),
                    // const SizedBox(
                    //   width: 10.0,
                    // ),
                    Text("Provision List"),
                  ],
                ),
                elevation: 0,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Text("Provisions:"),
            //     Spacer(),
            //     TextButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => AddProvision(),
            //           ),
            //         );
            //       },
            //       child: Text("New Provision"),
            //     ),
            //   ],
            // ),
            // HomeItemTile(
            //   textTheme: textTheme,
            //   icon: "💧",
            //   title: "Watercane",
            //   subtitle: "12 cane - Rs 360",
            //   itemType: ItemType.provision,
            // ),
            StreamBuilder<List<Provision>>(
                stream: IsarService().streamProvisions(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final provisions = snapshot.data;
                    if (provisions!.isEmpty) {
                      return Center(
                          child: Column(
                        children: [
                          Text('No Provisions added yet'),
                          SizedBox(
                            height: 30.0,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddProvision()),
                              );
                            },
                            child: Text(
                              "New Provision",
                              // style: TextStyle(color: Colors.white),
                            ),
                            style: OutlinedButton.styleFrom(
                              // backgroundColor: Colors.redAccent,
                              side: BorderSide(width: 1.5, color: Colors.red),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                        ],
                      ));
                    }
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: provisions.length,
                      itemBuilder: (context, index) {
                        final provision = provisions[index];
                        if (index == 0) {
                          // return the header
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Provisions:",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Spacer(),
                                  OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddProvision()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " New Provision",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.lightBlueAccent,
                                      side: BorderSide(
                                          width: 1.5,
                                          color: Colors.lightBlueAccent),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              HomeItemTile(
                                textTheme: textTheme,
                                icon: provision.icon,
                                title: provision.name,
                                subtitle:
                                    "${provision.unit * 20} ${provision.unitMeasurementWord} - ₹ ${provision.unitPrice * 20}", // "12 cane - Rs 360",
                                itemType: ItemType.provision,
                              ),
                            ],
                          );
                        }

                        return HomeItemTile(
                          textTheme: textTheme,
                          icon: provision.icon,
                          title: provision.name,
                          subtitle:
                              "${provision.unit * 20} ${provision.unitMeasurementWord} - ₹ ${provision.unitPrice * 20}", // "12 cane - Rs 360",
                          itemType: ItemType.provision,
                        );
                      },
                      separatorBuilder: (_, id) => const Divider(
                        color: Colors.white,
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                })
          ],
        ),
      ),
    );
  }
}

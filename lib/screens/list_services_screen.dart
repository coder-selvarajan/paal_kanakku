import 'package:flutter/material.dart';
import 'package:paal_kanakku/models/provision.dart';
import 'package:paal_kanakku/screens/add_service_screen.dart';
import 'package:paal_kanakku/screens/provision_entry_screen.dart';
import 'package:paal_kanakku/screens/service_entry_screen.dart';

import '../models/isar_service.dart';
import 'add_provision_screen.dart';
import 'edit_provision_screen.dart';
import 'home_screen.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({Key? key}) : super(key: key);

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
                    Text("Service List"),
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
            StreamBuilder<List<Provision>>(
                stream: IsarService().streamProvisions(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final provisions = snapshot.data;
                    if (provisions!.isEmpty) {
                      return Center(
                          child: Column(
                        children: [
                          Text('No Services added yet'),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            width: 150,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddService()),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    " New Service",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.lightBlueAccent,
                                side: BorderSide(
                                    width: 1.5, color: Colors.lightBlueAccent),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
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
                                    "Services:",
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
                                            builder: (context) => AddService()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " New Service",
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
                              ProvisionItemTile(
                                provision: provision,
                                textTheme: textTheme,
                                icon: provision.icon,
                                title: provision.name,
                                subtitle:
                                    "${provision.unit} ${provision.unitMeasurementWord} = ₹ ${provision.unitPrice}",
                                subtitle2:
                                    "Min Unit: ${provision.minUnitPerDay}, Max Unit: ${provision.maxUnitPerDay}",
                                notes: provision.notes,
                                itemType: ItemType.provision,
                              ),
                            ],
                          );
                        }

                        return ProvisionItemTile(
                          provision: provision,
                          textTheme: textTheme,
                          icon: provision.icon,
                          title: provision.name,
                          subtitle:
                              "${provision.unit} ${provision.unitMeasurementWord} = ₹ ${provision.unitPrice}",
                          subtitle2:
                              "Min Unit: ${provision.minUnitPerDay}, Max Unit: ${provision.maxUnitPerDay}",
                          notes: provision.notes,
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

class ProvisionItemTile extends StatelessWidget {
  ProvisionItemTile({
    Key? key,
    required this.provision,
    required this.textTheme,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.subtitle2,
    required this.notes,
    required this.itemType,
  }) : super(key: key);

  Provision provision;
  final TextTheme textTheme;
  final String icon;
  final String title;
  final String subtitle;
  final String subtitle2;
  final String notes;
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
              Text(
                subtitle2,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: textTheme.bodySmall!.fontSize),
              ),
              notes.isNotEmpty
                  ? Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          notes,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: textTheme.bodySmall!.fontSize),
                        ),
                      ],
                    )
                  : SizedBox(),
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
        onTap: () {
          if (itemType == ItemType.provision) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditProvision(provision: provision),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddService(),
              ),
            );
          }
        },
      ),
    );
  }
}

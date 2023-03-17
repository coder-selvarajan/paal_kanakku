import 'package:flutter/material.dart';
import 'package:paal_kanakku/screens/EmojiPicker.dart';

import '../models/isar_service.dart';

class AddProvision extends StatelessWidget {
  // final IsarService isarService;
  const AddProvision({Key? key}) : super(key: key);

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
                    Text("Setup New Provision "),
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
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.95),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              // child: Form(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Name ",
                      style: TextStyle(
                        fontSize: textTheme.titleMedium!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Colors.grey.withOpacity(0.15),
                        hintText: "Enter the Provision name",
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.shopping_basket),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(width: 0.0, color: Colors.blue),
                        ),
                      ),
                      onChanged: (value) {
                        // name = value;
                        // shortname = value.substring(0, 2);
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          "Choose Your Icon  ",
                          style: TextStyle(
                            fontSize: textTheme.titleMedium!.fontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => IconSelector(),
                                ),
                              );
                            },
                            child: Text(
                              "🥬",
                              style: TextStyle(
                                  fontSize: textTheme.headline5!.fontSize),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quantity ",
                                style: TextStyle(
                                  fontSize: textTheme.titleMedium!.fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true, //<-- SEE HERE
                                  fillColor: Colors.grey.withOpacity(0.2),
                                  hintText: "Ex: 0.5, 1",
                                  // prefixIcon: const Padding(
                                  //   padding: EdgeInsets.all(8.0),
                                  //   child: Icon(Icons.shop),
                                  // ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 0.0, color: Colors.blue),
                                  ),
                                ),
                                onChanged: (value) {
                                  // name = value;
                                  // shortname = value.substring(0, 2);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quantity String",
                                style: TextStyle(
                                  fontSize: textTheme.titleMedium!.fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true, //<-- SEE HERE
                                  fillColor: Colors.grey.withOpacity(0.2),
                                  hintText: "Ex: Litre, KG, Item",
                                  // prefixIcon: const Padding(
                                  //   padding: EdgeInsets.all(8.0),
                                  //   child: Icon(Icons.shop),
                                  // ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 0.0, color: Colors.blue),
                                  ),
                                ),
                                onChanged: (value) {
                                  // name = value;
                                  // shortname = value.substring(0, 2);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Quantity Price",
                      style: TextStyle(
                        fontSize: textTheme.titleMedium!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Colors.grey.withOpacity(0.2),
                        hintText: "Ex: 50, 100",
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.currency_rupee),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(width: 0.0, color: Colors.blue),
                        ),
                      ),
                      onChanged: (value) {
                        // name = value;
                        // shortname = value.substring(0, 2);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ExpansionTile(
                      title: Text(
                        'Additional Information',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down,
                        size: 35.0,
                      ),
                      tilePadding: EdgeInsets.zero,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Min Qty Per Day ",
                                          style: TextStyle(
                                            fontSize:
                                                textTheme.titleMedium!.fontSize,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            filled: true, //<-- SEE HERE
                                            fillColor:
                                                Colors.grey.withOpacity(0.2),
                                            hintText: "Ex: 0.5, 1",
                                            // prefixIcon: const Padding(
                                            //   padding: EdgeInsets.all(8.0),
                                            //   child: Icon(Icons.shop),
                                            // ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  width: 0.0,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                          initialValue: "1",
                                          onChanged: (value) {
                                            // name = value;
                                            // shortname = value.substring(0, 2);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Max Qty Per Day",
                                          style: TextStyle(
                                            fontSize:
                                                textTheme.titleMedium!.fontSize,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            filled: true, //<-- SEE HERE
                                            fillColor:
                                                Colors.grey.withOpacity(0.2),
                                            hintText: "Ex: Litre, Kg",
                                            // prefixIcon: const Padding(
                                            //   padding: EdgeInsets.all(8.0),
                                            //   child: Icon(Icons.shop),
                                            // ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  width: 0.0,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                          initialValue: "10",
                                          onChanged: (value) {
                                            // name = value;
                                            // shortname = value.substring(0, 2);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Notes ",
                                style: TextStyle(
                                  fontSize: textTheme.titleMedium!.fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true, //<-- SEE HERE
                                  fillColor: Colors.grey.withOpacity(0.2),
                                  hintText: "Additional information..",
                                  // prefixIcon: const Padding(
                                  //   padding: EdgeInsets.all(8.0),
                                  //   child: Icon(Icons.edit_rounded),
                                  // ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 0.0, color: Colors.blue),
                                  ),
                                ),
                                onChanged: (value) {
                                  // name = value;
                                  // shortname = value.substring(0, 2);
                                },
                              ),
                              const SizedBox(height: 20.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.white),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      onPressed: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Invalid Input!'),
                            content: const Text(
                                'Enter the player name and click Save'),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                        // }
                        // }
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Save Provision'),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                  ],
                ),
              ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

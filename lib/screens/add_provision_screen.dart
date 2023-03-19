import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:paal_kanakku/models/provision.dart';
import 'package:paal_kanakku/screens/EmojiPicker.dart';

import '../models/isar_service.dart';

class AddProvision extends StatefulWidget {
  AddProvision({Key? key}) : super(key: key);

  @override
  State<AddProvision> createState() => _AddProvisionState();
}

class _AddProvisionState extends State<AddProvision> {
  bool showEmojiPicker = false;
  String selectedEmoji = "🛍"; //📦
  String provisionName = "";
  String unit = "";
  String unitPrice = "";
  String unitMeasurementWord = "";
  String minUnitPerDay = "1";
  String maxUnitPerDay = "10";
  String notes = "";

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
      body: Stack(children: <Widget>[
        SingleChildScrollView(
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
                          provisionName = value;
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
                            // margin: EdgeInsets.all(5.0),
                            height: 50.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  showEmojiPicker = !showEmojiPicker;
                                });
                              },
                              child: Text(
                                selectedEmoji,
                                style: TextStyle(fontSize: 30.0),
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
                                  "Unit ",
                                  style: TextStyle(
                                    fontSize: textTheme.titleMedium!.fontSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  decoration: InputDecoration(
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.grey.withOpacity(0.2),
                                    hintText: "Ex: 0.5, 1",
                                    // prefixIcon: const Padding(
                                    //   padding: EdgeInsets.all(8.0),
                                    //   child: Icon(Icons.shop),
                                    // ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          width: 0.0, color: Colors.blue),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    unit = value;
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
                                  "Unit Price",
                                  style: TextStyle(
                                    fontSize: textTheme.titleMedium!.fontSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  decoration: InputDecoration(
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.grey.withOpacity(0.2),
                                    hintText: "Ex: 50, 100",
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(Icons.currency_rupee),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          width: 0.0, color: Colors.blue),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    unitPrice = value;
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
                        "Unit Measurement Word",
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
                          hintText: "Ex: Litre, KG, Pocket, Item",
                          // prefixIcon: const Padding(
                          //   padding: EdgeInsets.all(8.0),
                          //   child: Icon(Icons.currency_rupee),
                          // ),
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
                          unitMeasurementWord = value;
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
                                            "Min Unit Per Day ",
                                            style: TextStyle(
                                              fontSize: textTheme
                                                  .titleMedium!.fontSize,
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
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide: BorderSide(
                                                    width: 0.0,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            initialValue: "1",
                                            onChanged: (value) {
                                              minUnitPerDay = value;
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
                                            "Max Unit Per Day",
                                            style: TextStyle(
                                              fontSize: textTheme
                                                  .titleMedium!.fontSize,
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
                                              hintText: "Ex: 10, 20",
                                              // prefixIcon: const Padding(
                                              //   padding: EdgeInsets.all(8.0),
                                              //   child: Icon(Icons.shop),
                                              // ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide: BorderSide(
                                                    width: 0.0,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            initialValue: "10",
                                            onChanged: (value) {
                                              maxUnitPerDay = value;
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
                                  maxLines: 3,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.grey.withOpacity(0.2),
                                    hintText: "",
                                    // prefixIcon: const Padding(
                                    //   padding: EdgeInsets.all(8.0),
                                    //   child: Icon(Icons.edit_rounded),
                                    // ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          width: 0.0, color: Colors.blue),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    notes = value;
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
                          textStyle: const TextStyle(
                              fontSize: 20, color: Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        onPressed: () {
                          if (provisionName.isNotEmpty &&
                              unit.isNotEmpty &&
                              unitPrice.isNotEmpty &&
                              unitMeasurementWord.isNotEmpty) {
                            IsarService().saveProvision(Provision()
                              ..name = provisionName
                              ..icon = selectedEmoji
                              ..notes = notes
                              ..unit = double.parse(unit)
                              ..unitPrice = double.parse(unitPrice)
                              ..unitMeasurementWord = unitMeasurementWord
                              ..minUnitPerDay = double.parse(minUnitPerDay)
                              ..maxUnitPerDay = double.parse(maxUnitPerDay)
                              ..timestamp = DateTime.now());

                            Navigator.pop(context);
                          } else {
                            //validation alert here
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Invalid Input!'),
                                content: const Text(
                                    'Name, Unit, UnitPrice, MeasurementWord are required'),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
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
        Column(
          children: [
            Spacer(),
            Offstage(
              offstage: !showEmojiPicker,
              child: SizedBox(
                  height: 300,
                  child: EmojiPicker(
                    onEmojiSelected: (category, emoji) {
                      // _controller.text = emoji.emoji;
                      setState(() {
                        selectedEmoji = emoji.emoji;
                        showEmojiPicker = !showEmojiPicker;
                      });
                    },
                    // textEditingController: _controller,
                    config: Config(
                      columns: 7,
                      // Issue: https://github.com/flutter/flutter/issues/28894
                      emojiSizeMax: 32 *
                          (foundation.defaultTargetPlatform ==
                                  TargetPlatform.iOS
                              ? 1.30
                              : 1.0),
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      gridPadding: EdgeInsets.zero,
                      initCategory: Category.FOODS,
                      bgColor: const Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      backspaceColor: Colors.blue,
                      skinToneDialogBgColor: Colors.white,
                      skinToneIndicatorColor: Colors.grey,
                      enableSkinTones: true,
                      showRecentsTab: true,
                      recentsLimit: 28,
                      replaceEmojiOnLimitExceed: false,
                      noRecents: const Text(
                        'No Recents',
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                        textAlign: TextAlign.center,
                      ),
                      loadingIndicator: const SizedBox.shrink(),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.CUPERTINO,
                      checkPlatformCompatibility: true,
                    ),
                  )),
            ),
          ],
        ),
      ]),
    );
  }
}

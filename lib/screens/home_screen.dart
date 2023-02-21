import 'package:flutter/material.dart';
import 'package:paal_kanakku/screens/goods_entry.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120), //height of appbar
          child: Container(
            color: Colors.lightBlue,
            child: Column(
              children: [
                AppBar(
                  toolbarHeight: 100.0,
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
                              color: Colors.black54,
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Welcome to Paal Kanakku"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodsEntry()),
                  );
                },
                child: Text("New entry"))
          ],
        ));
  }
}

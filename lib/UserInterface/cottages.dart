import 'package:cottagechain/UserInterface/product.dart';
import 'package:flutter/material.dart';

class Cottages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cottages"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.group_add,
              color: Colors.white,
            ),
            onPressed: null,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
              height: 350,
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          height: 80,
                          child: Image.asset("assets/images/qr-code.png"),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          height: 80,
                          child: Icon(
                            Icons.location_on,
                            size: 40,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.business,
                            color: Colors.blue,
                          ),
                          Text(
                            "Sanis footwear",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.blue,
                          ),
                          Text(
                            " Valavoor , pala , kerala , India",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            color: Colors.blue,
                          ),
                          Text(
                            "Established in 2005",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.vpn_key,
                            color: Colors.blue,
                          ),
                          Text(
                            " cvatyuio09897",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.card_travel,
                            color: Colors.blue,
                          ),
                          Text(
                            " Footwear",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Product()));
            },
            child: Container(
                height: 350,
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            height: 80,
                            child: Image.asset("assets/images/qr-code.png"),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            height: 80,
                            child: Icon(
                              Icons.location_on,
                              size: 40,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.business,
                              color: Colors.blue,
                            ),
                            Text(
                              "Robbi Textiles",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_city,
                              color: Colors.blue,
                            ),
                            Text(
                              " koothattukalam , pala , kerala , India",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.date_range,
                              color: Colors.blue,
                            ),
                            Text(
                              "Established in 2012",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.vpn_key,
                              color: Colors.blue,
                            ),
                            Text(
                              " mklodhyr09897",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.card_travel,
                              color: Colors.blue,
                            ),
                            Text(
                              " Textiles",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          color: Colors.green,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scan & Pay",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Icon(
                  Icons.payment,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

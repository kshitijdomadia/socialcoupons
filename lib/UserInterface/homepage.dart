import 'package:cottagechain/UserInterface/cottages.dart';
import 'package:cottagechain/UserInterface/donors.dart';
import 'package:cottagechain/contracts/etherium-contracts.dart';
import 'package:cottagechain/UserInterface/events.dart';
import 'package:cottagechain/UserInterface/ngo.dart';
import 'package:cottagechain/UserInterface/volunateer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        title: Text(
          "Social Coupons",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Container(
          child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 3,
            child: Card(child: Image.asset("assets/images/h.png")),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NGO()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: 80,
                      height: 80,
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/ngo.png",
                            height: 60,
                            width: 60,
                          )),
                    ),
                  ),
                  Center(
                    child: Text(
                      "NGO",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Volunteer()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: 80,
                      height: 80,
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/volunteer.png",
                            height: 60,
                            width: 60,
                          )),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Volunteer",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: 80,
                    height: 80,
                    child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/coupon.png",
                          height: 60,
                          width: 60,
                        )),
                  ),
                  Center(
                    child: Text(
                      "Coupons",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cottages()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: 80,
                      height: 80,
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/residential.png",
                            height: 60,
                            width: 60,
                          )),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Cottages",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Events()));
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: 80,
                      height: 80,
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/calendar.png",
                            height: 60,
                            width: 60,
                          )),
                    ),
                    Center(
                      child: Text(
                        "Events",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Donors()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: 80,
                      height: 80,
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/vision.png",
                            height: 60,
                            width: 60,
                          )),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Donors",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 2.5,
            color: Colors.white,
            thickness: 2.5,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Card(),
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Contracts()));
          },
          child: Container(
            height: 70,
            color: Colors.green,
            child: Center(
              child: Text(
                "Donate",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

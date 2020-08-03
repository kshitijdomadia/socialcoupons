import 'package:flutter/material.dart';

class NGO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NGO"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
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
                          child: Image.asset("assets/images/ngo.png"),
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
                            "Kennady chacko charitable trust",
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
                            Icons.supervised_user_circle,
                            color: Colors.blue,
                          ),
                          Text(
                            "Kennady chacko (founder)",
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
                            Icons.payment,
                            color: Colors.blue,
                          ),
                          Text(
                            "7465 xxxx xxxx 9687",
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
                            Icons.mail,
                            color: Colors.blue,
                          ),
                          Text(
                            "kennadychacko@gmail.com",
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
                            Icons.phone_android,
                            color: Colors.blue,
                          ),
                          Text(
                            "7894363625",
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
                            Icons.business_center,
                            color: Colors.blue,
                          ),
                          Text(
                            "Established in 2005",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
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
                          child: Image.asset("assets/images/ngo.png"),
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
                            "Mary charitable trust",
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
                            Icons.supervised_user_circle,
                            color: Colors.blue,
                          ),
                          Text(
                            "Robbin (founder)",
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
                            Icons.payment,
                            color: Colors.blue,
                          ),
                          Text(
                            "8465 xxxx xxxx 4896",
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
                            Icons.mail,
                            color: Colors.blue,
                          ),
                          Text(
                            "robbin@gmail.com",
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
                            Icons.phone_android,
                            color: Colors.blue,
                          ),
                          Text(
                            "7553196874",
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
                            Icons.business_center,
                            color: Colors.blue,
                          ),
                          Text(
                            "Established in 2015",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

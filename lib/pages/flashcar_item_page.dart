import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/template/back-button.dart';
import 'dart:math';
import 'flashbtntxt.dart';

class MoveitemCarPage extends StatefulWidget {
  const MoveitemCarPage({Key? key}) : super(key: key);

  @override
  _MoveitemCarPageState createState() => _MoveitemCarPageState();
}

class _MoveitemCarPageState extends State<MoveitemCarPage> {
  String selectedValue = 'Item Weight'; // Set an initial value
  double randomPrice = 0.0; // Initialize the price with 0.0

  // Function to calculate a random price
  void calculateRandomPrice() {
    final random = Random();
    // Generate a random price between $10 and $100 with 2 decimal places
    randomPrice = (random.nextDouble() * 90 + 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(227.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
          ),
          child: Stack(
            children: <Widget>[
              AppBar(
                backgroundColor: Color(0xff8DA2E2),
                elevation: 0.0,
                centerTitle: true,
              ),
              Positioned(
                top: 85,
                left: -10,
                child: Container(
                  width: 270,
                  child: Image.asset('lib/assets/images/carmoveitem.png'),
                ),
              ),
              Positioned(
                top: 23,
                left: 288,
                child: Container(
                  width: 190,
                  child: Image.asset('lib/assets/images/flashcarlogo.png'),
                ),
              ),
              Positioned(
                top: 35,
                left: -10,
                child: BackBtn(),
              ),
              Positioned(
                top: 160,
                left: 250,
                child: Container(
                  child: Text(
                    'Experience smoother\nitem transfers using\nFlashRide',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.595,
              minChildSize: 0.595,
              maxChildSize: 0.950,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  child: Container(
                    color: Color(0xff213A82),
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        switch (index) {
                          case 0:
                            return Positioned(
                              top: 0,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 15),
                                  Container(
                                    width: 150,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(4),
                                        top: Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          case 1:
                            return Positioned(
                              top: 5,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 30),
                                  SizedBox(
                                    width: 375,
                                    height:
                                        130, // Increased the height to accommodate both TextFields
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff8DA2E2),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 15,
                                              right: 15,
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                label: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      size: 15,
                                                      color: Colors.blue[300],
                                                    ),
                                                    Text(
                                                        'Enter Pickup Location')
                                                  ],
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 8,
                                                  horizontal: 20,
                                                ),
                                                filled: true,
                                                fillColor: Color(0xffffffff),
                                                // prefixIcon: Icon(
                                                //     Icons.location_on,
                                                //     size:20),
                                                // labelText:
                                                //     'Enter Pickup Location',
                                                labelStyle: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 15,
                                                    right:
                                                        5, // Adjust the right padding
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                          vertical: 8,
                                                          horizontal: 20,
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0xffffffff),
                                                        labelText:
                                                            'Enter Sender Name...',
                                                        labelStyle: TextStyle(
                                                          fontSize: 10,
                                                        )),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left:
                                                        5, // Adjust the left padding
                                                    right: 15,
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                          vertical: 8,
                                                          horizontal: 20,
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0xffffffff),
                                                        labelText:
                                                            'Enter Sender Number...',
                                                        labelStyle: TextStyle(
                                                          fontSize: 10,
                                                        )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          case 2:
                            return Positioned(
                              top: 30,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 30),
                                  SizedBox(
                                    width: 375,
                                    height:
                                        130, // Increased the height to accommodate both TextFields
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff8DA2E2),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 15,
                                              right: 15,
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                label: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      size: 15,
                                                      color: Colors.blue[300],
                                                    ),
                                                    Text('Where to deliver')
                                                  ],
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 8,
                                                  horizontal: 20,
                                                ),
                                                filled: true,
                                                fillColor: Color(0xffffffff),
                                                labelStyle: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 15,
                                                    right:
                                                        5, // Adjust the right padding
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                          vertical: 8,
                                                          horizontal: 20,
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0xffffffff),
                                                        labelText:
                                                            'Enter Recipient’s Name...',
                                                        labelStyle: TextStyle(
                                                          fontSize: 10,
                                                        )),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left:
                                                        5, // Adjust the left padding
                                                    right: 15,
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                          vertical: 8,
                                                          horizontal: 20,
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0xffffffff),
                                                        labelText:
                                                            'Enter Phone Number...',
                                                        labelStyle: TextStyle(
                                                          fontSize: 10,
                                                        )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          case 3:
                            // Call the function to calculate a random price
                            calculateRandomPrice();

                            return Positioned(
                              right: 530,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  SizedBox(height: 30),
                                  Container(
                                    width: 180,
                                    height: 175,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8DA2E2),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Select Item Weight',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 167,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Center(
                                            child: DropdownButton<String>(
                                              value: selectedValue,
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  selectedValue = newValue!;
                                                });
                                              },
                                              items: <String>[
                                                'Item Weight', // Include the initial value
                                                'Small',
                                                'Medium',
                                                'Large',
                                              ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).toList(),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Price: \$${randomPrice.toStringAsFixed(2)}',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 150,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(25),
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              // Handle the onPressed event
                                            },
                                            child: Text(
                                              'Order',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          default:
                            return null;
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

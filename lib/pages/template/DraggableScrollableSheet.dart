import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/flashcar_item_page.dart';
import 'package:project_uts_online_transportation/pages/flashcar_pickup.dart';
import 'RightToLeftFadetransition.dart';

class DragSheet extends StatefulWidget {
  final String pickup;
  final String destination;

  DragSheet({
    required this.pickup,
    required this.destination,
  });
  @override
  _DragSheetState createState() => _DragSheetState();
}

class _DragSheetState extends State<DragSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.32,
        minChildSize: 0.32,
        maxChildSize: 0.622,
        builder: (BuildContext context, ScrollController scrollController) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            child: Container(
              color: Color(0xff213A82),
              child: ListView.builder(
                controller: scrollController,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  switch (index) {
                    case 0:
                      return Container(
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
                      return Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 45),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  RightToLeftFadeTransition(
                                    page: PickupCarPage(
                                      destination: widget.destination,
                                      pickup: widget.pickup,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff3B60CE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Container(
                                width: 250,
                                height: 140,
                                child: Image.asset(
                                  'lib/assets/images/carmovepeople.png',
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10), // Adjust the top padding as needed
                              child: Text(
                                'Move people?',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    case 2:
                      return Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 55),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  RightToLeftFadeTransition(
                                    page: MoveitemCarPage(
                                      destination: widget.destination,
                                      pickup: widget.pickup,
                                      id: '',
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff3B60CE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset(
                                  'lib/assets/images/carmoveitem.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10), // Adjust the top padding as needed
                              child: Text(
                                'Move Items?',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );

                    default:
                      return Container();
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

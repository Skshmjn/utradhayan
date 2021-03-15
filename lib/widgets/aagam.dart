
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:utradhayan/pages/detail_page.dart';

class Aagam extends StatefulWidget {
  @override
  _AagamState createState() => _AagamState();
}

class _AagamState extends State<Aagam> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text('GATHAS'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,

                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: CustomPaint(
                      painter: GathaDisplayPainter(),
                      child: Center(
                        child: Text(
                          'Chapter 1',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: CustomPaint(
                      painter: GathaDisplayPainter(),
                      child: Center(
                        child: Text(
                          'Chapter 1',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: CustomPaint(
                      painter: GathaDisplayPainter(),
                      child: Center(
                        child: Text(
                          'Chapter 1',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: CustomPaint(
                      painter: GathaDisplayPainter(),
                      child: Center(
                        child: Text(
                          'Chapter 1',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: CustomPaint(
                      painter: GathaDisplayPainter(),
                      child: Center(
                        child: Text(
                          'Chapter 1',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GathaList()
          ],
        ),
      ),
    );
  }
}

class GathaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GathaCard();
        },
      ),
    );
  }
}

class GathaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).cardColor),
        child: ListTile( onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage()));
        },
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            title: Container(
                height: 70,
                decoration: BoxDecoration(shape: BoxShape.rectangle),
                child: GathaDisplay()),
            subtitle: Container(
              margin: EdgeInsets.all(5),
              child: Center(
                child: Text(

                    "धृतराष्ट्र बोले- हे संजय! धर्मभूमि कुरुक्षेत्र में एकत्रित, युद्ध की इच्छावाले मेरे और पाण्डु के पुत्रों ने क्या किया?",
                  textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),),
              ),
            )),
      ),
    );
  }
}

class GathaDisplayPainter extends CustomPainter {
  final List<Paint> linePaints = [
    // Paint()..color = Colors.greenAccent,
    // // Paint()..color = Colors.yellow,
    // // Paint()..color = Colors.orangeAccent,
    // // Paint()..color = Colors.redAccent,
    // Paint()..color = Colors.black26,
    // // Paint()..color = Colors.tealAccent,
    // // Paint()..color = Colors.teal,
    Paint()..color = Colors.blue.withAlpha(0x53),
    Paint()..color = Colors.red.withAlpha(0x53),
    Paint()..color = Color.fromRGBO(255,105,97,1),
    // Paint()..color = Color.fromRGBO(247, 221, 105,1),
    // Paint()..color = Color.fromRGBO(254,253,251,1),
    Paint()..color = Color.fromRGBO(37, 156, 74,1),
    Paint()..color = Color.fromRGBO(88, 79, 146,1),
  ];

  static T anyOf<T>(List<T> list) {
    return list[rnd.nextInt(list.length)];
  }

  static final rnd = Random();
  final linePaint = Paint()..color = Colors.white24;
  final density;
  final Offset displacement;

  GathaDisplayPainter(
      {this.density = .02, this.displacement = const Offset(-56, 45)});

  static Offset randomOffset(Size size) {
    return Offset(
        rnd.nextDouble() * size.width, rnd.nextDouble() * size.height);
  }

  @override
  void paint(Canvas canvas, Size size) {
    // This [Rect] will fill the whole canvas we got
    var fillRect = Rect.fromPoints(Offset.zero, size.bottomRight(Offset.zero));
    var count = fillRect.width * fillRect.height * density;
    // Background for our texture
    canvas.drawRect(
      fillRect,
      anyOf(linePaints),
    );

    // Creating new layer
    canvas.save();

    // Which will be clipped to a given [Rect]
    canvas.clipRect(fillRect);

    // Drawing our lines
    for (var i = 0; i < count; i++) {
      var start = randomOffset(size) - (displacement * .5);
      var end = start + displacement;

      canvas.drawLine(start, end, linePaint);
    }

    // And then restoring the layer.
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class GathaDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: CustomPaint(
        painter: GathaDisplayPainter(),
        child: Center(
          child: Text(
            'व्यामिश्रेणेव वाक्येन बुद्धिं मोहयसीव मे | \nतदेकं वद निश्चित्य येन श्रेयोऽहमाप्नुयाम् ||',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

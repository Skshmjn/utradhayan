import 'package:flutter/material.dart';
import 'package:utradhayan/widgets/aagam.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final topContent = Stack(
      children: <Widget>[
        Container(
          height: 250.0,
          width: MediaQuery.of(context).size.width,

          child: CustomPaint(
            painter: GathaDisplayPainter(),

            child: Container(   margin: EdgeInsets.only(top: 20),
              child: Center(

                child: Text(
                  'व्यामिश्रेणेव वाक्येन बुद्धिं मोहयसीव मे | \nतदेकं वद निश्चित्य येन श्रेयोऽहमाप्नुयाम् ||',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );
    final bottomContentText = Text(
      '''रभावी निबंध लिखने के लिए उस विषय के बारे में बहुत अभ्यास और गहन ज्ञान की आवश्यकता होती है जिसे आपने निबंध लेखन प्रतियोगिता या बोर्ड परीक्षा के लिए चुना है। छात्रों को वर्तमान में हो रही स्थितियों और हिंदी में निबंध लिखने से पहले विषय के बारे में कुछ महत्वपूर्ण बिंदुओं के बारे में जानना चाहिए। हिंदी में पावरफुल निबन्ध लिखने के लिए सभी को कुछ प्रमुख नियमों और युक्तियों का पालन करना होगा।

हिंदी निबन्ध लिखने के लिए आप स सभी सामान्य और तथ्यों को एकत्र करते हैं और अपने पाठकों को संलग्न ''',
      style: TextStyle(fontSize: 18.0),
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: bottomContentText,
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}

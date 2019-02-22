import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Simple Interest Calculator App',
      home: SIForm(),
    )
  );
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {

  var currencies = ['Rupee', 'Dollars', 'Pounds'];
  final _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),

      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: Column(
          children: <Widget>[

            getImageAsset(),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Principal",
                hintText: "Enter Principal e.g. 12000",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              ),
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Rate of Interest",
                hintText: "In percent",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              )
            ),


          ],
        )
      ),
    );
  }

  Widget getImageAsset() {

    AssetImage assetImage = AssetImage("images/money.jpg");
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);

    return Container(child:image, margin: EdgeInsets.all(_minimumPadding * 10),);
  }
}
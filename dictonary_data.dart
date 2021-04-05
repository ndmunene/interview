

import 'package:flutter/material.dart';
class DictonaryData extends StatefulWidget {
  @override
  _DictonaryDataState createState() => _DictonaryDataState();

}


class _DictonaryDataState extends State<DictonaryData> {

  @override
  Widget build(BuildContext context) {
    Map<String, String> dictonary = {
      '34': 'thirty-four', '90': 'ninety',
      '91': 'ninety-one', '21': 'twenty-one',
      '61': 'sixty-one', '9': 'nine',
      '2': 'two', '6': 'six', '3': 'three',
      '8': 'eight', '80': 'eighty', '81': 'eighty-one',
      'Ninety-Nine': '99', 'nine-hundred': '900'};

    String dict() {
      Map<String, String> dictonary = {
        '34': 'thirty-four', '90': 'ninety',
        '91': 'ninety-one', '21': 'twenty-one',
        '61': 'sixty-one', '9': 'nine',
        '2': 'two', '6': 'six', '3': 'three',
        '8': 'eight', '80': 'eighty', '81': 'eighty-one',
        'Ninety-Nine': '99', 'nine-hundred': '900'};
//dictonary.forEach((key, value) {return dictonary;});

      for (String key in dictonary.keys) {
        return (key);
      }
    }
    // ignore: missing_return
    String dictvalue() {
      Map<String, String> dictonary = {
        '34': 'thirty-four', '90': 'ninety',
        '91': 'ninety-one', '21': 'twenty-one',
        '61': 'sixty-one', '9': 'nine',
        '2': 'two', '6': 'six', '3': 'three',
        '8': 'eight', '80': 'eighty', '81': 'eighty-one',
        'Ninety-Nine': '99', 'nine-hundred': '900'};
      for (String value in dictonary.values) {

        //<List>[]= Val new <list>;

        return (value);
      }
    }
    Map<String, String> value = {
      '34': 'thirty-four', '90': 'ninety',
      '91': 'ninety-one', '21': 'twenty-one',
      '61': 'sixty-one', '9': 'nine',
      '2': 'two', '6': 'six', '3': 'three',
      '8': 'eight', '80': 'eighty', '81': 'eighty-one',
      'Ninety-Nine': '99', 'nine-hundred': '900'};

    dictonary.addAll(value);
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            child: Text(dictvalue(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          );
        },
        itemCount: dictonary.length
    );
  }
}
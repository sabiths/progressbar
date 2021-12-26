library progressbar;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  var totalValue;
  var showValue;
  var fillValue;
  var showinPercentage;
  var fillColor;
  var fillPercentage;
  var height;
  ProgressBar(
      {Key? key,
      @required this.totalValue,
      this.showValue = true,
      @required this.fillValue,
      this.showinPercentage = false,
      this.height = 20,
      this.fillColor = const ["0xFFdb0303", "0xFFdbc003", "0xFF38db03"],
      this.fillPercentage = const [40, 70, 100]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD3D3D3)),
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              width: (showValue == true
                  ? MediaQuery.of(context).size.width * 0.8
                  : MediaQuery.of(context).size.width),
              height: double.parse(height.toString()),
            ),
            Container(
              decoration: BoxDecoration(
                  color: ((fillPercentage[0] > fillValue * 100 / totalValue)
                      ? Color(int.parse(fillColor[0]))
                      : fillPercentage[1] > fillValue * 100 / totalValue
                          ? Color(int.parse(fillColor[1]))
                          : Color(int.parse(fillColor[2]))),
                  borderRadius: (fillValue == totalValue
                      ? const BorderRadius.all(Radius.circular(100))
                      : const BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          topLeft: Radius.circular(100)))),
              width: (showValue == true
                  ? MediaQuery.of(context).size.width *
                      (fillValue / totalValue) *
                      0.75
                  : MediaQuery.of(context).size.width *
                      (fillValue / totalValue)),
              height: double.parse(height.toString()),
            ),
          ],
        ),
        Spacer(),
        showValue == true
            ? Container(
                child: Text(
                (showinPercentage == true
                    ? (fillValue * 100 / totalValue).toString() + "%"
                    : "$fillValue/$totalValue"),
                style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ))
            : Container(),
      ],
    );
  }
}

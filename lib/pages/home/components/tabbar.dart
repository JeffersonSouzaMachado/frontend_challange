import 'package:flutter/material.dart';
import 'package:frontend_challange/config/colors_config.dart';

customTabItem(String tabName, String quantity) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Tab(
        text: tabName,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          width: 30,
          height: 25,
          decoration: const BoxDecoration(color: paleGrey, borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Center(
              child: Text(
            quantity,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
      )
    ],
  );
}

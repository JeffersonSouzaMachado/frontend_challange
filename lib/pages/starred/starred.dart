import 'package:flutter/material.dart';
import 'package:frontend_challange/config/colors_config.dart';
import 'package:frontend_challange/pages/repo/data.dart';

class Starred extends StatefulWidget {
  const Starred({super.key});

  @override
  State<Starred> createState() => _StarredState();
}

class _StarredState extends State<Starred> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 30, 35, 20),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Filtrar por nome',
                    labelStyle: const TextStyle(fontFamily: 'OpenSans', color: warmGrey),
                    prefixIcon: const Icon(Icons.search),
                    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: warmGrey, width: 1)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: warmGrey, width: 1),
                    )),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  symbolicData('nodejs / ', 'Release', 'Node.js Foundation Release Working Group', '1,404', '177'),
                  symbolicData('leocaseiro / ', 'angular-chosen', 'AngularJS Chose directive is a AngularJS Directive that brings the Chose JQuery in a AngularJS wat', '1,404', '177'),
                  symbolicData('LFeh / ', 'frontend-challanges', 'Listing some playful open-source\'s challanges of jobs  to teste your knowledge', '1,404', '177'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

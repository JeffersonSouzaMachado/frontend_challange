import 'package:flutter/material.dart';
import 'package:frontend_challange/config/colors_config.dart';
import 'package:frontend_challange/pages/repo/data.dart';

class Repo extends StatefulWidget {
  const Repo({super.key});

  @override
  State<Repo> createState() => _RepoState();
}

class _RepoState extends State<Repo> {
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
                  symbolicData('', 'todo-backend', 'Simply to-do server based on Nodejs with Express and MongoDB', 'JavaScript', '177'),
                  symbolicData('', 'dotfiles', '', 'Vim Script', '177'),
                  symbolicData('', 'react-udemy-curse', '', 'JavaScript', ''),
                  symbolicData('', 'console-logger', 'A beautiful to read console message', 'JavaScript', '177'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

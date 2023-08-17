import 'package:flutter/material.dart';
import 'package:frontend_challange/config/colors_config.dart';

symbolicData(String name, String repo, String subtitle, String like, String fork) {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontFamily: 'OpenSans', fontSize: 20, color: linkBlue),
                  ),
                  Text(
                    repo,
                    style: const TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold, fontSize: 20, color: linkBlue),
                  ),
                ],
              ),
              if (subtitle.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Text(
                    subtitle,
                    style: const TextStyle(color: brownishGrey),
                  ),
                )
              else
                const SizedBox(
                  height: 15,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: like == 'JavaScript' || like == 'Vim Script'
                            ? Image.asset(
                                'assets/icons/direction.png',
                                color: slateGrey,
                              )
                            : Image.asset(
                                'assets/icons/star.png',
                                color: slateGrey,
                              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 15),
                        child: Text(
                          like,
                          style: const TextStyle(fontFamily: 'OpenSans', color: slateGrey, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  if (fork.isNotEmpty)
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            'assets/icons/branch.png',
                            color: slateGrey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 15,
                          ),
                          child: Text(
                            fork,
                            style: const TextStyle(fontFamily: 'OpenSans', color: slateGrey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15),
          child: Divider(
            color: paleGrey,
          ),
        ),
      ],
    ),
  );
}

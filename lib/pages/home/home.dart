import 'package:flutter/material.dart';
import 'package:frontend_challange/config/colors_config.dart';
import 'package:frontend_challange/pages/home/components/tabbar.dart';
import 'package:frontend_challange/pages/repo/repo.dart';
import 'package:frontend_challange/pages/starred/starred.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: white,
        body: Column(
          children: [
            Container(
              width: size.width,
              height: 60,
              color: barGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset(
                        'assets/images/playstore.png',
                        color: white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                      child: Text(
                        'Github',
                        style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold, fontSize: 25, color: white),
                      ),
                    ),
                    const Text(
                      'profiles',
                      style: TextStyle(fontFamily: 'OpenSans', fontSize: 20, color: white),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(40),
                        child: Image.asset('assets/images/playstore.png'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jefferson Machado',
                            style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold, fontSize: 20, color: barGrey),
                          ),
                          Text(
                            'Front End Dev Flutter',
                            style: TextStyle(fontFamily: 'OpenSans', fontSize: 15, color: barGrey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )),
            Expanded(
                flex: 4,
                child: Container(
                    color: Colors.amber,
                    child: DefaultTabController(
                      initialIndex: 0,
                      length: 2,
                      child: Scaffold(
                        appBar: AppBar(
                          toolbarHeight: 0,
                          bottom: TabBar(
                            dividerColor: whiteTwo,
                            indicatorWeight: 4,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorColor: rustyOrange,
                            unselectedLabelColor: slateGrey,
                            unselectedLabelStyle: const TextStyle(fontFamily: 'OpenSans', fontSize: 16, color: barGrey),
                            labelColor: slateGrey,
                            labelStyle: const TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold, fontSize: 16, color: barGrey),
                            tabs: [customTabItem('Repos', '73'), customTabItem('Starred', '5')],
                          ),
                        ),
                        body: const TabBarView(
                          children: [Repo(), Starred()],
                        ),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}

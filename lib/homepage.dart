import 'package:flutter/material.dart';
import 'package:watsapp_ui/component/home_comp/chatui.dart';
import 'package:watsapp_ui/component/home_comp/storyui.dart';

import 'constant.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  TabController tab;
  @override
  void initState() {
    super.initState();
    tab = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: accentColor,
        title: Text(
          'WatsApp UI clone',
          // style: TextStyle(letterSpacing: 2),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert_sharp,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Story_ui(),
            Chat_ui(),
          ],
        ),
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.all(containerRadius),
        child: Container(
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width / 1.6,
          color: accentColor,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.videocam,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.message_outlined,
                  color: Colors.white,
                ),
                child: Divider(
                  height: 0,
                  indent: 10,
                  endIndent: 10,
                  color: Colors.white,
                ),
              ),
            ],
            indicatorColor: Colors.transparent,
            controller: tab,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}

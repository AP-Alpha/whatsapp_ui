import 'package:flutter/material.dart';
import 'package:watsapp_ui/model/chatmodel.dart';

import '../../constant.dart';

class Story_ui extends StatelessWidget {
  const Story_ui({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: accentColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.greenAccent[400],
                      child: IconButton(
                          icon: Icon(
                            Icons.add_a_photo_outlined,
                            color: Colors.white,
                          ),
                          onPressed: null),
                      radius: 26,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "  Add\nStatus",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                children: List.generate(testData.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        testData[index].seen
                            ? CircleAvatar(
                                radius: 26,
                                backgroundImage: NetworkImage(
                                  testData[index].avatarUrl,
                                ),
                              )
                            : CircleAvatar(
                                radius: 26,
                                backgroundColor: Colors.greenAccent[400],
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundImage: NetworkImage(
                                    testData[index].avatarUrl,
                                  ),
                                ),
                              ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          testData[index].name,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

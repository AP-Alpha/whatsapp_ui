import 'package:flutter/material.dart';
import 'package:watsapp_ui/model/chatmodel.dart';

import '../../constant.dart';

class Chat_ui extends StatelessWidget {
  const Chat_ui({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: containerRadius)),
        child: Padding(
          padding: EdgeInsets.only(left: 8, top: 0, right: 8),
          child: ListView.builder(
            itemCount: testData.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(testData[index].avatarUrl),
                      child: testData[index].online
                          ? Container(
                              margin: EdgeInsets.only(bottom: 40, right: 40),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : null,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          testData[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          testData[index].time,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            if (testData[index].seen)
                              Icon(
                                Icons.done_all_rounded,
                                size: 16,
                                color: Colors.blue[600],
                              ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              testData[index].message,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            if (!testData[index].seen)
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    indent: 70,
                    endIndent: 20,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

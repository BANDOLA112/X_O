import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../Theming/theming.dart';

class Taskcontainer extends StatelessWidget {
  String taskname='';
  String deadline='';
Taskcontainer({required this.taskname,required this.deadline});
  @override
  Widget build(BuildContext context) {
    return  Slidable(
        startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                flex: 2,
                  onPressed: (value){},
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                ),
                backgroundColor: Colors.green,
                icon: Icons.check,
              ),
            ]),
        endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                flex: 2,
                onPressed: (value){},
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight:  Radius.circular(20)
                ),
                backgroundColor: Colors.red,
                icon: Icons.delete,
              )
            ]),
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color:Themingcolors.whiteContainerColor,
              borderRadius: BorderRadius.circular(3)
          ),
          child: Row(
            children: [
              Container(
                width: 5,
                height: 50,
                color: Themingcolors.containerColor,
              ),
              SizedBox(width: 30,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(taskname,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle:Text(deadline,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Themingcolors.grayFontColor
                        ),) ,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30,),
              Container(
                width: 80,
                height: 60,
                decoration: BoxDecoration(
                  color: Themingcolors.containerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.check,
                  color: Themingcolors.whiteIconsColor,
                  size: 40,),
              )
            ],
          ),
        ),
      );
  }
}

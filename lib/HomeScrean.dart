import 'package:flutter/material.dart';
import 'package:to_do_app/fragment/ListFragmant.dart';
import 'package:to_do_app/fragment/SettingFragment.dart';
import 'Theming/theming.dart';
import 'fragment/TaskContainer.dart';

class Homescrean extends StatefulWidget {
  static const String routeName = 'HomePage';

  @override
  State<Homescrean> createState() => _HomescreanState();
}

class _HomescreanState extends State<Homescrean> {
  List<Taskcontainer>Taskes=[];
  int index = 0;
  Color listIconColor=Themingcolors.maincolor;
  Color settingIconColor=Colors.grey;
  String taskname='';
  String taskDeadLine='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themingcolors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Themingcolors.maincolor,
        title: Text(
          'To Do List',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Themingcolors.whiteFontColor,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Themingcolors.whiteContainerColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.list,
                color: listIconColor,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  index = 0;
                  listIconColor=Themingcolors.maincolor;
                  settingIconColor=Colors.grey;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color:settingIconColor,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  index = 1;
                  settingIconColor=Themingcolors.maincolor;
                  listIconColor=Colors.grey;
                });
              },
            ),
          ],
        ),
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
      ),

      body: changeFragments(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ShowModelSheet();
        },
        child: Icon(
          Icons.add,
          color: Themingcolors.whiteIconsColor,
          size: 30,
        ),
        backgroundColor: Themingcolors.containerColor,
        shape: CircleBorder(
          side: BorderSide(color: Themingcolors.whiteContainerColor, width: 5),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget changeFragments() {
    if (index == 0) {
      return ListFragment(tasks: Taskes,);
    } else if (index == 1) {
      return Settingfragment();
    } else {
      return Container();
    }
  }
  ShowModelSheet() async {
    return await showModalBottomSheet(
      backgroundColor: Themingcolors.containerColor.withOpacity(0.8),
      context: context,
      builder: (context) {
        return Modelsheet();
      },
    );
  }
  Modelsheet() {
    return Container(
      padding: EdgeInsets.only(top: 30,left: 15,right: 15,bottom: 30),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Themingcolors.whiteFontColor
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Enter the task name',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Themingcolors.whiteFontColor

              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Themingcolors.whiteContainerColor,
                  borderRadius: BorderRadius.circular(10)
              ),

              child: TextFormField(
                onChanged: (value) {
                  taskname=value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Enter the deadline',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Themingcolors.whiteFontColor
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Themingcolors.whiteContainerColor,
                  borderRadius: BorderRadius.circular(10)
              ),

              child: TextFormField(
                onChanged: (value) {
                  taskDeadLine=value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                setState(() {
                Taskes.add(Taskcontainer(taskname: taskname,deadline: taskDeadLine,));
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 10,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Themingcolors.whiteContainerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Save',
                  style:TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Themingcolors.maincolor,
                  ) ,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
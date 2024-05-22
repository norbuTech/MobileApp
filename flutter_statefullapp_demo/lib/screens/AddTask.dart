import 'package:flutter/material.dart';
import 'package:flutter_statefullapp_demo/models/TaskModel.dart';

class AddTask extends StatefulWidget {

  Function addTask;
  num newIndex;
  AddTask({required this.addTask, required this.newIndex});

  @override
  State<AddTask> createState() => _AddTaskState();
}

// class TaskModel{
//   num id;
//   String title;
//   String description;

//   TaskModel({
//     required this.id, required this.title, required this.description
//    });
// }

class _AddTaskState extends State<AddTask> {
  String title = '';
  String description = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Task'),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          height: MediaQuery
              .of(context)
              .size
              .height - 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    TextField(
                      onChanged: (val) {
                        // this value changes variable when the input is changed
                        setState(() {
                          title = val;
                        });
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), label: Text('Title')),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: TextField(
                        onChanged: (val) {
                          setState(() {
                            description = val;
                          });
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Description')),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:16),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                              ),
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              // the state acccesses its parent variables with widget object
                              widget.addTask(TaskModel(id: widget.newIndex, title: title, description: description));
                              Navigator.of(context).pop();
                            },
                            child: Text('Save'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

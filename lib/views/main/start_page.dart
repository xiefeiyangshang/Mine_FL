import 'package:flutter/material.dart';

class GuildePage extends StatefulWidget {
  GuildePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GuidePageState();
  }
}

class _GuidePageState extends State<GuildePage> {
  var datas = List<String>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first',
      home: FirstScreen(
        students: List.generate(50, (i) => Students('姓名$i', i, '地址$i')),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final List<Students> students;

  FirstScreen({@required this.students, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                'name:${students[index].name};age:${students[index].age};address:${students[index].address};'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SecondScreen(students: students[index])));
            },
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final Students students;

  SecondScreen({Key key, @required this.students}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second')),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
                'name${students.name}--age+${students.age}---地址->${students.address}'),
          ),
        ));
  }
}

class Students {
  final String name;
  final int age;
  final String address;

  Students(this.name, this.age, this.address);
}

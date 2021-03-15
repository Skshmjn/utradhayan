import 'package:flutter/material.dart';

List teams = [
  {
    'name': 'Team one',
    'players': [
      {
        'name': 'Team one player one',
      },
      {
        'name': 'Team one player two',
      },
      {
        'name': 'Team one player three',
      },
    ]
  },
  {
    'name': 'Team two',
    'players': [
      {
        'name': 'Team two player one',
      },
      {
        'name': 'Team two player one',
      },
      {
        'name': 'Team two player three',
      },
    ]
  },
];

class AudioBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: renderTeams(teams));
  }
}

Widget renderTeams(List teams) {
  return Scaffold(
    appBar: AppBar(title: Text("Audiobooks"),),
    body: ListView.builder(
      padding: EdgeInsets.only(top: 10),
      itemCount: teams.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(20.0,10,10,10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(teams[index]['name'],style: TextStyle(fontSize: 22) ,),
              // renderPlayers(teams[index]['players'])
            ],
          ),
        );
      },
    ),
  );
}

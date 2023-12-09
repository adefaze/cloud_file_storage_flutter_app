import 'package:flutter/material.dart';

class TeamFolderPage extends StatefulWidget {
  const TeamFolderPage({super.key});

  @override
  State<TeamFolderPage> createState() => _TeamFolderPageState();
}

class _TeamFolderPageState extends State<TeamFolderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),
          alignment: Alignment.bottomCenter,
          height: 172,
          decoration: BoxDecoration(color: Colors.blue[900]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Wakanda',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Team folder',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  // search icon
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  // notification icon
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.1),
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          size: 28,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}

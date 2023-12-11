import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  final String folderName;
  const ProjectPage({super.key, required this.folderName});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            alignment: Alignment.bottomCenter,
            height: 172,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Chatbox',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Project',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.05),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.05),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Avatar horizontal scroll list
          Container(
            padding: const EdgeInsets.only(left: 25, top: 25),
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildAvatar('John', 'john'),
                buildAvatar('Janet', 'janet'),
                buildAvatar('Adam', 'adam'),
                buildAvatar('Grace', 'grace'),
                buildAvatar('Blessing', 'blessing'),
                buildAvatar('Peter', 'peter'),
                buildAvatar('Sarah', 'sarah'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAvatar(String name, String image) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundImage: Image.asset('assets/images/$image.jpg').image),
          const SizedBox(height: 8),
          Text(name,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

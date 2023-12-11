import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  final String folderName;

  const ProjectPage({super.key, required this.folderName});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  int selectedIndex = 0;

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
                          color: Colors.blue,
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
                          color: Colors.blue,
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
          const Divider(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Files',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'Create new',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                buildFileRow('Assets', true),
                buildFileRow('Wireframes', false),
                buildFileRow('Hi-Fi mocks', false),
                buildFileRow('3D designs', false),
                buildFileRow('Animations', false),
                buildFileRow('Research', false),
                buildFileRow('Prototype', false),
                buildFileRow('Other', false),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 7,
              blurRadius: 1,
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time), label: 'Access time'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box), label: 'Add folder'),
          ]),
    );
  }

  Container buildFileRow(String folderName, bool showAlert) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Icon(
                    Icons.folder,
                    color: Colors.blue[200],
                  ),
                  if (showAlert)
                    Positioned(
                      right: 0,
                      top: 2,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const CircleAvatar(
                          radius: 3.5,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    )
                ],
              ),
              const SizedBox(width: 12),
              Text(
                folderName,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
        ],
      ),
    );
  }

  Widget buildAvatar(String name, String image) {
    return Padding(
      padding: const EdgeInsets.only(right: 9),
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

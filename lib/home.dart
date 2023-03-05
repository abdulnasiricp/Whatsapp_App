import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green[800],
              actions: [
                const Icon(Icons.search),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                    icon: const Icon(Icons.more_vert),
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 1,
                            child: Text('New Group'),
                          ),
                          const PopupMenuItem(
                            value: 2,
                            child: Text('Setting'),
                          ),
                          const PopupMenuItem(
                            value: 3,
                            child: Text('Log out'),
                          ),
                        ]),
                const SizedBox(
                  height: 20,
                ),
              ],
              title: const Text('WhatsApp'),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                const Text('camera'),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.93b6cdeb654a7ae0d21827078ffb76fe?rik=ea3fdChFFhNo0w&pid=ImgRaw&r=0')),
                        title: Text('Nasir'),
                        subtitle: Text('Subscribe my channel'),
                        trailing: Text('3:33 PM'),
                      );
                    }),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.93b6cdeb654a7ae0d21827078ffb76fe?rik=ea3fdChFFhNo0w&pid=ImgRaw&r=0')),
                        title: Text('Nasir'),
                        subtitle: Text('32min ago'),
                      );
                    }),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.93b6cdeb654a7ae0d21827078ffb76fe?rik=ea3fdChFFhNo0w&pid=ImgRaw&r=0')),
                        title: const Text('Nasir'),
                        subtitle: Text(index / 2 == 1
                            ? 'you missed call'
                            : 'you missed video call'),
                        trailing: Icon(
                            index / 2 == 1 ? Icons.phone : Icons.video_call),
                      );
                    }),
              ],
            )));
  }
}

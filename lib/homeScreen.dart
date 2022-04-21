import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail Clone"),
        // leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    "https://data.whicdn.com/images/322027365/original.jpg?t=1541703413",
                  )),
              accountEmail: Text("fade@valorant.com"),
              accountName: Text("Fade Valorant"),
              otherAccountsPictures: [
                CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfyj1xFU6NpnbGpY22BtxbJnDdEZCfoNAb8w&usqp=CAU",
                    )),
              ],
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Inbox"),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Sent"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Stared"),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.archive),
              title: Text("Archived"),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text("Chat"),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log out"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.deepPurple,
        selectedItemColor: Colors.deepPurple[200],
        items: const [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Chat",icon: Icon(Icons.chat)),
          BottomNavigationBarItem(label: "Inbox",icon: Icon(Icons.inbox)),
          BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.people)),
          BottomNavigationBarItem(label: "Settings",icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}

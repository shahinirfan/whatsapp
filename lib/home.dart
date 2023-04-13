import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, initialIndex: 1, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              
              SizedBox(
                width: 20.00,
              ),
              PopupMenuButton(onSelected: (value) {
                print(value);
              }, itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text('New group'),value: 1),
                  PopupMenuItem(child: Text('New broadcast'), value: 2),
                  PopupMenuItem(child: Text('Linked devices'), value: 3),
                  PopupMenuItem(child: Text('Starred messages'), value: 4),
                  PopupMenuItem(child: Text('Payments'), value: 5),
                  PopupMenuItem(child: Text('Settings'), value: 6),
                ];
              })
            ],
          ),
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt,
              ),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        children: [
          Text('Camera'),
          Text('CHATS'),
          Text('Status'),
          Text('Calls'),
        ],
        controller: _controller,
      ),
      );
  }
}

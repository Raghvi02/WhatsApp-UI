import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('Whatsapp'),
            bottom: TabBar(
              tabs: [
                Icon(Icons.camera_alt),
                Text('Chats'),
              Text('Status'),
          Text('Calls'),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10,),
            PopupMenuButton(
             icon:   Icon(Icons.more_vert_outlined),

                itemBuilder: (context,)=>[
             PopupMenuItem(
                 value:'1,',
            child: Text('New group')),
                  PopupMenuItem(
                      value:'2,',
                      child: Text('Settings')),
                  PopupMenuItem(
                      value:'3,',
                      child: Text('logout')),


            ]),
              SizedBox(width: 10,),
            ],

          ),
          body: TabBarView(
            children: [
              Text('camera'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
return const ListTile(
  leading:
     CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),


  ),
  title: Text('Raghvi Goyal'),
  subtitle: Text('where is my dog'),
  trailing: Text('8:30 PM'),
);

            }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return const ListTile(
                      leading:
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),


                      ),
                      title: Text('Raghvi Goyal'),
                      subtitle: Text('8: 45'),
                     // trailing: Icon(Icons.call),
                    );

                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return const ListTile(
                      leading:
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),


                      ),
                      title: Text('Raghvi Goyal'),
                      subtitle: Text('You missed an audio call'),
                      trailing: Icon(Icons.call),
                    );

                  }),

            ],

          ),
        )
    ),);
  }
}

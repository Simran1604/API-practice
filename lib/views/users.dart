import 'package:flutter/material.dart';
import 'package:ui/helper/getInfo.dart';
import 'package:ui/models/userInfo.dart';
import 'package:ui/views/userDetail.dart';

class users extends StatefulWidget {
  const users({ Key? key }) : super(key: key);

  @override
  _usersState createState() => _usersState();
}

class _usersState extends State<users> {

  late Future <List<userInfo>> usersList;
  @override
  void initState(){
    usersList=getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Center(child: Text("Contacts",
        style: TextStyle(color: Colors.grey),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<userInfo>>(
          future: usersList,
          builder: (context, snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context,index){
                  return InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          leading:const CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.blueGrey,
                          ),
                          title: Text(snapshot.data![index].username),
                          subtitle:Text(snapshot.data![index].name) ,
                        ),
                    ),

                      onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>userdetail(index:index,snapshot: snapshot,)))
                  );
                  
                },
              );
            }else {
              return const Center(
              child: CircularProgressIndicator());
            }
          }
        ),
      ),
    );
  }
}
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui/helper/getInfo.dart';
import 'package:ui/models/userInfo.dart';

class userdetail extends StatelessWidget {
   late int i;
   late userInfo data;
   userdetail({ Key? key, required int index, required AsyncSnapshot<List<userInfo>> snapshot }): super(key: key){


  i=index;
  data=snapshot.data![i];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(children: [
              const SizedBox(height: 30,),
              const CircleAvatar(radius: 50,
              backgroundColor: Colors.blueGrey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(data.name,
                style: const TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(data.email,style: const TextStyle(
                    
                    fontSize: 16
                  ),),
                  const VerticalDivider(color: Colors.black,
                  thickness: 3,),
                  Text(data.website,style: const TextStyle(
                    
                    fontSize: 16
                  ),)
                ],
              ),
              const SizedBox(height: 15,),
              const Divider(thickness: 3,),
              const SizedBox(height: 15,),
              Column(
                children:  [
                  const Text("ADDRESS",style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(data.address!.city,style: const TextStyle(
                    
                    fontSize: 16
                  ),),
                  ),
                  Text(data.address!.suite,style: const TextStyle(
                    
                    fontSize: 16
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(data.address!.zipcode,style: const TextStyle(
                    
                    fontSize: 16
                  ),),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Divider(thickness: 3,),
              const SizedBox(height: 15,),
              Column(
                children:  [
                  const Text("COMPANY",style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(data.company!.name,style: const TextStyle(
                    
                    fontSize: 16
                  ),),
                  ),
                  Text(data.company!.bs,style: const TextStyle(
                    
                    fontSize: 16
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(data.company!.catchPhrase,style: const TextStyle(
                    
                    fontSize: 16
                  ),),
                  )
                ],
              )
            ],),
            
          ),
        ),
      ),
    );
  }
}
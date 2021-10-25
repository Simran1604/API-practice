// ignore_for_file: file_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ui/models/userInfo.dart';

Future<List<userInfo>> getInfo() async{
  List <userInfo> users=[];

  //API address
  Uri url = Uri.parse(
      "https://jsonplaceholder.typicode.com/users");

      var response= await http.get(url);

      var jsonData=jsonDecode(response.body);

        jsonData.forEach(
          (e){
          userInfo user= userInfo(
        id:e["id"],
        name:e["name"],
        phone:e["phone"],
        website:e["website"],
        username:e["username"], 
        email: e["email"],
        address: Address(street: e["address"]["street"],
                         suite: e["address"]["suite"],
                         city: e["address"]["city"],
                         zipcode: e["address"]["zipcode"],
                         geo: Geo(
                           lat: e["address"]["geo"]["lat"],
                           lng: e["address"]["geo"]["lng"],
                         ),
                        ),
        company: Company(
                          name: e["company"]["name"],
                          catchPhrase: e["company"]["catchPhrase"],
                          bs: e["company"]["bs"],
                        )          
        );
        users.add(user);
        
        },
        );
        return users;

}
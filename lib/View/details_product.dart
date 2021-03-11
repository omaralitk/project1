import 'package:flutter/material.dart';

import 'package:login2/View/profile.dart';
import 'package:login2/Model/product.dart';

class Details extends StatelessWidget {
  Product pr;

  Details(this.pr);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(pr.name),
          backgroundColor: Colors.black12,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            pr.urlProfileImage,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pr.name,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$' + pr.price,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Status : ${pr.status}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Description :\n ${pr.desc}'),


              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call),
        backgroundColor: Colors.green,
        onPressed: (){


        },
      ),
    );
  }
}

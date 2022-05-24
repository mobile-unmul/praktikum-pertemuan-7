import 'package:flutter/material.dart';
import 'package:pertemuan7_crud/item_card.dart';

class MainPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Firestore Demo',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [
                //// VIEW DATA HERE
                // FutureBuilder<QuerySnapshot>(
                //   future: users.get(),
                //   builder: (_, snapshot) {
                //     return (snapshot.hasData)
                //         ? Column(
                //             children: snapshot.data!.docs
                //                 .map(
                //                   (e) => ItemCard(e.get('name'), e.get('age')),
                //                 )
                //                 .toList(),
                //           )
                //         : Text('Loading...');
                //   },
                // ),
                SizedBox(height: 150)
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3)
                  ]),
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              controller: nameController,
                              decoration: InputDecoration(hintText: "Name"),
                            ),
                            TextField(
                              controller: ageController,
                              decoration: InputDecoration(hintText: "Age"),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Add Data',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              //// ADD DATA HERE
                              // users.add({
                              //   'name': nameController.text,
                              //   'age': int.tryParse(ageController.text) ?? -1,
                              // });

                              // nameController.text = '';
                              // ageController.text = '';
                            }),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}

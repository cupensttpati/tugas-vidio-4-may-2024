import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  SampleListView({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//          title: const Text('Belajar Widget list view'),
  //       ),
  //      body: ListView(
  //       reverse: true,
  //      padding: const EdgeInsets.all(10),
  //     children: [
  //      Container(
  //       color: Colors.purple[700],
  //       height: 100,
  //     ),
  //     Container(
  //       color: Colors.purple[400],
  //       height: 100,
  //     ),
  //     Container(
  //       color: Colors.purple[100],
  //      height: 100,
  //    ),
  //    Container(
  //      color: Colors.purple[700],
  //      height: 100,
  //    ),
  //    Container(
  //      color: Colors.purple[400],
  //      height: 100,
  //    ),
  //  Container(
  //    color: Colors.purple[100],
  //     height: 100,
  //    ),
  //  ],
  // ));
//  }
// }
  final List data = [
    {
      'photoUrl': 'assets/images/sample-image-asset.jpeg',
      'name': 'saras',
      'address': 'Pati',
    },
    {
      'photoUrl': 'assets/images/iri-image-asset.jpeg',
      'name': 'parjo',
      'address': 'Pati',
    },
    {
      'photoUrl': 'assets/images/lha-image-asset.jpeg',
      'name': 'sukinem',
      'address': 'Pati',
    },
    {
      'photoUrl': 'assets/images/lho-image-asset.jpeg',
      'name': 'imam',
      'address': 'Pati',
    },
    {
      'photoUrl': 'assets/images/iki-image-asset.jpeg',
      'name': 'sumini',
      'address': 'Pati',
    },
    {
      'photoUrl': 'assets/images/jebul-image-asset.jpeg',
      'name': 'parsam',
      'address': 'Pati',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget list view'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(data[index]['photoUrl']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['address']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
            tileColor: Colors.grey[400],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 2,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}

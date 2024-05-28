import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Image Cicle'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/sample-image-asset.jpeg'),
          const CircleAvatar(
            radius: 50,
            backgroundImage:
                AssetImage('assets/images/sample-image-asset.jpeg'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/sample-image-asset.jpeg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/sample-image-asset.jpeg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/sample-image-asset.jpeg'),
                  fit: BoxFit.fill,
                )),
          ),
        ],
      ),
    );
  }
}


  // @override
  // Widget build(BuildContext context) {
  // return Scaffold(
  // appBar: AppBar(
  // title: const Text('Belajar Widget Image'),
  ////),
  //body: Container(
  // margin: const EdgeInsets.all(5),
  // height: 400,
  // width: 400,
  //  decoration: BoxDecoration(border: Border.all()),
  //  child: Image.asset(
  //  'assets/images/sample-image-asset.jpeg',
  //  alignment: Alignment.centerRight,
  //  color: Colors.blue,
  //  colorBlendMode: BlendMode.softLight,
  //  fit: BoxFit.fill,
  // repeat: ImageRepeat.repeatY,
  //),
  // ),
  // );
  // }
// }
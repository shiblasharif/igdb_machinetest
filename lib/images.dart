import 'package:flutter/material.dart';
import 'package:machinetest/models/models.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imageList(),
      ],
    );
  }

  imageList() {
    return SizedBox(
      height: 200,
      child: FutureBuilder(
          future: responseData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // List toRev = snapshot.data as List;
              // List popular = toRev.reversed.toList();
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                 // itemCount: popular.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      // onTap: () => Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Movies(
                      //               movie: popular[index],
                      //             ))),
                      child: SizedBox(
                        width: 145,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Container(
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6)),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      '//images.igdb.com/igdb/image/upload/t_thumb/mnljdjtrh44x4snmierh.jpg'  
                                          
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }
            return Container();
          }),
    );
  }
}

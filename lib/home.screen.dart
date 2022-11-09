import 'package:ebook/ebook.service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EbookAPIModel.dart';
import 'book.component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(

            title:
          Text('Ebook',style: TextStyle(fontSize: 25)),
            leading: Icon(CupertinoIcons.book_circle,size: 30,),
            backgroundColor: Colors.deepPurple,
          ),
         body:
         Container(
             child: content(context)),

        ),
      ),
    );
  }
  Widget content(BuildContext context) {
    final service = EbookService();
    return FutureBuilder<EbookApiModel>(
      builder: (context, snapdata) {
        if (snapdata.hasData) {
          return ListView.builder(
            itemCount: snapdata.data?.items?.length,
            itemBuilder: (context, index) {
              return BookComponent(
                  snapdata.data?.items![index].volumeInfo?.title ?? "",
                  snapdata.data?.items![index].volumeInfo?.publishedDate ?? "",
                  snapdata.data?.items![index].volumeInfo?.description ?? "",
                  snapdata.data?.items![index].volumeInfo?.authors?.toString()?? ""
              );

            },
          );
        } else
          return  Center(child: CircularProgressIndicator());
      },
      future: service.fetchbooks(),
    );
  }


}


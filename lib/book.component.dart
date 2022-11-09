import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BookComponent extends StatelessWidget {
  const BookComponent(
      this.title,
      this.publishedDate,
      this.description,
      this.authors,
      );

  final String title;
  final String publishedDate;
  final String description;
  final String authors;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 0.2,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(title,style: TextStyle(fontSize: 20)),
                      Text(("(Published :"+publishedDate+")"),style: TextStyle(fontSize: 12,color: Colors.grey)),
                      SizedBox(height: 10),
                      Text("Authors:"),
                      Text((authors.toString()),style: TextStyle(fontSize: 12,color: Colors.grey)),
                      SizedBox(height: 10),
                      Text(description)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

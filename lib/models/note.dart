import 'package:cloud_firestore/cloud_firestore.dart';

class Note {
  String id;
  String ownerId;
  String name;
  int price;
  String description;
  List<String> imgList;
  String productCategory;
  String buyerId;
  String subject;
  String year; //I,II,III,IV
  String branch;
  String facultyName;
  String condition;
  Timestamp postedAt;
  List<String> tagList;

  Note();

  Note.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    ownerId = data['ownerId'];
    name = data['name'];
    price = data['price'];
    description = data['description'];
    // imgList=data['imgList'];
    imgList = List.from(data['imgList']);
    productCategory = data['productCategory'];
    buyerId = data['buyerId'];
    subject = data['subject'];
    year = data['year'];
    branch = data['branch'];
    facultyName = data['facultyName'];
    condition = data['condition'];
    postedAt = data['postedAt'];
    tagList = List.from(data['tagList']);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ownerId': ownerId,
      'name': name,
      'price': price,
      'description': description,
      'imgList': imgList,
      'productCategory': productCategory,
      'buyerId': buyerId,
      'subject': subject,
      'year': year,
      'branch': branch,
      'facultyName': facultyName,
      'condition': condition,
      'postedAt': postedAt,
      'tagList': tagList,
    };
  }
}

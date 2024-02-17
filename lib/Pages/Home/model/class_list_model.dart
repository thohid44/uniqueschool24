// To parse this JSON data, do
//
//     final classListModel = classListModelFromJson(jsonString);

import 'dart:convert';

ClassListModel classListModelFromJson(String str) => ClassListModel.fromJson(json.decode(str));



class ClassListModel {
    List<ClassCategory>? data;
    Links? links;
    Meta? meta;

    ClassListModel({
        this.data,
        this.links,
        this.meta,
    });

    factory ClassListModel.fromJson(Map<String, dynamic> json) => ClassListModel(
        data: List<ClassCategory>.from(json["data"].map((x) => ClassCategory.fromJson(x))),
        links: Links.fromJson(json["links"]),
        meta: Meta.fromJson(json["meta"]),
    );


}

class ClassCategory {
    int? id;
    String? name;
    String? date;

    ClassCategory({
        this.id,
        this.name,
        this.date,
       
    });

    factory ClassCategory.fromJson(Map<String, dynamic> json) => ClassCategory(
        id: json["id"],
        name: json["name"],
        date: json["date"],
      
    );

   
}

class Links {
    String? first;
    String? last;
    dynamic prev;
    dynamic next;

    Links({
        this.first,
        this.last,
        this.prev,
        this.next,
    });

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
    );

   
}

class Meta {
    int? currentPage;
    int? from;
    int? lastPage;
    List<Link>? links;
    String? path;
    int? perPage;
    int? to;
    int? total;

    Meta({
        this.currentPage,
        this.from,
        this.lastPage,
        this.links,
        this.path,
        this.perPage,
        this.to,
        this.total,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
    );

}

class Link {
    String? url;
    String? label;
    bool? active;

    Link({
        this.url,
        this.label,
        this.active,
    });

    factory Link.fromJson(Map<String?, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
    );

  
}

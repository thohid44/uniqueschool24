

import 'dart:convert';

BookListModel bookListModelFromJson(String str) => BookListModel.fromJson(json.decode(str));



class BookListModel {
    List<BookModel>? data;
    Links? links;
    Meta? meta;

    BookListModel({
        this.data,
        this.links,
        this.meta,
    });

    factory BookListModel.fromJson(Map<String, dynamic> json) => BookListModel(
        data: List<BookModel>.from(json["data"].map((x) => BookModel.fromJson(x))),
        links: Links.fromJson(json["links"]),
        meta: Meta.fromJson(json["meta"]),
    );

    
}

class BookModel {
    int? id;
    String? title;
    String? authorName;
    String? slug;
    String? tags;
    String? requirements;
    String? thumbnail;
    String? shortPdf;
    String? longPdf;
    String? shortDescription;
    String? price;
    String? discount;
    String? freeCourse;
    dynamic metaTitle;
    dynamic facebookLink;
    String? status;

    BookModel({
        this.id,
        this.title,
        this.authorName,
        this.slug,
        this.tags,
        this.requirements,
        this.thumbnail,
        this.shortPdf,
        this.longPdf,
        this.shortDescription,
        this.price,
        this.discount,
        this.freeCourse,
        this.metaTitle,
        this.facebookLink,
        this.status,
    });

    factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        id: json["id"],
        title: json["title"],
        authorName: json["author_name"],
        slug: json["slug"],
        tags: json["tags"],
        requirements: json["requirements"],
        thumbnail: json["thumbnail"],
        shortPdf: json["short_pdf"],
        longPdf: json["long_pdf"],
        shortDescription: json["short_description"],
        price: json["price"],
        discount: json["discount"],
        freeCourse: json["free_course"],
        metaTitle: json["meta_title"],
        facebookLink: json["facebook_link"],
        status: json["status"],
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

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
    );

   
}

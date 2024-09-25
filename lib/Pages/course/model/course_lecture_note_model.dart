// To parse this JSON data, do
//
//     final courseLectureNoteModel = courseLectureNoteModelFromJson(jsonString);

import 'dart:convert';

CourseLectureNoteModel courseLectureNoteModelFromJson(String str) => CourseLectureNoteModel.fromJson(json.decode(str));



class CourseLectureNoteModel {
    bool success;
    Data data;

    CourseLectureNoteModel({
        required this.success,
        required this.data,
    });

    factory CourseLectureNoteModel.fromJson(Map<String, dynamic> json) => CourseLectureNoteModel(
        success: json["success"],
        data: Data.fromJson(json["data"]),
    );

 
}

class Data {
    String notePdfBaseUrl;
    Course course;

    Data({
        required this.notePdfBaseUrl,
        required this.course,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        notePdfBaseUrl: json["note_pdf_base_url"],
        course: Course.fromJson(json["course"]),
    );

}

class Course {
    int id;
    String title;
    String facebookGroupLink;
    String whatsappGroupLink;
    List<Lecture> lecture;
    List<Lecture> notes;

    Course({
        required this.id,
        required this.title,
        required this.facebookGroupLink,
        required this.whatsappGroupLink,
        required this.lecture,
        required this.notes,
    });

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        title: json["title"],
        facebookGroupLink: json["facebook_group_link"],
        whatsappGroupLink: json["whatsapp_group_link"],
        lecture: List<Lecture>.from(json["lecture"].map((x) => Lecture.fromJson(x))),
        notes: List<Lecture>.from(json["notes"].map((x) => Lecture.fromJson(x))),
    );

}

class Lecture {
    int id;
    String courseId;
    String paper;
    String chapter;
    String title;
    String? videoUrl;
    dynamic note;
    String notePdf;

    Lecture({
        required this.id,
        required this.courseId,
        required this.paper,
        required this.chapter,
        required this.title,
        this.videoUrl,
        this.note,
        required this.notePdf,
    });

    factory Lecture.fromJson(Map<String, dynamic> json) => Lecture(
        id: json["id"],
        courseId: json["course_id"],
        paper: json["paper"],
        chapter: json["chapter"],
        title: json["title"],
        videoUrl: json["video_url"],
        note: json["note"],
        notePdf: json["note_pdf"],
    );

  
}



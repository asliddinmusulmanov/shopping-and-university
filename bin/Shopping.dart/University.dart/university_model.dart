
// class University {
//   late String name;
//   late String location;
//   // ignore: non_constant_identifier_names
//   int? founded_year;
//   late List<Faculties> faculties;

//   University({
//     required this.name,
//     required this.location,
//     // ignore: non_constant_identifier_names
//     required this.founded_year,
//     required this.faculties,
//   });

//   University.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     location = json['location'];
//     // ignore: non_constant_identifier_names
//     founded_year = json['founded_year'];
//     // ignore: non_constant_identifier_names
//     faculties = json['faculties'].map((e) => Faculties.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'location': location,
//       // ignore: non_constant_identifier_names
//       'founded_year': founded_year,
//       // ignore: non_constant_identifier_names
//       'faculties': faculties.map((e) => e.toJson()).toList(),
//     };
//   }
// }

// class Faculties {
//   late String name;
//   late List<Departments> departments;

//   Faculties({
//     required this.name,
//     required this.departments,
//   });

//   Faculties.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     departments =
//         json['departments'].map((e) => Departments.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'departments': departments.map((e) => e.toJson()).toList(),
//     };
//   }
// }

// class Departments {
//   late String name;
//   late List<Programs> programs;

//   Departments({
//     required this.name,
//     required this.programs,
//   });

//   Departments.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     programs = json['programs'].map((e) => Programs.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'programs': programs.map((e) => e.toJson()).toList(),
//     };
//   }
// }

// class Programs {
//   late String name;
//   // ignore: non_constant_identifier_names
//   late int duration_years;

//   Programs({
//     required this.name,
//     // ignore: non_constant_identifier_names
//     required this.duration_years,
//   });

//   Programs.fromJson(Map<String, dynamic> json){
//     name = json['name'];
//     duration_years = json['duration_years'];
//   }

//   Map<String, dynamic> toJson(){
//     return {
//       'name': name,
//       'duration_years': duration_years,
//     };
//   }
// }

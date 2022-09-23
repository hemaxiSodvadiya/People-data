class PeopleData {
  final String gender;
  final String title;
  final String first;
  final String last;
  final int number;
  final String name;
  final String city;
  final String state;
  final String country;
  final int postcode;
  final String description;
  final String email;
  final String username;
  final String password;
  final int age;
  final int phone;
  final String image;
  final int page;

  PeopleData({
    required this.gender,
    required this.title,
    required this.first,
    required this.last,
    required this.name,
    required this.description,
    required this.password,
    required this.age,
    required this.city,
    required this.country,
    required this.email,
    required this.image,
    required this.number,
    required this.page,
    required this.phone,
    required this.postcode,
    required this.state,
    required this.username,
  });

  factory PeopleData.fromJSON({required Map<String, dynamic> json}) {
    return PeopleData(
      gender: json['results'][0]['gender'],
      title: json['results'][0]['name']['title'],
      first: json['results'][0]['name']['first'],
      last: json['results'][0]['name']['last'],
      name: json['results'][0]['location']['street']['name'],
      number: json['results'][0]['location']['street']['number'],
      city: json['results'][0]['location']['city'],
      state: json['results'][0]['location']['state'],
      country: json['results'][0]['location']['country'],
      postcode: json['results'][0]['location']['postcode'],
      description: json['results'][0]['location']['timezone']['description'],
      email: json['results'][0]['email'],
      username: json['results'][0]['login']['username'],
      password: json['results'][0]['login']['password'],
      age: json['results'][0]['dob']['age'],
      phone: json['results'][0]['phone'],
      image: json['results'][0]['picture']['large'],
      page: json['results'][1]['info']['page'],
    );
  }
}

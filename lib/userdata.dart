class User {
  String name;
  String img;
  int likes;
  int postedtime;
  int? comment;
  int? share = null;
  User(
      {required this.name,
      required this.img,
      required this.likes,
      required this.postedtime,
         this.comment,
        this.share,});
}

List<User> userlist = [
  User(
      name: "Sami Akrey", img: "assets/photo_1.jpg", likes: 22, postedtime: 10,comment: 20,share: 6),
  User(name: "HusseinZ", img: "assets/photo_2.jpg", likes: 100, postedtime: 45,comment: 15,share: 8),
  User(name: "Kuvaan16", img: "assets/photo_3.jpg", likes: 16, postedtime: 56,comment: 16,share: 3),
  User(
      name: "Sami Akrey", img: "assets/photo_4.jpg", likes: 45, postedtime: 22,comment: 1,share: 1),
  User(name: "HusseinZ", img: "assets/photo_5.jpg", likes: 116, postedtime: 35,comment: 32,share: 20),
  User(name: "Kuvaan16", img: "assets/photo_6.jpg", likes: 6, postedtime: 21,comment: 67,share: 1),
  User(
      name: "Sami Akrey", img: "assets/photo_7.jpg", likes: 52, postedtime: 58),
  User(name: "HusseinZ", img: "assets/photo_8.jpg", likes: 14, postedtime: 16,share: 6),
  User(name: "Kuvaan16", img: "assets/photo_9.jpg", likes: 22, postedtime: 9,comment: 37,share: 3),
  User(
      name: "Sami Akrey",
      img: "assets/photo_10.jpg",
      likes: 78,
      postedtime: 10,comment: 9,share: 8),
  User(name: "HusseinZ", img: "assets/photo_11.jpg", likes: 35, postedtime: 39,comment: 55,share: 67),
  User(name: "Kuvaan16", img: "assets/photo_12.jpg", likes: 25, postedtime: 10,comment: 13,share: 6),
  User(
      name: "Sami Akrey", img: "assets/photo_13.jpg", likes: 67, postedtime: 7,comment: 20,share: 8),
  User(name: "HusseinZ", img: "assets/photo_14.jpg", likes: 61, postedtime: 30,comment: 40,share: 1),
  User(name: "Kuvaan16", img: "assets/photo_15.jpg", likes: 90, postedtime: 4,comment: 210,share: 100),
  User(
      name: "Sami Akrey",
      img: "assets/photo_16.jpg",
      likes: 220,
      postedtime: 1,comment: 10,share: 20),
];

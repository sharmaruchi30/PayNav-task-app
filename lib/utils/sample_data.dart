class Profile {
  bool self;
  bool verified;
  String arrow;
  String profile;
  String name;
  int score;

  Profile({
    required this.self,
    required this.verified,
    required this.arrow,
    required this.profile,
    required this.name,
    required this.score,
  });

  static List<List<Profile>> topData = [
    [
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/firstProfile.png",
          name: "Samvibhan Singh",
          score: 8500),
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/secondProfile.png",
          name: "Natasha Chowdhary",
          score: 8210),
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/thirdProfile.png",
          name: "kaveri Sharma",
          score: 7820),
    ],
    [
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/41.png",
          name: "Brij Mahapatra",
          score: 8230),
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/firstProfile.png",
          name: "Samvibhan Singh",
          score: 7610),
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/thirdProfile.png",
          name: "Kaveri Sharma",
          score: 7220),
    ],
    [
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/thirdProfile.png",
          name: "Kaveri Sharma",
          score: 8500),
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/secondProfile.png",
          name: "Natasha Chowdhary",
          score: 8210),
      Profile(
          self: false,
          verified: false,
          arrow: "assets/icons/downArrow.png",
          profile: "assets/profiles/41.png",
          name: "Brij Mahapatra",
          score: 7820),
    ]
  ];

  static List<Profile> profileData = [
    Profile(
        self: false,
        verified: false,
        arrow: "assets/icons/downArrow.png",
        profile: "assets/profiles/7.png",
        name: "Samvibhan Singh",
        score: 5960),
    Profile(
        self: false,
        verified: true,
        arrow: "assets/icons/upArrow.png",
        profile: "assets/profiles/5.png",
        name: "Natasha Chowdhary",
        score: 5540),
    Profile(
        self: false,
        verified: false,
        arrow: "assets/icons/upArrow.png",
        profile: "assets/profiles/41.png",
        name: "Brij Mahapatra",
        score: 5320),
    Profile(
        self: false,
        verified: false,
        arrow: "assets/icons/downArrow.png",
        profile: "assets/profiles/5.png",
        name: "Riya Sharma",
        score: 5210),
    Profile(
        self: false,
        verified: false,
        arrow: "assets/icons/upArrow.png",
        profile: "assets/profiles/4.png",
        name: "Angat Sharma",
        score: 4920),
    Profile(
        self: false,
        verified: true,
        arrow: "assets/icons/upArrow.png",
        profile: "assets/profiles/5.png",
        name: "Shikha Rawat",
        score: 4320),
    Profile(
        self: false,
        verified: false,
        arrow: "assets/icons/upArrow.png",
        profile: "assets/profiles/6.png",
        name: "Natasha Oberoi",
        score: 4120),
    Profile(
        self: false,
        verified: false,
        arrow: "assets/icons/downArrow.png",
        profile: "assets/profiles/7.png",
        name: "Danish Sait",
        score: 3920),
    Profile(
        self: false,
        verified: false,
        arrow: "assets/icons/upArrow.png",
        profile: "assets/profiles/5.png",
        name: "Kiran kher",
        score: 3910),
    Profile(
        self: false,
        verified: true,
        arrow: "assets/icons/upArrow.png",
        profile: "assets/profiles/7.png",
        name: "Darshan Rawal",
        score: 3820),
  ];
}

class Prize {
  String icon1;
  String rank;
  String icon2;
  String prizeType;
  String prize;

  Prize({
    required this.icon1,
    required this.rank,
    required this.icon2,
    required this.prizeType,
    required this.prize,
  });

  static List<Prize> prizeData = [
    Prize(
        icon1: "assets/icons/crown.png",
        rank: "1",
        icon2: "assets/icons/coin.png",
        prizeType: "Gold",
        prize: "₹ 1,00,000"),
    Prize(
        icon1: "assets/icons/rank2.png",
        rank: "2",
        icon2: "assets/icons/coin.png",
        prizeType: "Gold",
        prize: "₹ 50,000"),
    Prize(
        icon1: "assets/icons/rank3.png",
        rank: "3",
        icon2: "assets/icons/amazon.png",
        prizeType: "voucher",
        prize: "₹ 10,000"),
    Prize(
        icon1: "assets/icons/rank4.png",
        rank: "4-10",
        icon2: "assets/icons/swiggy.png",
        prizeType: "voucher",
        prize: "₹ 1,000"),
    Prize(
        icon1: "assets/icons/rank11.png",
        rank: "11-100",
        icon2: "assets/icons/coin.png",
        prizeType: "Gold",
        prize: "10 mg"),
    Prize(
        icon1: "assets/icons/rank100.png",
        rank: "100-500",
        icon2: "assets/icons/coin.png",
        prizeType: "Gold",
        prize: "1 mg"),
  ];
}

class Points {
  String title;
  String point;

  Points({
    required this.title,
    required this.point,
  });

  static List<Points> pointsData = [
    Points(title: "Joined PayNav", point: "50"),
    Points(title: "First Purchase", point: "250"),
    Points(title: "KYC", point: "50"),
    Points(title: "Account Opened & Added Money", point: "50"),
    Points(title: "First Gold Purchase", point: "50"),
    Points(title: "First Voucher Purchase", point: "50"),
    Points(title: "First Direct Shopping", point: "50"),
    Points(title: "Play \"The legend of Gold, Car & the Jet\"", point: "50"),
  ];
}

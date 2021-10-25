// ignore_for_file: file_names

class userInfo{

  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;

  Company? company;
  Address? address;

  userInfo({
    required this.email,
    required this.name,
    required this.id,
    required this.phone,
    required this.website,
    required this.username,
    this.address,
    this.company,
  });
}

  class Address{

    String street;
    String suite;
    String city;
    String zipcode;
    Geo? geo;

    Address(
      {
      required this.city,
      this.geo,
      required this.street,
      required this.suite,
      required this.zipcode,
    }
    );
  }

    class Geo{
    String? lat;
    String? lng;

    Geo(
      {
      this.lat,
      this.lng,
    }
    );
    }

  class Company{

    String name;
    String catchPhrase;
    String bs;

    Company(
      {
      required this.bs,
      required this.catchPhrase,
      required this.name,
    }
    );

  }
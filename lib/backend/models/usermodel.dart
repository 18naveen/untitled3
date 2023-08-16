
class User{
  final String name;
  final String id;
  final String friends;
  final String workouts;
  final String following;
  final bool ispremium;
  final List<List<Map<String,int>>> dailytrack;
  final Map todaytrack;
  final String profile_url;
  final Map health_data ;
  final Map<String,int> workstrack;
  final Map<String,List> fullworkout;

  User(
      {required this.name,
      required this.id,
      required this.friends,
      required this.workouts,
      required this.following,
      required this.ispremium,
      required this.dailytrack,
      required this.todaytrack,
      required this.profile_url,
      required this.health_data,
      required this.workstrack,
      required this.fullworkout});

   Map<String ,dynamic> toJSon(){
    return {
      "name": name,
      "id": id,
      "friends": friends,
      "workouts": workouts,
      "following": following,
      "ispremium": ispremium,
      "dailytrack": dailytrack,
      "todaytrack": todaytrack,
      "profile_url": profile_url,
      "health_data": health_data,
      "workstrack": workstrack,
      "fullworkout": fullworkout,
    };
  }

  static User FromJSon(Map map){
    return User(
      name: map["name"],
      id: map["id"],
      friends: map["friends"],
      workouts: map["workouts"],
      following: map["following"],
      ispremium: map["ispremium"],
      dailytrack: map["dailytrack"],
      todaytrack: map["todaytrack"],
      profile_url: map["profile_url"],
      health_data: map["health_data"],
      workstrack: map["workstrack"],
      fullworkout: map["fullworkout"],
    );
  }


}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/models/user_model.dart';

part 'leaderboard_provider.g.dart';

@riverpod
class Leaderboard extends _$Leaderboard {
  @override
  FutureOr<List<UserProfile>> build(String type) async {
    // type: 'daily', 'weekly', 'all-time'
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .orderBy('xp', descending: true)
        .limit(20)
        .get();

    return snapshot.docs.map((doc) => UserProfile.fromJson(doc.data())).toList();
  }
}

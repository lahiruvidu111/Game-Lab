import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GameLab2FirebaseUser {
  GameLab2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GameLab2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GameLab2FirebaseUser> gameLab2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GameLab2FirebaseUser>(
            (user) => currentUser = GameLab2FirebaseUser(user));

import 'package:equatable/equatable.dart';
import 'package:notes/entities/entities.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String id;
  final String email;

  const User({
    @required this.id,
    @required this.email,
  });

  @override
  List<Object> get props => [id, email]; // to compare

  @override
  String toString() => '''User {
    id: $id,
    email: $email
  }''';

  UserEntity toEntity() {
    return UserEntity(id: id, email: email);
  }

  factory User.fromEntity(UserEntity entity) {
    return User(id: entity.id, email: entity.email);
  }
}
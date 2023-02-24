// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'people_loved_bloc.dart';

abstract class PeopleLovedState extends Equatable {
  const PeopleLovedState();

  @override
  List<Object> get props => [];
}

class PeopleLovedInitial extends PeopleLovedState {}

class PeopleLovedLoading extends PeopleLovedState {}

class PeopleLovedLoaded extends PeopleLovedState {
  final List<User> userMatch;
  const PeopleLovedLoaded({
    required this.userMatch,
  });
}

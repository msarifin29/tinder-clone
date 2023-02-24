// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'people_loved_bloc.dart';

abstract class PeopleLovedEvent extends Equatable {
  const PeopleLovedEvent();

  @override
  List<Object> get props => [];
}

class OnPeopleLovedEventCalled extends PeopleLovedEvent {}

class AddPeopleLoved extends PeopleLovedEvent {
  final User user;
  const AddPeopleLoved({
    required this.user,
  });
}

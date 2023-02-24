// ignore_for_file: must_be_immutable

part of 'explore_people_bloc.dart';

abstract class ExplorePeopleState extends Equatable {
  const ExplorePeopleState();

  @override
  List<Object> get props => [];
}

class ExplorePeopleInitial extends ExplorePeopleState {}

class ExplorePeopleLoading extends ExplorePeopleState {}

class ExplorePeopleSucces extends ExplorePeopleState {
  ExplorePeopleSucces(this.result);
  List<User> result;

  @override
  List<Object> get props => [result];
}

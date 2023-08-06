part of 'internet_connection_bloc.dart';

abstract class InternetConnectionEvent extends Equatable {
  const InternetConnectionEvent();
  @override
  List<Object> get props => [];
}

class OnInitInternetConnectionEvent extends InternetConnectionEvent {
  const OnInitInternetConnectionEvent({required this.isActive});
  final bool isActive;
}

class OnActivateInternetConnectionEvent extends InternetConnectionEvent {}

class OnDeactivateInternetConnectionEvent extends InternetConnectionEvent {}

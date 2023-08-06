part of 'internet_connection_bloc.dart';

class InternetConnectionState extends Equatable {
  const InternetConnectionState({
    this.isActive = false,
    this.isInitialized = false,
  });
  final bool isActive;
  final bool isInitialized;

  InternetConnectionState copyWith({
    bool? isActive,
    bool? isInitialized,
    bool? syncUp,
  }) {
    return InternetConnectionState(
      isActive: isActive ?? this.isActive,
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }

  @override
  List<Object> get props => [isActive, isInitialized];
}

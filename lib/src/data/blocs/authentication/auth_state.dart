part of 'auth_bloc.dart';

enum AuthUIState {
  login,
  register,
}

class AuthState extends Equatable {
  const AuthState({
    this.isLoading = false,
    this.isAuthorized = true,
    this.displayUIState = AuthUIState.login,
  });

  final bool isLoading;
  final bool isAuthorized;
  final AuthUIState displayUIState;

  AuthState copyWith({
    bool? isLoading,
    bool? isAuthorized,
    AuthUIState? displayUIState,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isAuthorized: isAuthorized ?? this.isAuthorized,
      displayUIState: displayUIState ?? this.displayUIState,
    );
  }

  @override
  List<Object> get props => [isLoading, isAuthorized, displayUIState];
}

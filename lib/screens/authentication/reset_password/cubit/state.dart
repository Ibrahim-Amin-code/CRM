abstract class ResetStates{}

class ResetInitialState extends ResetStates{}

class ResetLoadingState extends ResetStates{}

class ResetSuccessState extends ResetStates{}

class ResetErrorState extends ResetStates{
  final String error;
  ResetErrorState(this.error);
}
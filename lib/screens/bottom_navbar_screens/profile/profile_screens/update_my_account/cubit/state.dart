abstract class UpdateAccountStates{}

class UpdateAccountInitialState extends UpdateAccountStates{}

class UpdateAccountLoadingState extends UpdateAccountStates{}

class UpdateAccountSuccessState extends UpdateAccountStates{}

class UpdateAccountErrorState extends UpdateAccountStates{
  final String error;
  UpdateAccountErrorState(this.error);
}

class GetMyAccountLoadingState extends UpdateAccountStates{}

class GetMyAccountSuccessState extends UpdateAccountStates{}

class GetMyAccountErrorState extends UpdateAccountStates{
  final String error;
  GetMyAccountErrorState(this.error);
}

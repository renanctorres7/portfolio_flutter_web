import 'package:equatable/equatable.dart';

abstract class FailureShow extends Equatable {}

class ServerFailure extends FailureShow {
  @override
  List<Object?> get props => [];
}

// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `StoreUs Test`
  String get app_name {
    return Intl.message(
      'StoreUs Test',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `No Item Found`
  String get no_item_found {
    return Intl.message(
      'No Item Found',
      name: 'no_item_found',
      desc: '',
      args: [],
    );
  }

  /// `Continue with request`
  String get continue_100_message {
    return Intl.message(
      'Continue with request',
      name: 'continue_100_message',
      desc: '',
      args: [],
    );
  }

  /// `Switching protocols`
  String get switching_protocols_101_message {
    return Intl.message(
      'Switching protocols',
      name: 'switching_protocols_101_message',
      desc: '',
      args: [],
    );
  }

  /// `Processing request`
  String get processing_102_message {
    return Intl.message(
      'Processing request',
      name: 'processing_102_message',
      desc: '',
      args: [],
    );
  }

  /// `Request successful, document reset`
  String get reset_content_205_message {
    return Intl.message(
      'Request successful, document reset',
      name: 'reset_content_205_message',
      desc: '',
      args: [],
    );
  }

  /// `Partial content provided`
  String get partial_content_206_message {
    return Intl.message(
      'Partial content provided',
      name: 'partial_content_206_message',
      desc: '',
      args: [],
    );
  }

  /// `Multiple choices available`
  String get multiple_choices_300_message {
    return Intl.message(
      'Multiple choices available',
      name: 'multiple_choices_300_message',
      desc: '',
      args: [],
    );
  }

  /// `Resource permanently moved`
  String get moved_permanently_301_message {
    return Intl.message(
      'Resource permanently moved',
      name: 'moved_permanently_301_message',
      desc: '',
      args: [],
    );
  }

  /// `Resource temporarily moved`
  String get found_302_message {
    return Intl.message(
      'Resource temporarily moved',
      name: 'found_302_message',
      desc: '',
      args: [],
    );
  }

  /// `Response found under different URI`
  String get see_other_303_message {
    return Intl.message(
      'Response found under different URI',
      name: 'see_other_303_message',
      desc: '',
      args: [],
    );
  }

  /// `The resource has not been modified since the last request`
  String get not_modified_304_message {
    return Intl.message(
      'The resource has not been modified since the last request',
      name: 'not_modified_304_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource must be accessed through the proxy specified in the Location header`
  String get use_proxy_305_message {
    return Intl.message(
      'The requested resource must be accessed through the proxy specified in the Location header',
      name: 'use_proxy_305_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource is temporarily available at a different URI`
  String get temporary_redirect_307_message {
    return Intl.message(
      'The requested resource is temporarily available at a different URI',
      name: 'temporary_redirect_307_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource has been permanently moved to a different URI`
  String get permanent_redirect_308_message {
    return Intl.message(
      'The requested resource has been permanently moved to a different URI',
      name: 'permanent_redirect_308_message',
      desc: '',
      args: [],
    );
  }

  /// `The request requires authentication or the user is not authorized to access the resource`
  String get unauthorized_401_message {
    return Intl.message(
      'The request requires authentication or the user is not authorized to access the resource',
      name: 'unauthorized_401_message',
      desc: '',
      args: [],
    );
  }

  /// `Payment is required to complete this action. Please make sure your payment information is up to date and try again`
  String get payment_required_402_message {
    return Intl.message(
      'Payment is required to complete this action. Please make sure your payment information is up to date and try again',
      name: 'payment_required_402_message',
      desc: '',
      args: [],
    );
  }

  /// `The server refuses to authorize the request`
  String get forbidden_403_message {
    return Intl.message(
      'The server refuses to authorize the request',
      name: 'forbidden_403_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource could not be found on the server`
  String get not_found_404_message {
    return Intl.message(
      'The requested resource could not be found on the server',
      name: 'not_found_404_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested method is not allowed for the specified resource`
  String get method_not_allowed_405_message {
    return Intl.message(
      'The requested method is not allowed for the specified resource',
      name: 'method_not_allowed_405_message',
      desc: '',
      args: [],
    );
  }

  /// `The server cannot produce a response matching the list of acceptable values defined in the request's headers`
  String get not_acceptable_406_message {
    return Intl.message(
      'The server cannot produce a response matching the list of acceptable values defined in the request\'s headers',
      name: 'not_acceptable_406_message',
      desc: '',
      args: [],
    );
  }

  /// `The client must first authenticate itself with the proxy`
  String get proxy_authentication_required_407_message {
    return Intl.message(
      'The client must first authenticate itself with the proxy',
      name: 'proxy_authentication_required_407_message',
      desc: '',
      args: [],
    );
  }

  /// `The server timed out waiting for the request`
  String get request_timeout_408_message {
    return Intl.message(
      'The server timed out waiting for the request',
      name: 'request_timeout_408_message',
      desc: '',
      args: [],
    );
  }

  /// `The request could not be completed due to a conflict with the current state of the resource`
  String get conflict_409_message {
    return Intl.message(
      'The request could not be completed due to a conflict with the current state of the resource',
      name: 'conflict_409_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource is no longer available and has been permanently removed`
  String get gone_410_message {
    return Intl.message(
      'The requested resource is no longer available and has been permanently removed',
      name: 'gone_410_message',
      desc: '',
      args: [],
    );
  }

  /// `The request did not specify the length of its content, which is required by the requested resource`
  String get length_required_411_message {
    return Intl.message(
      'The request did not specify the length of its content, which is required by the requested resource',
      name: 'length_required_411_message',
      desc: '',
      args: [],
    );
  }

  /// `The server does not meet one of the preconditions that the requester put on the request`
  String get precondition_failed_412_message {
    return Intl.message(
      'The server does not meet one of the preconditions that the requester put on the request',
      name: 'precondition_failed_412_message',
      desc: '',
      args: [],
    );
  }

  /// `The request is larger than the server is willing or able to process`
  String get requestEntity_tooLarge_413_message {
    return Intl.message(
      'The request is larger than the server is willing or able to process',
      name: 'requestEntity_tooLarge_413_message',
      desc: '',
      args: [],
    );
  }

  /// `The URI provided in the request is too long for the server to process`
  String get requestUri_tooLong_414_message {
    return Intl.message(
      'The URI provided in the request is too long for the server to process',
      name: 'requestUri_tooLong_414_message',
      desc: '',
      args: [],
    );
  }

  /// `The server does not support the media type transmitted in the request`
  String get unsupported_media_type_415_message {
    return Intl.message(
      'The server does not support the media type transmitted in the request',
      name: 'unsupported_media_type_415_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested range cannot be provided by the server`
  String get requested_range_not_satisfiable_416_message {
    return Intl.message(
      'The requested range cannot be provided by the server',
      name: 'requested_range_not_satisfiable_416_message',
      desc: '',
      args: [],
    );
  }

  /// `The server cannot meet the requirements of the Expect header field`
  String get expectation_failed_417_message {
    return Intl.message(
      'The server cannot meet the requirements of the Expect header field',
      name: 'expectation_failed_417_message',
      desc: '',
      args: [],
    );
  }

  /// `The server was unable to resolve the provided hostname`
  String get misdirected_request_421_message {
    return Intl.message(
      'The server was unable to resolve the provided hostname',
      name: 'misdirected_request_421_message',
      desc: '',
      args: [],
    );
  }

  /// `The request was well-formed but was unable to be followed due to semantic errors`
  String get unprocessable_entity_422_message {
    return Intl.message(
      'The request was well-formed but was unable to be followed due to semantic errors',
      name: 'unprocessable_entity_422_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource is locked and may not be modified`
  String get locked_423_message {
    return Intl.message(
      'The requested resource is locked and may not be modified',
      name: 'locked_423_message',
      desc: '',
      args: [],
    );
  }

  /// `The server encountered a failure while attempting to fulfill the request`
  String get failed_dependency_424_message {
    return Intl.message(
      'The server encountered a failure while attempting to fulfill the request',
      name: 'failed_dependency_424_message',
      desc: '',
      args: [],
    );
  }

  /// `The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field`
  String get upgrade_required_426_message {
    return Intl.message(
      'The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field',
      name: 'upgrade_required_426_message',
      desc: '',
      args: [],
    );
  }

  /// `The server requires the request to be conditional`
  String get precondition_required_428_message {
    return Intl.message(
      'The server requires the request to be conditional',
      name: 'precondition_required_428_message',
      desc: '',
      args: [],
    );
  }

  /// `The user has sent too many requests in a given amount of time`
  String get too_many_requests_429_message {
    return Intl.message(
      'The user has sent too many requests in a given amount of time',
      name: 'too_many_requests_429_message',
      desc: '',
      args: [],
    );
  }

  /// `The server is unwilling to process the request because its header fields are too large`
  String get request_header_fields_too_large_431_message {
    return Intl.message(
      'The server is unwilling to process the request because its header fields are too large',
      name: 'request_header_fields_too_large_431_message',
      desc: '',
      args: [],
    );
  }

  /// `The server has closed the connection without sending any response`
  String get connection_closed_without_response_444_message {
    return Intl.message(
      'The server has closed the connection without sending any response',
      name: 'connection_closed_without_response_444_message',
      desc: '',
      args: [],
    );
  }

  /// `The server is denying access to the resource as a consequence of a legal demand`
  String get unavailable_for_legal_reasons_451_message {
    return Intl.message(
      'The server is denying access to the resource as a consequence of a legal demand',
      name: 'unavailable_for_legal_reasons_451_message',
      desc: '',
      args: [],
    );
  }

  /// `he client has closed the request before the server could send a response`
  String get client_closed_request_499_message {
    return Intl.message(
      'he client has closed the request before the server could send a response',
      name: 'client_closed_request_499_message',
      desc: '',
      args: [],
    );
  }

  /// `The server encountered an error while processing the request`
  String get internal_server_error_500_message {
    return Intl.message(
      'The server encountered an error while processing the request',
      name: 'internal_server_error_500_message',
      desc: '',
      args: [],
    );
  }

  /// `The server does not support the functionality required to fulfill the request`
  String get not_implemented_error_501_message {
    return Intl.message(
      'The server does not support the functionality required to fulfill the request',
      name: 'not_implemented_error_501_message',
      desc: '',
      args: [],
    );
  }

  /// `The server acting as a gateway or proxy received an invalid response from the upstream server`
  String get bad_gateway_502_message {
    return Intl.message(
      'The server acting as a gateway or proxy received an invalid response from the upstream server',
      name: 'bad_gateway_502_message',
      desc: '',
      args: [],
    );
  }

  /// `The server is currently unavailable`
  String get service_unavailable_503_message {
    return Intl.message(
      'The server is currently unavailable',
      name: 'service_unavailable_503_message',
      desc: '',
      args: [],
    );
  }

  /// `The server acting as a gateway or proxy timed out waiting for a response from the upstream server`
  String get gateway_timeout_504_message {
    return Intl.message(
      'The server acting as a gateway or proxy timed out waiting for a response from the upstream server',
      name: 'gateway_timeout_504_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested HTTP version is not supported by the server`
  String get http_version_not_supported_505_message {
    return Intl.message(
      'The requested HTTP version is not supported by the server',
      name: 'http_version_not_supported_505_message',
      desc: '',
      args: [],
    );
  }

  /// `The server has detected an infinite loop while processing the request`
  String get variant_also_negotiates_506_message {
    return Intl.message(
      'The server has detected an infinite loop while processing the request',
      name: 'variant_also_negotiates_506_message',
      desc: '',
      args: [],
    );
  }

  /// `The server is unable to store the representation needed to complete the request`
  String get insufficient_storage_507_message {
    return Intl.message(
      'The server is unable to store the representation needed to complete the request',
      name: 'insufficient_storage_507_message',
      desc: '',
      args: [],
    );
  }

  /// `The server has detected a loop in the request processing chain, which could indicate a misconfiguration`
  String get loop_detected_508_message {
    return Intl.message(
      'The server has detected a loop in the request processing chain, which could indicate a misconfiguration',
      name: 'loop_detected_508_message',
      desc: '',
      args: [],
    );
  }

  /// `Further extensions to the request are required for the server to fulfill it`
  String get not_extended_510_message {
    return Intl.message(
      'Further extensions to the request are required for the server to fulfill it',
      name: 'not_extended_510_message',
      desc: '',
      args: [],
    );
  }

  /// `The client needs to authenticate to gain network access`
  String get network_authentication_required_511_message {
    return Intl.message(
      'The client needs to authenticate to gain network access',
      name: 'network_authentication_required_511_message',
      desc: '',
      args: [],
    );
  }

  /// `The request has timed out while connecting to the server. Please check your network connection and try again`
  String get network_connect_timeout_error_599_message {
    return Intl.message(
      'The request has timed out while connecting to the server. Please check your network connection and try again',
      name: 'network_connect_timeout_error_599_message',
      desc: '',
      args: [],
    );
  }

  /// `Connection timed out. Please check your internet connection and try again`
  String get connect_timeout_message {
    return Intl.message(
      'Connection timed out. Please check your internet connection and try again',
      name: 'connect_timeout_message',
      desc: '',
      args: [],
    );
  }

  /// ` Sending request timed out. Please try again`
  String get send_timeout_message {
    return Intl.message(
      ' Sending request timed out. Please try again',
      name: 'send_timeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Receiving response timed out. Please try again`
  String get receive_timeout_message {
    return Intl.message(
      'Receiving response timed out. Please try again',
      name: 'receive_timeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Unable to establish a connection. Please check your internet connection and try again`
  String get connection_error_message {
    return Intl.message(
      'Unable to establish a connection. Please check your internet connection and try again',
      name: 'connection_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Request has been canceled`
  String get cancel_error_message {
    return Intl.message(
      'Request has been canceled',
      name: 'cancel_error_message',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error has occurred. Please try again later`
  String get unknown_error_message {
    return Intl.message(
      'An unknown error has occurred. Please try again later',
      name: 'unknown_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Certificate verification failed. Please make sure you're connected to a secure network and try again`
  String get bad_certificate_message {
    return Intl.message(
      'Certificate verification failed. Please make sure you\'re connected to a secure network and try again',
      name: 'bad_certificate_message',
      desc: '',
      args: [],
    );
  }

  /// `Check your internet connection`
  String get check_connection_message {
    return Intl.message(
      'Check your internet connection',
      name: 'check_connection_message',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while processing the data received from the server, as expected in the application`
  String
      get error_occurred_while_processing_the_data_received_from_the_server_message {
    return Intl.message(
      'An error occurred while processing the data received from the server, as expected in the application',
      name:
          'error_occurred_while_processing_the_data_received_from_the_server_message',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

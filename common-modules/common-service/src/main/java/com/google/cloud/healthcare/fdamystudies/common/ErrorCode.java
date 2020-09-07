/*
 * Copyright 2020 Google LLC
 *
 * Use of this source code is governed by an MIT-style
 * license that can be found in the LICENSE file or at
 * https://opensource.org/licenses/MIT.
 */

package com.google.cloud.healthcare.fdamystudies.common;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.io.IOException;
import java.time.Instant;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpStatus;

@Getter
@ToString
@RequiredArgsConstructor
@JsonSerialize(using = ErrorCode.ErrorCodeSerializer.class)
public enum ErrorCode {
  //
  BAD_REQUEST(
      400,
      "EC-0036",
      Constants.BAD_REQUEST,
      "Malformed request syntax or invalid request message framing."),

  //
  UNAUTHORIZED(401, "EC-0037", "Unauthorized", "Unauthorized or Invalid token"),

  //
  ACCOUNT_LOCKED(
      400,
      "EC-0002",
      Constants.BAD_REQUEST,
      "Due to consecutive failed sign-in attempts with incorrect password, your account has been locked for a period of 15 minutes. Please check your registered email inbox for assistance to reset your password in this period or wait until the lock period is over to sign in again."),

  TEMP_PASSWORD_EXPIRED(
      401,
      "EC-110",
      Constants.BAD_REQUEST,
      "Your temporary password is expired. Please use the Forgot Password link to reset your password."),

  //
  PASSWORD_EXPIRED(
      401,
      "EC_0012",
      Constants.BAD_REQUEST,
      "Your password is expired. Please use the forgot password link to reset your password."),

  //
  USER_NOT_FOUND(404, "EC-0043", Constants.BAD_REQUEST, "User not found"),

  //
  ACCOUNT_DEACTIVATED(403, "EC-0005", Constants.BAD_REQUEST, "Your account has been deactivated"),

  PENDING_CONFIRMATION(
      403,
      "EC-117",
      Constants.BAD_REQUEST,
      "Your account has not been activated yet. Account need to be activated by an activation link that arrives via email to the address you provided."),

  ACCOUNT_NOT_VERIFIED(
      403,
      "EC-117",
      Constants.BAD_REQUEST,
      "Your account is not verified. Please verify your account by clicking on the link which has been sent to your registered email. if not received, would you like to resend verification link?"),

  //
  CURRENT_PASSWORD_INVALID(
      400, "EC-0021", Constants.BAD_REQUEST, "Current password entered is invalid"),

  INVALID_LOGIN_CREDENTIALS(400, "EC-120", Constants.BAD_REQUEST, "Invalid email or password."),

  // doubt EC-0006
  ENFORCE_PASSWORD_HISTORY(
      400,
      "EC-105",
      Constants.BAD_REQUEST,
      "Your new password cannot repeat any of your previous 10 passwords."),

  //
  INVALID_UPDATE_USER_REQUEST(
      400, "EC-0038", Constants.BAD_REQUEST, "Email ID or status to be provided"),

  //
  EMAIL_EXISTS(
      409,
      "EC-0014",
      Constants.BAD_REQUEST,
      "This email has already been used. Please try with a different email address."),

  USER_ALREADY_EXISTS(
      409,
      "EC-101",
      HttpStatus.CONFLICT.toString(),
      "There is already a user with this email address. Please log in."),

  //
  EMAIL_SEND_FAILED_EXCEPTION(
      500,
      "EC_0015",
      "Email Server Error",
      "Your verification email was unable to send because the connection to mail server was interrupted"),

  APPLICATION_ERROR(
      500,
      "EC-0016",
      "Internal Server Error",
      "Sorry, an error has occurred and your request could not be processed. Please try again later."),

  SITE_PERMISSION_ACCESS_DENIED(
      403, "EC-0017", HttpStatus.FORBIDDEN.toString(), "You do not have permission to add site"),

  SITE_EXISTS(
      400, "EC-106", Constants.BAD_REQUEST, "Site exists with the given locationId and studyId"),

  LOCATION_ACCESS_DENIED(
      403,
      "EC-882",
      HttpStatus.FORBIDDEN.toString(),
      "You do not have permission to view or add or update locations"),

  INVALID_ARGUMENTS(400, "EC_813", Constants.BAD_REQUEST, "Provided argument value is invalid"),

  USER_NOT_EXISTS(401, "EC_861", "Unauthorized", "User does not exist"),

  MISSING_REQUIRED_ARGUMENTS(400, "EC_812", Constants.BAD_REQUEST, "Missing required argument"),

  CUSTOM_ID_EXISTS(400, "EC_883", Constants.BAD_REQUEST, "customId already exists"),

  //
  USER_NOT_ACTIVE(400, "EC_0024", Constants.BAD_REQUEST, "User is not active"),

  //
  USER_NOT_INVITED(
      400,
      "EC-0046",
      Constants.BAD_REQUEST,
      "Provided email ID does not exists or user is not invited "),

  //
  APP_NOT_FOUND(404, "EC-0025", HttpStatus.NOT_FOUND.toString(), "App not found"),

  //
  STUDY_NOT_FOUND(404, "EC-0026", HttpStatus.NOT_FOUND.toString(), "Study not found"),

  //
  LOCATION_NOT_FOUND(404, "EC_0027", HttpStatus.NOT_FOUND.toString(), "Location not found"),

  //
  DEFAULT_SITE_MODIFY_DENIED(
      400, "EC_0048", Constants.BAD_REQUEST, "Default site can't be modified"),

  //
  ALREADY_DECOMMISSIONED(
      400,
      "EC_0049",
      Constants.BAD_REQUEST,
      "Can't decommision an already decommissioned location"),

  //
  CANNOT_DECOMMISSIONED(
      400,
      "EC_0028",
      Constants.BAD_REQUEST,
      "This location is being used as an active site in one or more studies and cannot be decomissioned"),

  CANNOT_REACTIVATE(
      400, "EC_0047", Constants.BAD_REQUEST, "Can't activate an already actived location"),

  //
  LOCATION_UPDATE_DENIED(
      403, "EC-0050", "Forbidden", "You do not have permission to update the location"),

  STUDY_PERMISSION_ACCESS_DENIED(
      403, "EC-105", HttpStatus.FORBIDDEN.toString(), "Does not have study permission"),

  MANAGE_SITE_PERMISSION_ACCESS_DENIED(
      403, "EC-105", HttpStatus.FORBIDDEN.toString(), "You do not have permission to manage site"),

  //
  OPEN_STUDY(
      403, "EC-0051", HttpStatus.FORBIDDEN.toString(), "Participant cannot be added to open study"),

  ENROLLED_PARTICIPANT(400, "EC-862", Constants.BAD_REQUEST, "Participant already enrolled"),

  SITE_NOT_EXIST_OR_INACTIVE(
      400, "EC-869", Constants.BAD_REQUEST, "Site doesn't exists or is inactive"),

  // EC_0009
  SITE_NOT_FOUND(404, "EC-94", HttpStatus.NOT_FOUND.toString(), "Site not found"),

  INVALID_ONBOARDING_STATUS(
      400, "EC-816", HttpStatus.BAD_REQUEST.toString(), "allowed values: N, D, I and E"),

  USER_ADMIN_ACCESS_DENIED(403, "EC-882", "Forbidden", "You do not have permission of Super Admin"),

  CANNOT_DECOMMISSION_SITE_FOR_OPEN_STUDY(
      400, "EC-95", Constants.BAD_REQUEST, " Cannot decomission site as study type is open"),

  CANNOT_DECOMMISSION_SITE_FOR_ENROLLED_ACTIVE_STATUS(
      400,
      "EC_885",
      Constants.BAD_REQUEST,
      "This Site is associated with active and enrolled participants"
          + " and cannot be decomissioned"),

  NOT_SUPER_ADMIN_ACCESS(
      403,
      "EC_870",
      HttpStatus.FORBIDDEN.toString(),
      "You are not authorized to access this information"),

  PERMISSION_MISSING(
      400, "EC_978", Constants.BAD_REQUEST, "Admin should have atleast one permission"),

  //
  INVALID_SECURITY_CODE(404, "EC_0053", "Not Found", "Invalid security code"),

  //
  SECURITY_CODE_EXPIRED(401, "EC_0054", "Unauthorized", "Security code has expired"),

  //
  PARTICIPANT_REGISTRY_SITE_NOT_FOUND(
      400, "EC-0055", Constants.BAD_REQUEST, "Error in getting participants details"),

  DOCUMENT_NOT_IN_PRESCRIBED_FORMAT(
      400, "EC_0056", Constants.BAD_REQUEST, "Import document not in prescribed format"),

  FAILED_TO_IMPORT_PARTICIPANTS(
      500,
      "EC_914",
      HttpStatus.INTERNAL_SERVER_ERROR.toString(),
      "Unable to import the participants"),

  //
  CANNOT_UPDATE_ENROLLMENT_TARGET_FOR_CLOSE_STUDY(
      400, "EC-0058", Constants.BAD_REQUEST, "Enrollment target update failed for closed study"),

  //
  CANNOT_UPDATE_ENROLLMENT_TARGET_FOR_DECOMMISSIONED_SITE(
      400,
      "EC-0059",
      Constants.BAD_REQUEST,
      "Enrollment target failed to be updated decommissionned site"),

  CONSENT_DATA_NOT_AVAILABLE(
      400, "EC_0060", Constants.BAD_REQUEST, "Error in getting consent data"),

  //
  INVALID_APPS_FIELDS_VALUES(
      400, "EC-869", Constants.BAD_REQUEST, "allowed values for 'fields' are studies, sites"),

  //
  ADMIN_NOT_FOUND(404, "EC-0062", Constants.BAD_REQUEST, "Admin not found"),

  INVALID_USER_STATUS(400, "EC-114", Constants.BAD_REQUEST, "Invalid user status"),

  CANNOT_ADD_SITE_FOR_OPEN_STUDY(
      403, "EC-989", HttpStatus.FORBIDDEN.toString(), "Cannot add site to open study"),

  USER_ID_REQUIRED(400, "EC-400", Constants.BAD_REQUEST, "userId is required");

  private final int status;
  private final String code;
  private final String errorType;
  private final String description;

  public static ErrorCode fromCodeAndDescription(String code, String description) {
    for (ErrorCode e : ErrorCode.values()) {
      if (StringUtils.equalsIgnoreCase(e.code, code)
          && StringUtils.equalsIgnoreCase(e.description, description)) {
        return e;
      }
    }
    return null; // not found
  }

  private static class Constants {

    private static final String BAD_REQUEST = "Bad Request";
  }

  static class ErrorCodeSerializer extends StdSerializer<ErrorCode> {

    private static final long serialVersionUID = 1L;

    public ErrorCodeSerializer() {
      super(ErrorCode.class);
    }

    @Override
    public void serialize(
        ErrorCode error, JsonGenerator jsonGenerator, SerializerProvider serializerProvider)
        throws IOException {
      jsonGenerator.writeStartObject();
      jsonGenerator.writeNumberField("status", error.getStatus());
      jsonGenerator.writeStringField("error_type", error.getErrorType());
      jsonGenerator.writeStringField("error_code", error.getCode());
      jsonGenerator.writeStringField("error_description", error.getDescription());
      jsonGenerator.writeNumberField("timestamp", Instant.now().toEpochMilli());
      jsonGenerator.writeEndObject();
    }
  }
}

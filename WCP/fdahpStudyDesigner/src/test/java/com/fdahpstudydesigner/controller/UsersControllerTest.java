package com.fdahpstudydesigner.controller;

import com.fdahpstudydesigner.common.BaseMockIT;

public class UsersControllerTest extends BaseMockIT {

  /*@Test
  public void shouldViewUserDetails() throws Exception {
    HttpHeaders headers = getCommonHeaders();

    mockMvc
        .perform(
            post(PathMappingUri.VIEW_USER_DETAILS.getPath())
                .param("userId", "1")
                .param("checkViewRefreshFlag", "Google_009")
                .headers(headers)
                .sessionAttrs(getSessionAttributes()))
        .andDo(print())
        .andExpect(status().isOk())
        .andExpect(view().name("addOrEditUserPage"));

    verifyAuditEventCall(ACCOUNT_DETAILS_VIEWED);

    mockMvc
        .perform(
            post(PathMappingUri.VIEW_USER_DETAILS.getPath())
                .param("userId", "1")
                .param("checkViewRefreshFlag", "Google_009")
                .headers(headers)
                .sessionAttrs(getSessionAttributes()))
        .andDo(print())
        .andExpect(status().isOk())
        .andExpect(view().name("addOrEditUserPage"));

    verifyAuditEventCall(USER_RECORD_VIEWED);
  }

  @Test
  public void shouldResendActivateDetailsLink() throws Exception {
    HttpHeaders headers = getCommonHeaders();

    mockMvc
        .perform(
            post(PathMappingUri.RESEND_ACTIVATE_DETAILS_LINK.getPath())
                .param("userId", "1")
                .headers(headers)
                .sessionAttrs(getSessionAttributes()))
        .andDo(print())
        .andExpect(status().isFound())
        .andExpect(view().name("redirect:/adminUsersView/getUserList.do"));

    verifyAuditEventCall(NEW_USER_INVITATION_RESENT);
  }

  @Test
  public void shouldEnforcePasswordChange() throws Exception {
    HttpHeaders headers = getCommonHeaders();

    mockMvc
        .perform(
            post(PathMappingUri.ENFORCE_PASSWORD_CHANGE.getPath())
                .param("changePassworduserId", "1")
                .param("emailId", "superadmin@gmail.com")
                .headers(headers)
                .sessionAttrs(getSessionAttributes()))
        .andDo(print())
        .andExpect(status().isFound())
        .andExpect(view().name("redirect:/adminUsersView/getUserList.do"));

    verifyAuditEventCall(NEW_USER_INVITATION_RESENT);
  }

  @Test
  public void shouldEnforcePasswordChangeForAllUsers() throws Exception {
    HttpHeaders headers = getCommonHeaders();

    mockMvc
        .perform(
            post(PathMappingUri.ENFORCE_PASSWORD_CHANGE.getPath())
                .param("changePassworduserId", "")
                .param("emailId", "")
                .headers(headers)
                .sessionAttrs(getSessionAttributes()))
        .andDo(print())
        .andExpect(status().isFound())
        .andExpect(view().name("redirect:/adminUsersView/getUserList.do"));

    verifyAuditEventCall(PASSWORD_CHANGE_ENFORCED_FOR_ALL_USERS);
  }

  @Test
  public void shouldAddUserDetails() throws Exception {
    HttpHeaders headers = getCommonHeaders();

    mockMvc
        .perform(
            post(PathMappingUri.RESEND_ACTIVATE_DETAILS_LINK.getPath())
                .param("userId", "1")
                .param("manageUsers", "1")
                .param("manageNotifications", "1")
                .param("manageStudies", "1")
                .param("addingNewStudy", "1")
                .param("selectedStudies", "1")
                .param("permissionValues", "1")
                .param("ownUser", "1")
                .headers(headers)
                .sessionAttrs(getSessionAttributes()))
        .andDo(print())
        .andExpect(status().isFound())
        .andExpect(view().name("redirect:/adminUsersView/getUserList.do"));

    verifyAuditEventCall(NEW_USER_CREATED);
    verifyAuditEventCall(NEW_USER_INVITATION_EMAIL_SENT);
    verifyAuditEventCall(NEW_USER_CREATED);
  }

  @Test
  public void shouldUpdateUserDetails() throws Exception {
    HttpHeaders headers = getCommonHeaders();

    mockMvc
        .perform(
            post(PathMappingUri.RESEND_ACTIVATE_DETAILS_LINK.getPath())
                .param("userId", "1")
                .param("manageUsers", "1")
                .param("manageNotifications", "1")
                .param("manageStudies", "1")
                .param("addingNewStudy", "1")
                .param("selectedStudies", "1")
                .param("permissionValues", "1")
                .param("ownUser", "1")
                .headers(headers)
                .sessionAttrs(getSessionAttributes()))
        .andDo(print())
        .andExpect(status().isFound())
        .andExpect(view().name("redirect:/adminUsersView/getUserList.do"));

    verifyAuditEventCall(USER_RECORD_UPDATED);
  }

  @Test
  public void shouldFailAddOrUpdateUserDetails() throws Exception {
    HttpHeaders headers = getCommonHeaders();

    mockMvc
        .perform(
            post(PathMappingUri.RESEND_ACTIVATE_DETAILS_LINK.getPath())
                .param("userId", "1")
                .param("manageUsers", "1")
                .param("manageNotifications", "1")
                .param("manageStudies", "1")
                .param("addingNewStudy", "1")
                .param("selectedStudies", "1")
                .param("permissionValues", "1")
                .param("ownUser", "1")
                .headers(headers)
                .sessionAttrs(getSessionAttributes()))
        .andDo(print())
        .andExpect(status().isFound())
        .andExpect(view().name("redirect:/adminUsersView/getUserList.do"));

    verifyAuditEventCall(NEW_USER_CREATION_FAILED);
  }*/
}

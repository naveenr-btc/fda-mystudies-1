INSERT INTO `user_permissions` (`permission_id`, `permissions`) VALUES (8, 'ROLE_CREATE_MANAGE_STUDIES'), (6, 'ROLE_MANAGE_APP_WIDE_NOTIFICATION_EDIT'), (4, 'ROLE_MANAGE_APP_WIDE_NOTIFICATION_VIEW'), (2, 'ROLE_MANAGE_STUDIES'), (5, 'ROLE_MANAGE_USERS_EDIT'), (7, 'ROLE_MANAGE_USERS_VIEW'), (1, 'ROLE_SUPERADMIN');

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `role_id`, `created_by`, `modified_by`, `status`, `accountNonExpired`, `accountNonLocked`, `credentialsNonExpired`, `force_logout`, `security_token`) VALUES ('1', 'abc', 'xyx', 'ttt@gmail.com', '$2a$10$uSKnFqkar9ugqrdD1KElcOcPGEtdpuNMvwlHfRGwX4jovq.sH0e/q', '1', '1', '1', '1', '1', '1', '1', 'N', NULL), ('2', 'firstname2', 'laststname2', 'super@gmail.com', NULL, '8', '1', '1', '1', '1', '1', '1', 'N', 'N8K7zYrc0F'), ('3', 'firstname3', 'laststname3', 'super3@gmail.com', '$2a$10$uSKnFqkar9ugqrdD1KElcOcPGEtdpuNMvwlHfRGwX4jovq.sH0e/q', '8', '1', '1', '1', '1', '1', '1', 'N', 'jkh7zYrc0F');

INSERT INTO `user_permission_mapping` (`user_id`, `permission_id`) VALUES (2, 8);

INSERT INTO questionnaires_steps (step_id, questionnaires_id, instruction_form_id, step_short_title, step_type, sequence_no, destination_step, repeatable, skiappable, active, status) VALUES (1, 11675, 85231, '1time', 'Question', 1, 60873, 'No', 'Yes', 1, 1), (2, 1, 1, '1time', 'Question', 1, 60873, 'No', 'Yes', 1, 1);

INSERT INTO questionnaires (id, study_id, frequency, title, study_lifetime_start, study_lifetime_end, short_title, repeat_questionnaire, created_by, created_date, modified_by, modified_date, branching, active, status, custom_study_id, is_live, version, is_Change, schedule_type) VALUES ('1', 678574, 'One time', 'quesions', '2020-09-02', '2020-09-23', 'onetime', 5, 0, '2020-09-02 13:03:11', 0, '2020-09-02 14:25:43', 1, 1, 1, 'OpenStudy003', 1, 1, 1, 'Regular'), ('2', 58, 'One time', 'quesions', '2020-09-02', '2020-09-23', 'onetime', 5, 0, '2020-09-02 13:03:11', 0, '2020-09-02 14:25:43', 1, 1, 1, 'OpenStudy003', 1, 1, 1, 'Regular'), (3, 678574, 'Two time', 'quesions3', '2020-09-02', '2020-09-23', 'Twotime', 6, 0, '2020-09-02 13:03:11', 0, '2020-09-02 14:25:43', 1, 1, 1, 'OpenStudy003', 1, 2, 1, 'Regular');

INSERT INTO study_version (version_id, activity_version, custom_study_id, study_version, consent_version) VALUES (1, 1, 'OpenStudy003', 1, 1);

INSERT INTO form_mapping (id, form_id, question_id, sequence_no) VALUES (1, 58, 85199, 1);

INSERT INTO `questions` (`id`, `active`, `add_line_chart`, `description`, `modified_by`, `response_type`, `status`, `use_anchor_date`, `use_stastic_data`, `allow_healthkit`, `short_title`) VALUES ('1', '1', 'No', 'hi', '1', '6', '1', '0', 'No', 'No', 'short_title1'), ('85199', '1', 'No', 'hi', '1', '6', '1', '0', 'No', 'No', 'short_title2');

INSERT INTO `resources` (`id`, `study_id`, `title`, `text_or_pdf`, `rich_text`, `pdf_url`, `resource_visibility`, `resource_text`, `action`, `study_protocol`, `created_by`, `modified_by`, `status`, `pdf_name`, `sequence_no`) VALUES ('1', '1374', 'resource', '1', 'a@gmail.com', 'abcd.pdf', '1', 'text2', '1', '0', '1', '1', '1', 'ab.pdf', '1');

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10633, 678574, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `active_task` (`id`, `study_id`, `frequency`, `duration`, `active_task_lifetime_start`, `active_task_lifetime_end`, `day_of_the_week`, `repeat_active_task`, `created_by`, `modified_by`, `display_name`, `instruction`, `short_title`, `created_date`, `modified_date`, `task_title`, `task_type_id`, `action`, `custom_study_id`, `is_live`, `is_Change`, `active`, `anchor_date_id`, `schedule_type`) VALUES (28500, 678574, 'One time', NULL, '2020-11-05', '2020-11-25', NULL, NULL, 59, 59, 'FetalKickCounter', 'FetalKickCounter', 'FetalKickCounter', '2020-11-05 08:04:34', '2020-11-05 08:04:48', NULL, 1, 1, 678590, 1, 0, 1, NULL, 'Regular');

INSERT INTO `active_task_attrtibutes_values` (`active_task_attribute_id`, `active_task_id`, `active_task_master_attr_id`, `attribute_val`, `add_to_line_chart`, `time_range_chart`, `rollback_chat`, `title_chat`, `use_for_statistic`, `identifier_name_stat`, `display_name_stat`, `display_units_stat`, `upload_type_stat`, `formula_applied_stat`, `time_range_stat`) VALUES (7576, 28500, 1, '23:59', 'N', NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `active_task_frequencies` (`id`, `active_task_id`, `frequency_date`, `frequency_time`, `is_launch_study`, `is_study_life_time`) VALUES (28500, 2850, NULL, NULL, 1, 1);

INSERT INTO `active_task_custom_frequencies` (`id`, `frequency_start_date`, `frequency_end_date`, `frequency_time`, `active_task_id`, `is_used`) VALUES (28500, '2020-03-24', '2020-03-30', '22:07:00', 2862, 'N');

INSERT INTO `study_version` (`version_id`, `activity_version`, `custom_study_id`, `study_version`, `consent_version`) VALUES (1979, 1, 67859, 1, 1);

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `retain_participant`, `allow_rejoin`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `allow_rejoin_text`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678574, '678590', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `study_version` (`version_id`, `activity_version`, `custom_study_id`, `study_version`, `consent_version`) VALUES (987, 1, '678590', 1, 1);

INSERT INTO `consent` (`id`, `study_id`, `comprehension_test_minimum_score`, `share_data_permissions`, `title`, `custom_study_id`, `is_live`, `tagline_description`, `short_description`, `long_description`, `learn_more_text`, `consent_doc_type`, `consent_doc_content`, `allow_without_permission`, `e_consent_firstname`, `e_consent_lastname`, `e_consent_agree`, `e_consent_signature`, `e_consent_datetime`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES (341, 678574, 1, 'Yes', 'TestOnly', NULL, 1, 'TestOnly', 'TestOnly', 'TestOnly', '<p>TestOnly</p>', 'Auto', '<span style=&#34;font-size:20px;&#34;><strong>Data gathering</strong></span><br/><span style=&#34;display: block; overflow-wrap: break-word; width: 100%;&#34;><p>&lt;Elaborated Content&nbsp;&gt;</p></span><br/>', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2020-03-24 07:57:45', 59, '2020-03-24 07:59:39', 59);

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `retain_participant`, `allow_rejoin`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `allow_rejoin_text`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678575, '678591', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10634, 678575, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `retain_participant`, `allow_rejoin`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `allow_rejoin_text`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678576, '678592', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `retain_participant`, `allow_rejoin`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `allow_rejoin_text`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678577, '678593', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `retain_participant`, `allow_rejoin`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `allow_rejoin_text`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678578, '678594', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `active_task` (`id`, `study_id`, `frequency`, `duration`, `active_task_lifetime_start`, `active_task_lifetime_end`, `day_of_the_week`, `repeat_active_task`, `created_by`, `modified_by`, `display_name`, `instruction`, `short_title`, `created_date`, `modified_date`, `task_title`, `task_type_id`, `action`, `custom_study_id`, `is_live`, `is_Change`, `active`, `anchor_date_id`, `schedule_type`) VALUES (28502, 678578, 'One time', NULL, '2020-03-24', NULL, NULL, NULL, 59, 59, 'FetalKickCounter', 'FetalKickCounter', 'FetalKickCounter', '2020-03-24 08:04:34', '2020-03-24 08:04:48', NULL, 1, 1, 678594, 1, 0, 1, NULL, 'Regular');

INSERT INTO `study_version` (`version_id`, `activity_version`, `custom_study_id`, `study_version`, `consent_version`) VALUES (988, 1, '678594', 1, 1);

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `retain_participant`, `allow_rejoin`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `allow_rejoin_text`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678579, '678595', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `active_task` (`id`, `study_id`, `frequency`, `duration`, `active_task_lifetime_start`, `active_task_lifetime_end`, `day_of_the_week`, `repeat_active_task`, `created_by`, `modified_by`, `display_name`, `instruction`, `short_title`, `created_date`, `modified_date`, `task_title`, `task_type_id`, `action`, `custom_study_id`, `is_live`, `is_Change`, `active`, `anchor_date_id`, `schedule_type`) VALUES (28501, 678579, 'One time', NULL, '2020-03-24', NULL, NULL, NULL, 59, 59, 'FetalKickCounter', 'FetalKickCounter', 'FetalKickCounter', '2020-03-24 08:04:34', '2020-03-24 08:04:48', NULL, 1, 1, 678595, 1, 0, 1, NULL, 'Regular');

INSERT INTO `study_version` (`version_id`, `activity_version`, `custom_study_id`, `study_version`, `consent_version`) VALUES (989, 1, '678595', 1, 1);

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10635, 678579, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `consent` (`id`, `study_id`, `comprehension_test_minimum_score`, `share_data_permissions`, `title`, `custom_study_id`, `is_live`, `tagline_description`, `short_description`, `long_description`, `learn_more_text`, `consent_doc_type`, `consent_doc_content`, `allow_without_permission`, `e_consent_firstname`, `e_consent_lastname`, `e_consent_agree`, `e_consent_signature`, `e_consent_datetime`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES (342, 678580, 1, 'Yes', 'TestOnly', NULL, 1, 'TestOnly', 'TestOnly', 'TestOnly', '<p>TestOnly</p>', 'Auto', '<span style=&#34;font-size:20px;&#34;><strong>Data gathering</strong></span><br/><span style=&#34;display: block; overflow-wrap: break-word; width: 100%;&#34;><p>&lt;Elaborated Content&nbsp;&gt;</p></span><br/>', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '2020-03-24 07:57:45', 59, '2020-03-24 07:59:39', 59);

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `retain_participant`, `allow_rejoin`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `allow_rejoin_text`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678580, '678599', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10644, 678580, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `studies` (`id`, `custom_study_id`, `name`, `full_name`, `type`, `platform`, `category`, `research_sponsor`, `tentative_duration`, `tentative_duration_weekmonth`, `description`, `enrolling_participants`, `retain_participant`, `allow_rejoin`, `irb_review`, `inbox_email_address`, `created_by`, `created_on`, `modified_by`, `modified_on`, `status`, `sequence_number`, `thumbnail_image`, `media_link`, `allow_rejoin_text`, `study_website`, `study_tagline`, `study_lunched_date`, `study_pre_active_flag`, `has_activity_draft`, `has_consent_draft`, `has_study_draft`, `is_live`, `version`, `has_activitetask_draft`, `has_questionnaire_draft`, `enrollmentdate_as_anchordate`, `app_id`) VALUES (678680, '678999', 'OpenStudy01', 'OpenStudy01', 'GT', NULL, '8', 'CDC', 100, 'Days', '<p>Study for Covid-19</p>', NULL, NULL, NULL, NULL, 'test@gmail.com', 59, '2020-03-24 07:47:00', 59, '2020-03-24 07:47:00', 'Pre-launch', NULL, 'STUDY_OO_03242020074700.jpg', NULL, NULL, 'http://www.google.com', 'Study for Covid-19', NULL, 'N', 0, 0, 1, 1, 1, 0, 0, 'N', 'GCPMS001');

INSERT INTO `study_sequence` (`study_sequence_id`, `study_id`, `actions`, `basic_info`, `check_list`, `comprehension_test`, `consent_edu_info`, `e_consent`, `eligibility`, `miscellaneous_branding`, `miscellaneous_notification`, `miscellaneous_resources`, `over_view`, `setting_admins`, `study_dashboard_chart`, `study_dashboard_stats`, `study_exc_active_task`, `study_exc_questionnaries`) VALUES (10248, 678680, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO `consent_info` (`id`, `study_id`, `consent_item_type`, `content_type`, `brief_summary`, `elaborated`, `html_content`, `url`, `visual_step`, `sequence_no`, `created_by`, `created_on`, `modified_by`, `modified_on`, `display_title`, `status`, `consent_item_title_id`, `active`) VALUES (1143, 678680, 'ResearchKit/ResearchStack', NULL, 'Data gathering', '<p>&lt;Elaborated Content&nbsp;&gt;</p>', NULL, NULL, 'Yes', 1, 59, '2020-03-24 07:57:21', 59, '2020-03-24 07:57:25', 'Data gathering', 1, 3, 1);

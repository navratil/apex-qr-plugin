set define off
set verify off
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end;
/
 
 
--application/set_environment
prompt  APPLICATION 104 - QR Code demo
--
-- Application Export:
--   Application:     104
--   Name:            QR Code demo
--   Date and Time:   20:46 Tuesday January 14, 2014
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         4.2.4.00.08
--   Instance ID:     61805560454720
--
-- Import:
--   Using Application Builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application
 
-- Application Statistics:
--   Pages:                      1
--     Items:                    5
--     Regions:                  3
--     Buttons:                  1
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--     Navigation:
--       Breadcrumbs:            1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                17
--         Region:              18
--         Label:                7
--         List:                14
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               6
--         Report:              11
--       Plug-ins:               1
--     Globalization:
--     Reports:
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,941512753047020));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2012.01.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,104);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,104));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,104));
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,104),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,104),
  p_owner => nvl(wwv_flow_application_install.get_schema,'NX'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'QR Code demo'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'QRDEMO'),
  p_page_view_logging => 'YES',
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt=> 'A68855E628F990951A850732EE5EE266A412303C6DF0188BD90D7C6DAB6E0D93',
  p_max_session_length_sec=> null,
  p_compatibility_mode=> '4.2',
  p_html_escaping_mode=> 'E',
  p_flow_language=> 'en',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_allow_feedback_yn=> 'Y',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,''),
  p_publish_yn=> 'N',
  p_documentation_banner=> '',
  p_authentication=> 'PLUGIN',
  p_authentication_id=> 27233640401693138 + wwv_flow_api.g_id_offset,
  p_logout_url=> '',
  p_application_tab_set=> 1,
  p_logo_image => 'TEXT:QR Code plugin demo',
  p_public_url_prefix => '',
  p_public_user=> 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '',
  p_cust_authentication_page=> '',
  p_flow_version=> 'Copyright (C) 2014  Jan Navratil',
  p_flow_status=> 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_browser_cache=>'N',
  p_browser_frame=>'D',
  p_deep_linking=>'N',
  p_vpd=> '',
  p_vpd_teardown_code=> '',
  p_authorize_public_pages_yn=>'N',
  p_csv_encoding=> 'Y',
  p_auto_time_zone=> 'N',
  p_include_legacy_javascript=> 'N',
  p_default_error_display_loc=> 'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss=> '20140114234621',
  p_ui_type_name => null,
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

----------------
--package app map
--
prompt  ...user interfaces
--
 
begin
 
--application/user interface/desktop
wwv_flow_api.create_user_interface (
  p_id => 27233453412693087 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_ui_type_name => 'DESKTOP'
 ,p_display_name => 'Desktop'
 ,p_display_seq => 10
 ,p_use_auto_detect => false
 ,p_is_default => true
 ,p_theme_id => 25
 ,p_home_url => 'f?p=&APP_ID.:HOME:&SESSION.'
 ,p_login_url => 'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
  );
null;
 
end;
/

prompt  ...plug-in settings
--
 
begin
 
--application/plug-in setting/item_type_native_yes_no
wwv_flow_api.create_plugin_setting (
  p_id => 27215560494692930 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'ITEM TYPE'
 ,p_plugin => 'NATIVE_YES_NO'
 ,p_attribute_01 => 'Y'
 ,p_attribute_03 => 'N'
  );
null;
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 27233556333693131 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 200,
  p_icon_image => '',
  p_icon_subtext=> 'Logout',
  p_icon_target=> '&LOGOUT_URL.',
  p_icon_image_alt=> 'Logout',
  p_icon_height=> 32,
  p_icon_width=> 32,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => 'N',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> '',
  p_begins_on_new_line=> '',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00101
prompt  ...PAGE 101: QR Code demo
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 101
 ,p_user_interface_id => 27233453412693087 + wwv_flow_api.g_id_offset
 ,p_name => 'QR Code demo'
 ,p_alias => 'HOME'
 ,p_step_title => 'QR Code demo'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'QR Code demo'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code_onload => 
'renderQR_P101_QR_CLOCK((new Date).toTimeString());'||unistr('\000a')||
''||unistr('\000a')||
'setInterval(function() {'||unistr('\000a')||
'   renderQR_P101_QR_CLOCK((new Date).toTimeString());'||unistr('\000a')||
'}, 1000);'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20140114234621'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 13735524814580021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'QR Code Item Plugin',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 27228745519693013+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 13736307426580029 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'QR Clock',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 27228745519693013+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 60,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 13736713703580030 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'QR Code - Dynamic',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 27228745519693013+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 13735719419580023 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 101,
  p_button_sequence=> 20,
  p_button_plug_id => 13735524814580021+wwv_flow_api.g_id_offset,
  p_button_name    => 'APPLY_CHANGES',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(27232739282693047+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'Y',
  p_button_image_alt=> 'Apply',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>13735919544580026 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_TEXT',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 13735524814580021+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Text',
  p_source=>'Hello world !',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 120,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 27232036483693040+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>13736104060580028 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_QR_CODE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 13735524814580021+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'QR code',
  p_source=>'P101_TEXT',
  p_source_type=> 'ITEM',
  p_display_as=> 'PLUGIN_COM.JANNAVRATIL.APEX.QR.ITEM',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_read_only_when_type=>'ALWAYS',
  p_field_template=> 27232036483693040+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '200',
  p_attribute_02 => '#000000',
  p_attribute_03 => '#FFFFFF',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>13736512017580030 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_QR_CLOCK',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 13736307426580029+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'QR Clock',
  p_source_type=> 'STATIC',
  p_display_as=> 'PLUGIN_COM.JANNAVRATIL.APEX.QR.ITEM',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 27232036483693040+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '200',
  p_attribute_02 => '#770000',
  p_attribute_03 => '#FFFFFF',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>13736913165580030 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_QR_DYNAMIC',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 13736713703580030+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'QR Code',
  p_source_type=> 'STATIC',
  p_display_as=> 'PLUGIN_COM.JANNAVRATIL.APEX.QR.ITEM',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 27232036483693040+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '200',
  p_attribute_02 => '#000077',
  p_attribute_03 => '#FFFFFF',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>13737129079580031 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_DYNAMIC_TEXT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 13736713703580030+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Text',
  p_source=>'QR changes as you type!',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 120,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 27232341229693041+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 13737303044580032 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 101
 ,p_name => 'Change QR as you type'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P101_DYNAMIC_TEXT'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'keyup'
  );
wwv_flow_api.create_page_da_action (
  p_id => 13737628176580034 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 101
 ,p_event_id => 13737303044580032 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'Y'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_attribute_01 => 'renderQR_P101_QR_DYNAMIC($x("P101_DYNAMIC_TEXT").value);'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 27234731453693192 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
null;
 
end;
/

prompt  ...page templates for application: 104
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 27215656582692942
 
begin
 
wwv_flow_api.create_template (
  p_id => 27215656582692942 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Login'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# id="uLogin">'||unistr('\000a')||
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'  #FORM_OPEN#'
 ,p_box => 
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div id="uLoginContainer">'||unistr('\000a')||
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>'||unistr('\000a')||
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'    <div class="uMessageText">'||unistr('\000a')||
'      #SUCCESS_MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_notification_message => '<section class="uSingleAlertMessage red" id="uNotificationMessage">'||unistr('\000a')||
'	<p>#MESSAGE#</p>'||unistr('\000a')||
'	<a href="javascript:void(0)" class="closeMessage" onclick="apex.jQuery(''#uNotificationMessage'').remove();"></a>'||unistr('\000a')||
'</section>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0"'
 ,p_theme_class_id => 6
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
 ,p_template_comment => '18'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27215750754692956 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27215656582692942 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 4
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_sidebar
prompt  ......Page template 27215855371692958
 
begin
 
wwv_flow_api.create_template (
  p_id => 27215855371692958 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'No Tabs - Left Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideLeftCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'<'||
'/div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="uFooterBG">'||unistr('\000a')||
'        <div class="uLeft"></d'||
'iv>'||unistr('\000a')||
'        <div class="uRight"></div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>'||unistr('\000a')||
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'    <div class="uMessageText">'||unistr('\000a')||
'      #SUCCESS_MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_notification_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"></a>'||unistr('\000a')||
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'    <div class="uMessageText">'||unistr('\000a')||
'      #MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 17
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27215933411692959 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27215855371692958 + wwv_flow_api.g_id_offset
 ,p_name => 'Main Content'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216043812692960 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27215855371692958 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216129091692960 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27215855371692958 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216245410692960 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27215855371692958 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216352779692960 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27215855371692958 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar
prompt  ......Page template 27216454136692960
 
begin
 
wwv_flow_api.create_template (
  p_id => 27216454136692960 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'No Tabs - Left and Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uThreeColumns">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_8" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols ape'||
'x_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 17
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216530293692961 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27216454136692960 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 8
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216650033692961 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27216454136692960 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216740909692961 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27216454136692960 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216858948692961 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27216454136692960 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27216955268692961 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27216454136692960 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27217050615692961 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27216454136692960 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITOIN_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_no_sidebar
prompt  ......Page template 27217130666692961
 
begin
 
wwv_flow_api.create_template (
  p_id => 27217130666692961 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'No Tabs - No Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_error_page_template => '<div class="apex_cols apex_span_12">'||unistr('\000a')||
'  <section class="uRegion uNoHeading uErrorRegion">'||unistr('\000a')||
'    <div class="uRegionContent">'||unistr('\000a')||
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>'||unistr('\000a')||
'      <p><strong>#MESSAGE#</strong></p>'||unistr('\000a')||
'      <p>#ADDITIONAL_INFO#</p>'||unistr('\000a')||
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="uRegionHeading">'||unistr('\000a')||
'      <span class="uButtonContainer">'||unistr('\000a')||
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>'||unistr('\000a')||
'      </span>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </section>'||unistr('\000a')||
'</div>'
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27217236167692963 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217130666692961 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27217340870692963 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217130666692961 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27217451418692963 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217130666692961 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27217540091692964 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217130666692961 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar
prompt  ......Page template 27217628194692964
 
begin
 
wwv_flow_api.create_template (
  p_id => 27217628194692964 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'No Tabs - Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideRightCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||
''||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27217742273692964 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217628194692964 + wwv_flow_api.g_id_offset
 ,p_name => 'Main Content'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27217847605692964 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217628194692964 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27217958437692964 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217628194692964 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITION_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218043276692964 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217628194692964 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218144959692964 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27217628194692964 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_content_frame
prompt  ......Page template 27218257317692965
 
begin
 
wwv_flow_api.create_template (
  p_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Content Frame'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_javascript_code_onload => 
'initContentFrameTabs();'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uRegion uRegionNoPadding clearfix uRegionFrame">'||unistr('\000a')||
'      <div class="uRegionHeading">'||unistr('\000a')||
'        <h1>#TITLE#</h1>'||unistr('\000a')||
'        <span class="uButtonContainer">'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'  '||
'      </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="uFrameContent">'||unistr('\000a')||
'        <div class="uFrameMain">'||unistr('\000a')||
'            #BOX_BODY#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="uFrameSide">'||unistr('\000a')||
'          <div class="apex_cols apex_span_2 alpha omega">'||unistr('\000a')||
'            #REGION_POSITION_03#'||unistr('\000a')||
'          </div>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>'
 ,p_sidebar_def_reg_pos => 'BODY_3'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 10
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218352512692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218449082692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218544304692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Frame Buttons'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218648848692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_name => 'Side Column'
 ,p_placeholder => 'REGION_POSITION_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218749610692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218828809692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27218931264692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27219036344692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27218257317692965 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar
prompt  ......Page template 27219142087692967
 
begin
 
wwv_flow_api.create_template (
  p_id => 27219142087692967 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Left Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideLeftCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'<'||
'/div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27219253742692969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219142087692967 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27219330617692969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219142087692967 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27219443967692969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219142087692967 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27219532027692969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219142087692967 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27219647648692969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219142087692967 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27219759643692969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219142087692967 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27219848122692969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219142087692967 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar
prompt  ......Page template 27219959337692969
 
begin
 
wwv_flow_api.create_template (
  p_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Left and Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uThreeColumns">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_8" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols ape'||
'x_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220048900692971 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 8
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220155385692971 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220256442692971 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITON_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220340204692971 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITON_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220455897692972 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITON_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220531606692972 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITON_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220639896692972 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITON_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220745687692972 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27219959337692969 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITON_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_no_sidebar
prompt  ......Page template 27220832292692972
 
begin
 
wwv_flow_api.create_template (
  p_id => 27220832292692972 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - No Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => 'class="regionColumns"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 1
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27220954817692973 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27220832292692972 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221040577692973 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27220832292692972 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221128169692973 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27220832292692972 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221242334692973 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27220832292692972 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221338350692973 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27220832292692972 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221440451692973 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27220832292692972 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar
prompt  ......Page template 27221551444692973
 
begin
 
wwv_flow_api.create_template (
  p_id => 27221551444692973 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideRightCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||
''||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => '// show / hide grid'||unistr('\000a')||
'function showGrid() {'||unistr('\000a')||
'  apex.jQuery(''.apex_grid_container'').addClass(''showGrid'');'||unistr('\000a')||
'};'||unistr('\000a')||
'function hideGrid() {'||unistr('\000a')||
'  apex.jQuery(''.apex_grid_container'').removeClass(''showGrid'');'||unistr('\000a')||
'};'||unistr('\000a')||
'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => false
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221644252692977 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27221551444692973 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221757974692977 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27221551444692973 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221844695692977 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27221551444692973 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITION_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27221932144692977 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27221551444692973 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222032896692977 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27221551444692973 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222141136692977 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27221551444692973 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222230446692977 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27221551444692973 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_wizard_page
prompt  ......Page template 27222348281692977
 
begin
 
wwv_flow_api.create_template (
  p_id => 27222348281692977 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Wizard Page'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_javascript_code_onload => 
'loadWizardTrain();'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <div class="cWizard">'||unistr('\000a')||
'      <div class="cWizardHeader">'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="cWizardContentContainer">'||unistr('\000a')||
'        <div class="cWizardContent">'||unistr('\000a')||
'            #BOX_'||
'BODY#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 8
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222459550692978 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27222348281692977 + wwv_flow_api.g_id_offset
 ,p_name => 'Wizard Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 11
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222557616692979 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27222348281692977 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222650752692979 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27222348281692977 + wwv_flow_api.g_id_offset
 ,p_name => 'Wizard Header'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222758801692979 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27222348281692977 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222833713692979 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27222348281692977 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27222930912692979 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27222348281692977 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27223046227692979 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27222348281692977 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 27223157106692979
 
begin
 
wwv_flow_api.create_template (
  p_id => 27223157106692979 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Popup'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# id="uPopup">'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_theme_class_id => 4
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27223247167692980 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223157106692979 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 27223332605692980
 
begin
 
wwv_flow_api.create_template (
  p_id => 27223332605692980 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Printer Friendly'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# class="printerFriendly">'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 5
 ,p_error_page_template => '<div class="apex_cols apex_span_12">'||unistr('\000a')||
'  <section class="uRegion uNoHeading uErrorRegion">'||unistr('\000a')||
'    <div class="uRegionContent">'||unistr('\000a')||
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>'||unistr('\000a')||
'      <p><strong>#MESSAGE#</strong></p>'||unistr('\000a')||
'      <p>#ADDITIONAL_INFO#</p>'||unistr('\000a')||
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="uRegionHeading">'||unistr('\000a')||
'      <span class="uButtonContainer">'||unistr('\000a')||
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>'||unistr('\000a')||
'      </span>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </section>'||unistr('\000a')||
'</div>'
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27223447433692981 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223332605692980 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27223559539692981 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223332605692980 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27223643786692981 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223332605692980 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27223744565692981 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223332605692980 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar
prompt  ......Page template 27223858349692982
 
begin
 
wwv_flow_api.create_template (
  p_id => 27223858349692982 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Two Level Tabs - Left Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<div class="uParentTabs">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <ul>'||unistr('\000a')||
'        #PARENT_TAB_CELLS#'||unistr('\000a')||
'      </ul>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>  '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideLeftCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'<'||
'/div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_non_curr_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 18
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27223934270692986 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223858349692982 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224034168692986 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223858349692982 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224156318692986 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223858349692982 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224241791692986 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223858349692982 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224356304692986 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223858349692982 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224438981692986 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223858349692982 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224537817692986 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27223858349692982 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar
prompt  ......Page template 27224650813692987
 
begin
 
wwv_flow_api.create_template (
  p_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Two Level Tabs - Left and Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<div class="uParentTabs">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <ul>'||unistr('\000a')||
'        #PARENT_TAB_CELLS#'||unistr('\000a')||
'      </ul>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>  '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uThreeColumns">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_8" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols ape'||
'x_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_current_tab => '<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_non_curr_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 18
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224740402692988 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 8
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224842599692988 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27224932327692988 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITON_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225042228692988 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITON_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225158518692988 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITON_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225258433692988 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITON_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225340747692988 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITON_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225438856692988 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27224650813692987 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITON_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_no_sidebar
prompt  ......Page template 27225536500692989
 
begin
 
wwv_flow_api.create_template (
  p_id => 27225536500692989 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Two Level Tabs - No Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<div class="uParentTabs">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <ul>'||unistr('\000a')||
'        #PARENT_TAB_CELLS#'||unistr('\000a')||
'      </ul>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>  '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_non_curr_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 2
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225630477692990 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27225536500692989 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225740385692990 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27225536500692989 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225845568692990 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27225536500692989 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27225933254692990 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27225536500692989 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226032899692990 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27225536500692989 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226138878692990 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27225536500692989 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar
prompt  ......Page template 27226258069692991
 
begin
 
wwv_flow_api.create_template (
  p_id => 27226258069692991 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Two Level Tabs - Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<div class="uParentTabs">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <ul>'||unistr('\000a')||
'        #PARENT_TAB_CELLS#'||unistr('\000a')||
'      </ul>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>  '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideRightCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||
''||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_non_curr_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 2
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226328194692992 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27226258069692991 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226433487692992 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27226258069692991 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226547529692992 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27226258069692991 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITION_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226628219692992 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27226258069692991 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226759735692992 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27226258069692991 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226843186692992 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27226258069692991 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 27226938586692992 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 27226258069692991 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 27232435147693043
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 27232435147693043 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button'
 ,p_template => 
'<button class="uButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
 ,p_hot_template => 
'<button class="uButton uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_icon
prompt  ......Button Template 27232537123693047
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 27232537123693047 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button - Icon'
 ,p_template => 
'<button class="uButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
 ,p_hot_template => 
'<button class="uButton uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 6
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_icon_only
prompt  ......Button Template 27232651890693047
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 27232651890693047 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button - Icon Only'
 ,p_template => 
'<button class="uButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
 ,p_hot_template => 
'<button class="uButton uHotButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 7
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/large_button
prompt  ......Button Template 27232739282693047
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 27232739282693047 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Large Button'
 ,p_template => 
'<button class="uButtonLarge #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
 ,p_hot_template => 
'<button class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/large_button_icon
prompt  ......Button Template 27232849994693047
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 27232849994693047 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Large Button - Icon'
 ,p_template => 
'<button class="uButtonLarge iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
 ,p_hot_template => 
'<button class="uButtonLarge uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/large_button_icon_only
prompt  ......Button Template 27232940695693048
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 27232940695693048 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Large Button - Icon Only'
 ,p_template => 
'<button class="uButtonLarge iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
 ,p_hot_template => 
'<button class="uButtonLarge uHotButton iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 8
 ,p_theme_id => 25
  );
null;
 
end;
/

---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/accessible_region_with_heading
prompt  ......region template 27227059313692994
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227059313692994 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">'||unistr('\000a')||
'  <h1 class="visuallyhidden">#TITLE#</h1>'||unistr('\000a')||
'  #BODY#'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Accessible Region with Heading'
 ,p_theme_id => 25
 ,p_theme_class_id => 21
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/alert_region
prompt  ......region template 27227133866693005
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227133866693005 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Alert Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 25
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 27227248630693006
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227248630693006 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_theme_id => 25
 ,p_theme_class_id => 7
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||unistr('\000a')||
''||unistr('\000a')||
'TITLE=YES'||unistr('\000a')||
'BUTTONS=YES'||unistr('\000a')||
'100% WIDTH=NO'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 27227332881693006
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227332881693006 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">'||unistr('\000a')||
'<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <div class="uBreadcrumbs">'||unistr('\000a')||
'      #BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_theme_id => 25
 ,p_theme_class_id => 6
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<div id="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">'||unistr('\000a')||
'<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <div id="uBreadcrumbs">'||unistr('\000a')||
'      #BODY#'||unistr('\000a')||
'      <div class="uBreadcrumbsBG">'||unistr('\000a')||
'        <div class="uLeft"></div>'||unistr('\000a')||
'        <div class="uRight"></div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 27227439750693007
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227439750693007 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uButtonRegionContentContainer">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_theme_id => 25
 ,p_theme_class_id => 4
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 27227545554693008
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227545554693008 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uButtonRegionContentContainer">'||unistr('\000a')||
'    <div class="uButtonRegionContent">#BODY#</div>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_theme_id => 25
 ,p_theme_class_id => 17
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/content_frame_body_container
prompt  ......region template 27227658392693008
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227658392693008 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'#SUB_REGION_HEADERS#'||unistr('\000a')||
'#BODY#'||unistr('\000a')||
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">'||unistr('\000a')||
'#SUB_REGIONS#'||unistr('\000a')||
'</div>'
 ,p_sub_plug_header_template => '<div class="uFrameRegionSelector clearfix">'||unistr('\000a')||
'  <ul>'||unistr('\000a')||
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>'||unistr('\000a')||
'    #ENTRIES#'||unistr('\000a')||
'  </ul>'||unistr('\000a')||
'</div>'
 ,p_sub_plug_header_entry_templ => '<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
 ,p_page_plug_template_name => 'Content Frame Body Container'
 ,p_theme_id => 25
 ,p_theme_class_id => 7
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/div_region_with_id
prompt  ......region template 27227754680693009
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227754680693009 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> '||unistr('\000a')||
'#BODY#'||unistr('\000a')||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'DIV Region with ID'
 ,p_theme_id => 25
 ,p_theme_class_id => 22
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 27227837100693009
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27227837100693009 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 25
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 27227940497693009 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 27227837100693009 + wwv_flow_api.g_id_offset
 ,p_name => 'Region Body'
 ,p_placeholder => 'BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => -1
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region_expanded
prompt  ......region template 27228053041693010
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27228053041693010 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>'||unistr('\000a')||
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>'||unistr('\000a')||
'      #TITLE#'||unistr('\000a')||
'    </h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE'||
'2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Hide and Show Region (Expanded)'
 ,p_theme_id => 25
 ,p_theme_class_id => 1
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region_hidden
prompt  ......region template 27228134620693011
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27228134620693011 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>'||unistr('\000a')||
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>'||unistr('\000a')||
'      #TITLE#'||unistr('\000a')||
'    </h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANG'||
'E##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix" style="display: none;">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Hide and Show Region (Hidden)'
 ,p_theme_id => 25
 ,p_theme_class_id => 1
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/interactive_report_region
prompt  ......region template 27228238402693011
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27228238402693011 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">'||unistr('\000a')||
'  <h1 class="visuallyhidden">#TITLE#</h1>'||unistr('\000a')||
'  #BODY#'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Interactive Report Region'
 ,p_theme_id => 25
 ,p_theme_class_id => 21
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/modal_region
prompt  ......region template 27228353205693011
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27228353205693011 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="apex_grid_container modal_grid">'||unistr('\000a')||
'  <div class="apex_cols apex_span_8 modal_col">'||unistr('\000a')||
'    <section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'      <div class="uRegionHeading">'||unistr('\000a')||
'        <h1>#TITLE#</h1>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        #BODY#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'        <span class'||
'="uButtonContainer">'||unistr('\000a')||
'          #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Modal Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 25
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 27228438694693011 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 27228353205693011 + wwv_flow_api.g_id_offset
 ,p_name => 'Region Body'
 ,p_placeholder => 'BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 6
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
prompt  ......region template 27228552936693011
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27228552936693011 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Region without Buttons and Titles'
 ,p_theme_id => 25
 ,p_theme_class_id => 19
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 27228631004693012
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27228631004693012 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 25
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => '<table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#FF0000" height="16">'||unistr('\000a')||
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td align=middle valign="top">'||unistr('\000a')||
'                  <div align="center">'||unistr('\000a')||
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">'||unistr('\000a')||
'                      <b>#TITLE# </b></font></div>'||unistr('\000a')||
'                </td>'||unistr('\000a')||
'              </tr>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'   <tr>'||unistr('\000a')||
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />'||unistr('\000a')||
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td colspan="2">'||unistr('\000a')||
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">'||unistr('\000a')||
'                    <tr>'||unistr('\000a')||
'                      <td>&nbsp;</td>'||unistr('\000a')||
'                      <td valign="top" width="106">'||unistr('\000a')||
'                        <P><FONT face="arial, helvetica" size="1">'||unistr('\000a')||
'                            #BODY#'||unistr('\000a')||
'                           </font>'||unistr('\000a')||
'                        </P>'||unistr('\000a')||
'                      </td>'||unistr('\000a')||
'                    </tr>'||unistr('\000a')||
'                  </table>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'      </table>'||unistr('\000a')||
'      <table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/standard_region
prompt  ......region template 27228745519693013
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27228745519693013 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Standard Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 25
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 27228859665693014 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 27228745519693013 + wwv_flow_api.g_id_offset
 ,p_name => 'Region Body'
 ,p_placeholder => 'BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => -1
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 27228953603693014 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 27228745519693013 + wwv_flow_api.g_id_offset
 ,p_name => 'Sub Regions'
 ,p_placeholder => 'SUB_REGIONS'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => -1
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/standard_region_no_padding
prompt  ......region template 27229058389693014
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27229058389693014 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Standard Region - No Padding'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 25
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_buttons
prompt  ......region template 27229157266693014
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 27229157266693014 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="cWizardButtons cWizardButtonsLeft">'||unistr('\000a')||
'#PREVIOUS##CLOSE#'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div class="cWizardButtons cWizardButtonsRight">'||unistr('\000a')||
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Wizard Buttons'
 ,p_theme_id => 25
 ,p_theme_class_id => 28
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 27230328466693025
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<button onclick="javascript:location.href=''#LINK#''" class="uButton uHotButton #A01#" type="button"><span>#TEXT#</span></a> ';

t2:=t2||'<button onclick="javascript:location.href=''#LINK#''" class="uButton #A01#" type="button"><span>#TEXT#</span></a> ';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27230328466693025 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 25,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="uButtonList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/featured_list_with_subtext
prompt  ......list template 27230450551693030
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li>'||unistr('\000a')||
'  <a href="#LINK#">'||unistr('\000a')||
'    <h3>#TEXT#</h3>'||unistr('\000a')||
'    <p>#A01#</p>'||unistr('\000a')||
'  </a>'||unistr('\000a')||
'</li>';

t2:=t2||'<li>'||unistr('\000a')||
'  <a href="#LINK#">'||unistr('\000a')||
'    <h3>#TEXT#</h3>'||unistr('\000a')||
'    <p>#A01#</p>'||unistr('\000a')||
'  </a>'||unistr('\000a')||
'</li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27230450551693030 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Featured List with Subtext',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="featuredLinksList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 27230549456693031
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="active">'||unistr('\000a')||
'      <a href="#LINK#">'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />'||unistr('\000a')||
'        <span>#TEXT#</span>'||unistr('\000a')||
'      </a>'||unistr('\000a')||
'    </li>';

t2:=t2||'    <li>'||unistr('\000a')||
'      <a href="#LINK#">'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />'||unistr('\000a')||
'        <span>#TEXT#</span>'||unistr('\000a')||
'      </a>'||unistr('\000a')||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27230549456693031 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<div class="uImagesList uHorizontalImagesList clearfix">'||unistr('\000a')||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 27230640367693031
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li> ';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li> ';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27230640367693031 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<ul class="uHorizontalLinksList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_wizard_progress_list
prompt  ......list template 27230734822693031
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="#LIST_STATUS#">'||unistr('\000a')||
'      <span>#TEXT#</span>'||unistr('\000a')||
'    </li>';

t2:=t2||'    <li class="#LIST_STATUS#">'||unistr('\000a')||
'      <span>#TEXT#</span>'||unistr('\000a')||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27230734822693031 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Wizard Progress List',
  p_theme_id  => 25,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="uHorizontalProgressList hidden-phone">'||unistr('\000a')||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/page_level_tabs_list
prompt  ......list template 27230836657693032
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#" class="active">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27230836657693032 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Page Level Tabs List',
  p_theme_id  => 25,
  p_theme_class_id => 7,
  p_list_template_before_rows=>' ',
  p_list_template_after_rows=>' ',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 27230931651693032
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27230931651693032 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 25,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="uHorizontalTabs">'||unistr('\000a')||
'<ul>',
  p_list_template_after_rows=>'</ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 27231047336693032
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="active">'||unistr('\000a')||
'      <a href="#LINK#">'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />'||unistr('\000a')||
'        <span>#TEXT#</span>'||unistr('\000a')||
'      </a>'||unistr('\000a')||
'    </li>';

t2:=t2||'    <li>'||unistr('\000a')||
'      <a href="#LINK#">'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />'||unistr('\000a')||
'        <span>#TEXT#</span>'||unistr('\000a')||
'      </a>'||unistr('\000a')||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27231047336693032 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 25,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<div class="uImagesList uVerticalImagesList clearfix">'||unistr('\000a')||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_list_with_subtext_and_icon
prompt  ......list template 27231128810693032
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'  <li>'||unistr('\000a')||
'    <a href="#LINK#">'||unistr('\000a')||
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>'||unistr('\000a')||
'      <h3>#TEXT#</h3>'||unistr('\000a')||
'      <h4>#A01#</h4>'||unistr('\000a')||
'    </a>'||unistr('\000a')||
'  </li>';

t2:=t2||'  <li>'||unistr('\000a')||
'    <a href="#LINK#">'||unistr('\000a')||
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>'||unistr('\000a')||
'      <h3>#TEXT#</h3>'||unistr('\000a')||
'      <h4>#A01#</h4>'||unistr('\000a')||
'    </a>'||unistr('\000a')||
'  </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27231128810693032 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical List with Subtext and Icon',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="largeLinkList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 27231244564693033
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27231244564693033 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 25,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="uNumberedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 27231347116693033
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27231347116693033 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 25,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<ul class="uVerticalSidebarList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 27231447574693033
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27231447574693033 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="uVerticalList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
prompt  ......list template 27231544101693033
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27231544101693033 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 25,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="uVerticalList noBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list_vertical
prompt  ......list template 27231647238693033
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>';

t2:=t2||'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>27231647238693033 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List - Vertical',
  p_theme_id  => 25,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>',
  p_list_template_after_rows=>'</ul></div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless_report
prompt  ......report template 27229242223693015
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27229242223693015 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless Report',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 27229242223693015 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/comment_bubbles
prompt  ......report template 27229344172693020
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li class="#1#">'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	<em>#2#</em>'||unistr('\000a')||
'	#3##4##5##6##7#'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<span>'||unistr('\000a')||
'	#8# (#9#) #10#'||unistr('\000a')||
'</span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27229344172693020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Comment Bubbles',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="commentBubbles">',
  p_row_template_after_rows =>'</ul>'||unistr('\000a')||
'<table class="uPaginationTable">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/fixed_headers
prompt  ......report template 27229432855693020
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27229432855693020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Fixed Headers',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<div class="uFixedHeadersContainer">'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>'||unistr('\000a')||
'',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>'||unistr('\000a')||
'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 25,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 27229432855693020 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>'||unistr('\000a')||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 27229553615693021
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27229553615693021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 25,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 27229553615693021 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 27229645962693021
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27229645962693021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<ul class="uReportList">',
  p_row_template_after_rows =>'</ul>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'NOT_CONDITIONAL',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 27229645962693021 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/search_results_report_select_link_text_link_target_detail1_detail2_last_modified
prompt  ......report template 27229742997693021
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'<span class="title"><a href="#2#">#1#</a></span>'||unistr('\000a')||
'<span class="description"><span class="last_modified">#5#</span>#3#</span>'||unistr('\000a')||
'<span class="type">#4#</span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27229742997693021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="sSearchResultsReport">',
  p_row_template_after_rows =>'</ul>'||unistr('\000a')||
'<table class="uPaginationTable">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 27229853610693022
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27229853610693022 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 27229853610693022 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternative
prompt  ......report template 27229949743693022
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3:=c3||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>';

c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27229949743693022 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard - Alternative',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 25,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 27229949743693022 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>'||unistr('\000a')||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/two_column_portlet
prompt  ......report template 27230041129693022
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'  <span class="uValueHeading">'||unistr('\000a')||
'    #1#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'  <span class="uValue">'||unistr('\000a')||
'    #2#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27230041129693022 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Two Column Portlet',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
  p_row_template_after_rows =>'</ul>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 25,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 27230134973693023
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'  <span class="uValueHeading">'||unistr('\000a')||
'    #COLUMN_HEADER#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'  <span class="uValue">'||unistr('\000a')||
'    #COLUMN_VALUE#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27230134973693023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>',
  p_row_template_after_rows =>'</ul>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 25,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_left_aligned
prompt  ......report template 27230229115693023
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'  <label>'||unistr('\000a')||
'    #COLUMN_HEADER#'||unistr('\000a')||
'  </label>'||unistr('\000a')||
'  <span>'||unistr('\000a')||
'    #COLUMN_VALUE#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 27230229115693023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs - Left Aligned',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">',
  p_row_template_after_rows =>'</ul>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 25,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> 'shrahman 03/12/2012 Making table based ');
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/hidden_label_read_by_screen_readers
prompt  ......label template 27231731935693035
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 27231731935693035 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Hidden Label (Read by Screen Readers)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="visuallyhidden">',
  p_template_body2=>'</label>',
  p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_horizontal_left_aligned
prompt  ......label template 27231842882693039
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 27231842882693039 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional (Horizontal - Left Aligned)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional">',
  p_template_body2=>'</label>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_horizontal_right_aligned
prompt  ......label template 27231937313693039
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 27231937313693039 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional (Horizontal - Right Aligned)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional">',
  p_template_body2=>'</label>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button"  title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label_above
prompt  ......label template 27232036483693040
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 27232036483693040 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional (Label Above)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional">',
  p_template_body2=>'</label>'||unistr('\000a')||
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_horizontal_left_aligned
prompt  ......label template 27232154191693040
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 27232154191693040 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required (Horizontal - Left Aligned)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />',
  p_template_body2=>'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_horizontal_right_aligned
prompt  ......label template 27232238295693041
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 27232238295693041 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required (Horizontal - Right Aligned)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />',
  p_template_body2=>' <span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label_above
prompt  ......label template 27232341229693041
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 27232341229693041 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required (Label Above)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />',
  p_template_body2=>'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>'||unistr('\000a')||
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 27233031979693049
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 27233031979693049 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<ul>'||unistr('\000a')||
'<li class="uStartCap"><span></span></li>',
  p_current_page_option=>'<li class="active"><span>#NAME#</span></li> ',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> ',
  p_menu_link_attributes=>'',
  p_between_levels=>'<li class="uSeparator"><span></span></li>',
  p_after_last=>'<li class="uEndCap"><span></span></li>'||unistr('\000a')||
'</ul>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 27233233863693061
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 27233233863693061 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif',
  p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_25/css/4_2.css" type="text/css" media="all"/>'||unistr('\000a')||
'#THEME_CSS#',
  p_page_body_attr=>'class="uPopUpLOV"',
  p_before_field_text=>'<div class="uActionBar">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'class="searchField"',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'class="lovButton hotButton"',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'class="lovButton"',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'class="lovButton"',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'class="lovButton"',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="lovLinks">',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 27233143636693054
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 27233143636693054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th id="#DY#" scope="col" class="uCalDayCol">#IDAY#</th>',
  p_month_title_format=> '<div class="uCal">'||unistr('\000a')||
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>',
  p_month_open_format=> '<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">',
  p_month_close_format=> '</table>'||unistr('\000a')||
'<div class="uCalFooter"></div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'',
  p_day_title_format=> '<span class="uDayTitle">#DD#</span>',
  p_day_open_format=> '<td class="uDay" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td class="uDay today" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>',
  p_weekend_title_format=> '<span class="uDayTitle weekendday">#DD#</span>',
  p_weekend_open_format => '<td class="uDay" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<span class="uDayTitle">#DD#</span>',
  p_nonday_open_format => '<td class="uDay nonday" headers="#DY#">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<div class="uCal uCalWeekly">'||unistr('\000a')||
'<h1 class="uMonth">#WTITLE#</h1>',
  p_weekly_day_of_week_format => '<th scope="col" class="aCalDayCol" id="#DY#">'||unistr('\000a')||
'  <span class="visible-desktop">#DD# #IDAY#</span>'||unistr('\000a')||
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>'||unistr('\000a')||
'</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">',
  p_weekly_month_close_format => '</table>'||unistr('\000a')||
'<div class="uCalFooter"></div>'||unistr('\000a')||
'</div>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="uDay" headers="#DY#"><div class="uDayData">',
  p_weekly_day_close_format => '</div></td>',
  p_weekly_today_open_format => '<td class="uDay today" headers="#DY#"><div class="uDayData">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td class="uDay weekend" headers="#DY#"><div class="uDayData">',
  p_weekly_weekend_close_format => '</div></td>',
  p_weekly_time_open_format => '<th scope="row" class="uCalHour">',
  p_weekly_time_close_format => '</th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th scope="col" id="#DY#" class="aCalDayCol">#IDAY#</th>',
  p_daily_month_title_format => '<div class="uCal uCalWeekly uCalDaily">'||unistr('\000a')||
'<h1 class="uMonth">#IMONTH# #DD#, #YYYY#</h1>',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="uCal">',
  p_daily_month_close_format => '</table>'||unistr('\000a')||
'<div class="uCalFooter"></div>'||unistr('\000a')||
'</div>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td class="uDay" headers="#DY#"><div class="uDayData">',
  p_daily_day_close_format => '</div></td>',
  p_daily_today_open_format => '<td class="uDay today" headers="#DY#"><div class="uDayData">',
  p_daily_time_open_format => '<th scope="row" class="uCalHour" id="#TIME#">',
  p_daily_time_close_format => '</th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '<ul class="listCalendar">'||unistr('\000a')||
'  <li class="monthHeader">'||unistr('\000a')||
'    <h1>#IMONTH# #YYYY#</h1>'||unistr('\000a')||
'  </li>'||unistr('\000a')||
'  #DAYS#'||unistr('\000a')||
'  <li class="listEndCap"></li>'||unistr('\000a')||
'</ul>',
  p_agenda_past_day_format => '  <li class="dayHeader past">'||unistr('\000a')||
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>'||unistr('\000a')||
'  </li>',
  p_agenda_today_day_format => '  <li class="dayHeader today">'||unistr('\000a')||
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>'||unistr('\000a')||
'  </li>',
  p_agenda_future_day_format => '  <li class="dayHeader future">'||unistr('\000a')||
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>'||unistr('\000a')||
'  </li>',
  p_agenda_past_entry_format => '  <li class="dayData past">#DATA#</li>',
  p_agenda_today_entry_format => '  <li class="dayData today">#DATA#</li>',
  p_agenda_future_entry_format => '  <li class="dayData future">#DATA#</li>',
  p_month_data_format => '#DAYS#',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/blue_responsive
prompt  ......theme 27233351958693082
begin
wwv_flow_api.create_theme (
  p_id =>27233351958693082 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 25,
  p_theme_name=>'Blue Responsive',
  p_ui_type_name=>'DESKTOP',
  p_is_locked=>false,
  p_default_page_template=>27220832292692972 + wwv_flow_api.g_id_offset,
  p_error_template=>27217130666692961 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>27223332605692980 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>27215656582692942 + wwv_flow_api.g_id_offset,
  p_default_button_template=>27232435147693043 + wwv_flow_api.g_id_offset,
  p_default_region_template=>27228745519693013 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>27228745519693013 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>27227837100693009 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>27228745519693013 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>27228745519693013 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>27227837100693009 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>27227332881693006 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>27228745519693013 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>27228238402693011 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>27229853610693022 + wwv_flow_api.g_id_offset,
  p_default_label_template=>27231937313693039 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>27233031979693049 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>27233143636693054 + wwv_flow_api.g_id_offset,
  p_default_list_template=>27231447574693033 + wwv_flow_api.g_id_offset,
  p_default_option_label=>27231937313693039 + wwv_flow_api.g_id_offset,
  p_default_header_template=>null + wwv_flow_api.g_id_offset,
  p_default_footer_template=>null + wwv_flow_api.g_id_offset,
  p_default_page_transition=>'NONE',
  p_default_popup_transition=>'NONE',
  p_default_required_label=>27232238295693041 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...theme styles
--
 
begin
 
null;
 
end;
/

prompt  ...theme display points
--
 
begin
 
null;
 
end;
/

prompt  ...build options
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/language
prompt  ...Language Maps for Application 104
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...text messages
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations
--
prompt  ...Shortcuts
--
prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/application_express_authentication
prompt  ......authentication 27233640401693138
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 27233640401693138 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'Application Express Authentication'
 ,p_scheme_type => 'NATIVE_APEX_ACCOUNTS'
 ,p_invalid_session_type => 'LOGIN'
 ,p_use_secure_cookie_yn => 'N'
  );
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

prompt  ...plugins
--
--application/shared_components/plugins/item_type/com_jannavratil_apex_qr_item
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 20563635873959606 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'ITEM TYPE'
 ,p_name => 'COM.JANNAVRATIL.APEX.QR.ITEM'
 ,p_display_name => 'QR Code Item'
 ,p_supported_ui_types => 'DESKTOP:JQM_SMARTPHONE'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_plsql_code => 
'function render_qr_item ('||unistr('\000a')||
'    p_item                in apex_plugin.t_page_item,'||unistr('\000a')||
'    p_plugin              in apex_plugin.t_plugin,'||unistr('\000a')||
'    p_value               in varchar2,'||unistr('\000a')||
'    p_is_readonly         in boolean,'||unistr('\000a')||
'    p_is_printer_friendly in boolean )'||unistr('\000a')||
'    return apex_plugin.t_page_item_render_result'||unistr('\000a')||
'is'||unistr('\000a')||
'    l_size          apex_application_page_items.attribute_01%type := p_item.attribute_01;'||unistr('\000a')||
'    l_color'||
'         apex_application_page_items.attribute_01%type := p_item.attribute_02;'||unistr('\000a')||
'    l_background    apex_application_page_items.attribute_01%type := p_item.attribute_03;'||unistr('\000a')||
'begin'||unistr('\000a')||
''||unistr('\000a')||
'  if apex_application.g_debug then'||unistr('\000a')||
'    apex_plugin_util.debug_page_item('||unistr('\000a')||
'      p_plugin        => p_plugin,'||unistr('\000a')||
'      p_page_item     => p_item'||unistr('\000a')||
'    );'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'   '||unistr('\000a')||
'  apex_javascript.add_library('||unistr('\000a')||
'     p_name      => ''qrcode.min'''||
','||unistr('\000a')||
'     p_directory => p_plugin.file_prefix,'||unistr('\000a')||
'     p_version   => NULL'||unistr('\000a')||
'  );'||unistr('\000a')||
''||unistr('\000a')||
'  sys.htp.p(''<div id="QR-''||p_item.id||''" style="width:''||l_size||''px; height:''||l_size||''px;"></div>'');'||unistr('\000a')||
''||unistr('\000a')||
'  apex_javascript.add_inline_code ('||unistr('\000a')||
'    p_code => ''function renderQR_''||p_item.name||''(value) '||unistr('\000a')||
'{ $("#QR-''||p_item.id||''").html(" ");'||unistr('\000a')||
'  new QRCode(document.getElementById("QR-''||p_item.id||''"), {'||unistr('\000a')||
'  text:   value, '||unistr('\000a')||
'  widt'||
'h:  "''||l_size||''" , '||unistr('\000a')||
'  height: "''||l_size||''" ,'||unistr('\000a')||
'  colorDark:  "''||l_color||''" , '||unistr('\000a')||
'  colorLight: "''||l_background||''"'||unistr('\000a')||
'  } );'||unistr('\000a')||
'}'','||unistr('\000a')||
'    p_key  => ''renderQR_''||p_item.name'||unistr('\000a')||
'  );'||unistr('\000a')||
''||unistr('\000a')||
'  apex_javascript.add_onload_code ('||unistr('\000a')||
'    p_code => ''renderQR_''||p_item.name||''("''||p_value||''");'', '||unistr('\000a')||
'    p_key  => ''renderQR_''||p_item.name'||unistr('\000a')||
'  );'||unistr('\000a')||
'  '||unistr('\000a')||
'  return null;'||unistr('\000a')||
'end;'
 ,p_render_function => 'render_qr_item'
 ,p_standard_attributes => 'VISIBLE:SOURCE:ELEMENT:ENCRYPT'
 ,p_substitute_attributes => true
 ,p_subscribe_plugin_settings => true
 ,p_help_text => '<div>'||unistr('\000a')||
'	<span style="font-size:11px;"><span style="font-family:courier new,courier,monospace;">&nbsp;__ &nbsp; &nbsp;__ &nbsp; &nbsp; ____ &nbsp; &nbsp;__ &nbsp; &nbsp;__ &nbsp; _________ &nbsp; &nbsp; ____ &nbsp; ________ &nbsp; __ &nbsp; __</span></span></div>'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	<span style="font-size:11px;"><span style="font-family: ''courier new'', courier, monospace;">| &nbsp;\ &nbsp;| &nbsp;| &nbsp; / &nbsp; &nbsp;\ &nbsp;| &nbsp;| &nbsp;| &nbsp;| | &nbsp; ___ &nbsp; \ &nbsp; / &nbsp; &nbsp;\ |__ &nbsp; &nbsp;__| | &nbsp;| | &nbsp;|</span></span></div>'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	<span style="font-size:11px;"><span style="font-family:courier new,courier,monospace;">| &nbsp; \_| &nbsp;| &nbsp;/ &nbsp;/\ &nbsp;\ | &nbsp;| &nbsp;| &nbsp;| | &nbsp;|___| &nbsp;/ &nbsp;/ &nbsp;/\ &nbsp;\ &nbsp; | &nbsp;| &nbsp; &nbsp;| &nbsp;| | &nbsp;|</span></span></div>'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	<span style="font-size:11px;"><span style="font-family:courier new,courier,monospace;">| &nbsp; _ &nbsp; &nbsp;| | &nbsp;|__| &nbsp;| \ &nbsp;\/ &nbsp;/ &nbsp;| &nbsp; __ &nbsp; / &nbsp;| &nbsp;|__| &nbsp;| &nbsp;| &nbsp;| &nbsp; &nbsp;| &nbsp;| | &nbsp;|</span></span></div>'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	<span style="font-size:11px;"><span style="font-family:courier new,courier,monospace;">| &nbsp;| \ &nbsp; | | &nbsp; __ &nbsp; | &nbsp;\ &nbsp; &nbsp;/ &nbsp; | &nbsp;| &nbsp;\ &nbsp;\ &nbsp;| &nbsp; __ &nbsp; | &nbsp;| &nbsp;| &nbsp; &nbsp;| &nbsp;| | &nbsp;|____</span></span></div>'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	<span style="font-size:11px;"><span style="font-family:courier new,courier,monospace;">|__| &nbsp;\__| |__| &nbsp;|__| &nbsp; \__/ &nbsp; &nbsp;|__| &nbsp; \__\ |__| &nbsp;|__| &nbsp;|__| &nbsp; &nbsp;|__| |_______|</span></span></div>'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	&nbsp;</div>'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	<span style="font-size:16px;">github.com/navratil/apex-qr-plugin</span></div>'||unistr('\000a')||
''
 ,p_version_identifier => '1.0.0'
 ,p_about_url => 'https://github.com/navratil/apex-qr-code'
 ,p_plugin_comment => 'The MIT License (MIT)'||unistr('\000a')||
''||unistr('\000a')||
'QR code plugin for Oracle Application Express'||unistr('\000a')||
''||unistr('\000a')||
'Copyright (c) 2014 Jan Navratil    (github.com/navratil/apex-qr-plugin)'||unistr('\000a')||
'Copyright (c) 2012 davidshimjs     (github.com/davidshimjs/qrcodejs)'||unistr('\000a')||
''||unistr('\000a')||
'Permission is hereby granted, free of charge, to any person obtaining a copy of'||unistr('\000a')||
'this software and associated documentation files (the "Software"), to deal in'||unistr('\000a')||
'the Software without restriction, including without limitation the rights to'||unistr('\000a')||
'use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of'||unistr('\000a')||
'the Software, and to permit persons to whom the Software is furnished to do so,'||unistr('\000a')||
'subject to the following conditions:'||unistr('\000a')||
''||unistr('\000a')||
'The above copyright notice and this permission notice shall be included in all'||unistr('\000a')||
'copies or substantial portions of the Software.'||unistr('\000a')||
''||unistr('\000a')||
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR'||unistr('\000a')||
'IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS'||unistr('\000a')||
'FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR'||unistr('\000a')||
'COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER'||unistr('\000a')||
'IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN'||unistr('\000a')||
'CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'||unistr('\000a')||
''
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 20567412844144844 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 20563635873959606 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'Size'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_default_value => '200'
 ,p_display_length => 10
 ,p_max_length => 30
 ,p_is_translatable => false
 ,p_help_text => 'Height and Width of the QR code in pixels'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 20568034589180421 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 20563635873959606 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 2
 ,p_display_sequence => 20
 ,p_prompt => 'Color'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => '#000000'
 ,p_display_length => 10
 ,p_max_length => 30
 ,p_is_translatable => false
 ,p_help_text => 'QR code color (dark)'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 20568427040183863 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 20563635873959606 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 3
 ,p_display_sequence => 30
 ,p_prompt => 'Background'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => '#FFFFFF'
 ,p_display_length => 10
 ,p_max_length => 30
 ,p_is_translatable => false
 ,p_help_text => 'QR code background color'
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '766172205152436F64653B2166756E6374696F6E28297B66756E6374696F6E20612861297B746869732E6D6F64653D632E4D4F44455F384249545F425954452C746869732E646174613D612C746869732E706172736564446174613D5B5D3B666F722876';
wwv_flow_api.g_varchar2_table(2) := '617220623D5B5D2C643D302C653D746869732E646174612E6C656E6774683B653E643B642B2B297B76617220663D746869732E646174612E63686172436F646541742864293B663E36353533363F28625B305D3D3234307C28313833353030382666293E';
wwv_flow_api.g_varchar2_table(3) := '3E3E31382C625B315D3D3132387C283235383034382666293E3E3E31322C625B325D3D3132387C28343033322666293E3E3E362C625B335D3D3132387C36332666293A663E323034383F28625B305D3D3232347C2836313434302666293E3E3E31322C62';
wwv_flow_api.g_varchar2_table(4) := '5B315D3D3132387C28343033322666293E3E3E362C625B325D3D3132387C36332666293A663E3132383F28625B305D3D3139327C28313938342666293E3E3E362C625B315D3D3132387C36332666293A625B305D3D662C746869732E7061727365644461';
wwv_flow_api.g_varchar2_table(5) := '74613D746869732E706172736564446174612E636F6E6361742862297D746869732E706172736564446174612E6C656E677468213D746869732E646174612E6C656E677468262628746869732E706172736564446174612E756E73686966742831393129';
wwv_flow_api.g_varchar2_table(6) := '2C746869732E706172736564446174612E756E736869667428313837292C746869732E706172736564446174612E756E73686966742832333929297D66756E6374696F6E206228612C62297B746869732E747970654E756D6265723D612C746869732E65';
wwv_flow_api.g_varchar2_table(7) := '72726F72436F72726563744C6576656C3D622C746869732E6D6F64756C65733D6E756C6C2C746869732E6D6F64756C65436F756E743D302C746869732E6461746143616368653D6E756C6C2C746869732E646174614C6973743D5B5D7D66756E6374696F';
wwv_flow_api.g_varchar2_table(8) := '6E206928612C62297B696628766F696420303D3D612E6C656E677468297468726F77206E6577204572726F7228612E6C656E6774682B222F222B62293B666F722876617220633D303B633C612E6C656E6774682626303D3D615B635D3B29632B2B3B7468';
wwv_flow_api.g_varchar2_table(9) := '69732E6E756D3D6E657720417272617928612E6C656E6774682D632B62293B666F722876617220643D303B643C612E6C656E6774682D633B642B2B29746869732E6E756D5B645D3D615B642B635D7D66756E6374696F6E206A28612C62297B746869732E';
wwv_flow_api.g_varchar2_table(10) := '746F74616C436F756E743D612C746869732E64617461436F756E743D627D66756E6374696F6E206B28297B746869732E6275666665723D5B5D2C746869732E6C656E6774683D307D66756E6374696F6E206D28297B72657475726E22756E646566696E65';
wwv_flow_api.g_varchar2_table(11) := '6422213D747970656F662043616E76617352656E646572696E67436F6E7465787432447D66756E6374696F6E206E28297B76617220613D21312C623D6E6176696761746F722E757365724167656E743B72657475726E2F616E64726F69642F692E746573';
wwv_flow_api.g_varchar2_table(12) := '74286229262628613D21302C614D61743D622E746F537472696E6728292E6D61746368282F616E64726F696420285B302D395D5C2E5B302D395D292F69292C614D61742626614D61745B315D262628613D7061727365466C6F617428614D61745B315D29';
wwv_flow_api.g_varchar2_table(13) := '29292C617D66756E6374696F6E207228612C62297B666F722876617220633D312C653D732861292C663D302C673D6C2E6C656E6774683B673E3D663B662B2B297B76617220683D303B7377697463682862297B6361736520642E4C3A683D6C5B665D5B30';
wwv_flow_api.g_varchar2_table(14) := '5D3B627265616B3B6361736520642E4D3A683D6C5B665D5B315D3B627265616B3B6361736520642E513A683D6C5B665D5B325D3B627265616B3B6361736520642E483A683D6C5B665D5B335D7D696628683E3D6529627265616B3B632B2B7D696628633E';
wwv_flow_api.g_varchar2_table(15) := '6C2E6C656E677468297468726F77206E6577204572726F722822546F6F206C6F6E67206461746122293B72657475726E20637D66756E6374696F6E20732861297B76617220623D656E636F64655552492861292E746F537472696E6728292E7265706C61';
wwv_flow_api.g_varchar2_table(16) := '6365282F5C255B302D39612D66412D465D7B327D2F672C226122293B72657475726E20622E6C656E6774682B28622E6C656E677468213D613F333A30297D612E70726F746F747970653D7B6765744C656E6774683A66756E6374696F6E28297B72657475';
wwv_flow_api.g_varchar2_table(17) := '726E20746869732E706172736564446174612E6C656E6774687D2C77726974653A66756E6374696F6E2861297B666F722876617220623D302C633D746869732E706172736564446174612E6C656E6774683B633E623B622B2B29612E7075742874686973';
wwv_flow_api.g_varchar2_table(18) := '2E706172736564446174615B625D2C38297D7D2C622E70726F746F747970653D7B616464446174613A66756E6374696F6E2862297B76617220633D6E657720612862293B746869732E646174614C6973742E707573682863292C746869732E6461746143';
wwv_flow_api.g_varchar2_table(19) := '616368653D6E756C6C7D2C69734461726B3A66756E6374696F6E28612C62297B696628303E617C7C746869732E6D6F64756C65436F756E743C3D617C7C303E627C7C746869732E6D6F64756C65436F756E743C3D62297468726F77206E6577204572726F';
wwv_flow_api.g_varchar2_table(20) := '7228612B222C222B62293B72657475726E20746869732E6D6F64756C65735B615D5B625D7D2C6765744D6F64756C65436F756E743A66756E6374696F6E28297B72657475726E20746869732E6D6F64756C65436F756E747D2C6D616B653A66756E637469';
wwv_flow_api.g_varchar2_table(21) := '6F6E28297B746869732E6D616B65496D706C2821312C746869732E676574426573744D61736B5061747465726E2829297D2C6D616B65496D706C3A66756E6374696F6E28612C63297B746869732E6D6F64756C65436F756E743D342A746869732E747970';
wwv_flow_api.g_varchar2_table(22) := '654E756D6265722B31372C746869732E6D6F64756C65733D6E657720417272617928746869732E6D6F64756C65436F756E74293B666F722876617220643D303B643C746869732E6D6F64756C65436F756E743B642B2B297B746869732E6D6F64756C6573';
wwv_flow_api.g_varchar2_table(23) := '5B645D3D6E657720417272617928746869732E6D6F64756C65436F756E74293B666F722876617220653D303B653C746869732E6D6F64756C65436F756E743B652B2B29746869732E6D6F64756C65735B645D5B655D3D6E756C6C7D746869732E73657475';
wwv_flow_api.g_varchar2_table(24) := '70506F736974696F6E50726F62655061747465726E28302C30292C746869732E7365747570506F736974696F6E50726F62655061747465726E28746869732E6D6F64756C65436F756E742D372C30292C746869732E7365747570506F736974696F6E5072';
wwv_flow_api.g_varchar2_table(25) := '6F62655061747465726E28302C746869732E6D6F64756C65436F756E742D37292C746869732E7365747570506F736974696F6E41646A7573745061747465726E28292C746869732E736574757054696D696E675061747465726E28292C746869732E7365';
wwv_flow_api.g_varchar2_table(26) := '74757054797065496E666F28612C63292C746869732E747970654E756D6265723E3D372626746869732E7365747570547970654E756D6265722861292C6E756C6C3D3D746869732E646174614361636865262628746869732E6461746143616368653D62';
wwv_flow_api.g_varchar2_table(27) := '2E6372656174654461746128746869732E747970654E756D6265722C746869732E6572726F72436F72726563744C6576656C2C746869732E646174614C69737429292C746869732E6D61704461746128746869732E6461746143616368652C63297D2C73';
wwv_flow_api.g_varchar2_table(28) := '65747570506F736974696F6E50726F62655061747465726E3A66756E6374696F6E28612C62297B666F722876617220633D2D313B373E3D633B632B2B2969662821282D313E3D612B637C7C746869732E6D6F64756C65436F756E743C3D612B632929666F';
wwv_flow_api.g_varchar2_table(29) := '722876617220643D2D313B373E3D643B642B2B292D313E3D622B647C7C746869732E6D6F64756C65436F756E743C3D622B647C7C28746869732E6D6F64756C65735B612B635D5B622B645D3D633E3D302626363E3D63262628303D3D647C7C363D3D6429';
wwv_flow_api.g_varchar2_table(30) := '7C7C643E3D302626363E3D64262628303D3D637C7C363D3D63297C7C633E3D322626343E3D632626643E3D322626343E3D643F21303A2131297D2C676574426573744D61736B5061747465726E3A66756E6374696F6E28297B666F722876617220613D30';
wwv_flow_api.g_varchar2_table(31) := '2C623D302C633D303B383E633B632B2B297B746869732E6D616B65496D706C2821302C63293B76617220643D662E6765744C6F7374506F696E742874686973293B28303D3D637C7C613E6429262628613D642C623D63297D72657475726E20627D2C6372';
wwv_flow_api.g_varchar2_table(32) := '656174654D6F766965436C69703A66756E6374696F6E28612C622C63297B76617220643D612E637265617465456D7074794D6F766965436C697028622C63292C653D313B746869732E6D616B6528293B666F722876617220663D303B663C746869732E6D';
wwv_flow_api.g_varchar2_table(33) := '6F64756C65732E6C656E6774683B662B2B29666F722876617220673D662A652C683D303B683C746869732E6D6F64756C65735B665D2E6C656E6774683B682B2B297B76617220693D682A652C6A3D746869732E6D6F64756C65735B665D5B685D3B6A2626';
wwv_flow_api.g_varchar2_table(34) := '28642E626567696E46696C6C28302C313030292C642E6D6F7665546F28692C67292C642E6C696E65546F28692B652C67292C642E6C696E65546F28692B652C672B65292C642E6C696E65546F28692C672B65292C642E656E6446696C6C2829297D726574';
wwv_flow_api.g_varchar2_table(35) := '75726E20647D2C736574757054696D696E675061747465726E3A66756E6374696F6E28297B666F722876617220613D383B613C746869732E6D6F64756C65436F756E742D383B612B2B296E756C6C3D3D746869732E6D6F64756C65735B615D5B365D2626';
wwv_flow_api.g_varchar2_table(36) := '28746869732E6D6F64756C65735B615D5B365D3D303D3D612532293B666F722876617220623D383B623C746869732E6D6F64756C65436F756E742D383B622B2B296E756C6C3D3D746869732E6D6F64756C65735B365D5B625D262628746869732E6D6F64';
wwv_flow_api.g_varchar2_table(37) := '756C65735B365D5B625D3D303D3D622532297D2C7365747570506F736974696F6E41646A7573745061747465726E3A66756E6374696F6E28297B666F722876617220613D662E6765745061747465726E506F736974696F6E28746869732E747970654E75';
wwv_flow_api.g_varchar2_table(38) := '6D626572292C623D303B623C612E6C656E6774683B622B2B29666F722876617220633D303B633C612E6C656E6774683B632B2B297B76617220643D615B625D2C653D615B635D3B6966286E756C6C3D3D746869732E6D6F64756C65735B645D5B655D2966';
wwv_flow_api.g_varchar2_table(39) := '6F722876617220673D2D323B323E3D673B672B2B29666F722876617220683D2D323B323E3D683B682B2B29746869732E6D6F64756C65735B642B675D5B652B685D3D2D323D3D677C7C323D3D677C7C2D323D3D687C7C323D3D687C7C303D3D672626303D';
wwv_flow_api.g_varchar2_table(40) := '3D683F21303A21317D7D2C7365747570547970654E756D6265723A66756E6374696F6E2861297B666F722876617220623D662E676574424348547970654E756D62657228746869732E747970654E756D626572292C633D303B31383E633B632B2B297B76';
wwv_flow_api.g_varchar2_table(41) := '617220643D21612626313D3D283126623E3E63293B746869732E6D6F64756C65735B4D6174682E666C6F6F7228632F33295D5B6325332B746869732E6D6F64756C65436F756E742D382D335D3D647D666F722876617220633D303B31383E633B632B2B29';
wwv_flow_api.g_varchar2_table(42) := '7B76617220643D21612626313D3D283126623E3E63293B746869732E6D6F64756C65735B6325332B746869732E6D6F64756C65436F756E742D382D335D5B4D6174682E666C6F6F7228632F33295D3D647D7D2C736574757054797065496E666F3A66756E';
wwv_flow_api.g_varchar2_table(43) := '6374696F6E28612C62297B666F722876617220633D746869732E6572726F72436F72726563744C6576656C3C3C337C622C643D662E67657442434854797065496E666F2863292C653D303B31353E653B652B2B297B76617220673D21612626313D3D2831';
wwv_flow_api.g_varchar2_table(44) := '26643E3E65293B363E653F746869732E6D6F64756C65735B655D5B385D3D673A383E653F746869732E6D6F64756C65735B652B315D5B385D3D673A746869732E6D6F64756C65735B746869732E6D6F64756C65436F756E742D31352B655D5B385D3D677D';
wwv_flow_api.g_varchar2_table(45) := '666F722876617220653D303B31353E653B652B2B297B76617220673D21612626313D3D283126643E3E65293B383E653F746869732E6D6F64756C65735B385D5B746869732E6D6F64756C65436F756E742D652D315D3D673A393E653F746869732E6D6F64';
wwv_flow_api.g_varchar2_table(46) := '756C65735B385D5B31352D652D312B315D3D673A746869732E6D6F64756C65735B385D5B31352D652D315D3D677D746869732E6D6F64756C65735B746869732E6D6F64756C65436F756E742D385D5B385D3D21617D2C6D6170446174613A66756E637469';
wwv_flow_api.g_varchar2_table(47) := '6F6E28612C62297B666F722876617220633D2D312C643D746869732E6D6F64756C65436F756E742D312C653D372C673D302C683D746869732E6D6F64756C65436F756E742D313B683E303B682D3D3229666F7228363D3D682626682D2D3B3B297B666F72';
wwv_flow_api.g_varchar2_table(48) := '2876617220693D303B323E693B692B2B296966286E756C6C3D3D746869732E6D6F64756C65735B645D5B682D695D297B766172206A3D21313B673C612E6C656E6774682626286A3D313D3D283126615B675D3E3E3E6529293B766172206B3D662E676574';
wwv_flow_api.g_varchar2_table(49) := '4D61736B28622C642C682D69293B6B2626286A3D216A292C746869732E6D6F64756C65735B645D5B682D695D3D6A2C652D2D2C2D313D3D65262628672B2B2C653D37297D696628642B3D632C303E647C7C746869732E6D6F64756C65436F756E743C3D64';
wwv_flow_api.g_varchar2_table(50) := '297B642D3D632C633D2D633B627265616B7D7D7D7D2C622E504144303D3233362C622E504144313D31372C622E637265617465446174613D66756E6374696F6E28612C632C64297B666F722876617220653D6A2E6765745253426C6F636B7328612C6329';
wwv_flow_api.g_varchar2_table(51) := '2C673D6E6577206B2C683D303B683C642E6C656E6774683B682B2B297B76617220693D645B685D3B672E70757428692E6D6F64652C34292C672E70757428692E6765744C656E67746828292C662E6765744C656E677468496E4269747328692E6D6F6465';
wwv_flow_api.g_varchar2_table(52) := '2C6129292C692E77726974652867297D666F7228766172206C3D302C683D303B683C652E6C656E6774683B682B2B296C2B3D655B685D2E64617461436F756E743B696628672E6765744C656E677468496E4269747328293E382A6C297468726F77206E65';
wwv_flow_api.g_varchar2_table(53) := '77204572726F722822636F6465206C656E677468206F766572666C6F772E2028222B672E6765744C656E677468496E4269747328292B223E222B382A6C2B222922293B666F7228672E6765744C656E677468496E4269747328292B343C3D382A6C262667';
wwv_flow_api.g_varchar2_table(54) := '2E70757428302C34293B30213D672E6765744C656E677468496E42697473282925383B29672E707574426974282131293B666F72283B3B297B696628672E6765744C656E677468496E4269747328293E3D382A6C29627265616B3B696628672E70757428';
wwv_flow_api.g_varchar2_table(55) := '622E504144302C38292C672E6765744C656E677468496E4269747328293E3D382A6C29627265616B3B672E70757428622E504144312C38297D72657475726E20622E637265617465427974657328672C65297D2C622E63726561746542797465733D6675';
wwv_flow_api.g_varchar2_table(56) := '6E6374696F6E28612C62297B666F722876617220633D302C643D302C653D302C673D6E657720417272617928622E6C656E677468292C683D6E657720417272617928622E6C656E677468292C6A3D303B6A3C622E6C656E6774683B6A2B2B297B76617220';
wwv_flow_api.g_varchar2_table(57) := '6B3D625B6A5D2E64617461436F756E742C6C3D625B6A5D2E746F74616C436F756E742D6B3B643D4D6174682E6D617828642C6B292C653D4D6174682E6D617828652C6C292C675B6A5D3D6E6577204172726179286B293B666F7228766172206D3D303B6D';
wwv_flow_api.g_varchar2_table(58) := '3C675B6A5D2E6C656E6774683B6D2B2B29675B6A5D5B6D5D3D32353526612E6275666665725B6D2B635D3B632B3D6B3B766172206E3D662E6765744572726F72436F7272656374506F6C796E6F6D69616C286C292C6F3D6E6577206928675B6A5D2C6E2E';
wwv_flow_api.g_varchar2_table(59) := '6765744C656E67746828292D31292C703D6F2E6D6F64286E293B685B6A5D3D6E6577204172726179286E2E6765744C656E67746828292D31293B666F7228766172206D3D303B6D3C685B6A5D2E6C656E6774683B6D2B2B297B76617220713D6D2B702E67';
wwv_flow_api.g_varchar2_table(60) := '65744C656E67746828292D685B6A5D2E6C656E6774683B685B6A5D5B6D5D3D713E3D303F702E6765742871293A307D7D666F722876617220723D302C6D3D303B6D3C622E6C656E6774683B6D2B2B29722B3D625B6D5D2E746F74616C436F756E743B666F';
wwv_flow_api.g_varchar2_table(61) := '722876617220733D6E65772041727261792872292C743D302C6D3D303B643E6D3B6D2B2B29666F7228766172206A3D303B6A3C622E6C656E6774683B6A2B2B296D3C675B6A5D2E6C656E677468262628735B742B2B5D3D675B6A5D5B6D5D293B666F7228';
wwv_flow_api.g_varchar2_table(62) := '766172206D3D303B653E6D3B6D2B2B29666F7228766172206A3D303B6A3C622E6C656E6774683B6A2B2B296D3C685B6A5D2E6C656E677468262628735B742B2B5D3D685B6A5D5B6D5D293B72657475726E20737D3B666F722876617220633D7B4D4F4445';
wwv_flow_api.g_varchar2_table(63) := '5F4E554D4245523A312C4D4F44455F414C5048415F4E554D3A322C4D4F44455F384249545F425954453A342C4D4F44455F4B414E4A493A387D2C643D7B4C3A312C4D3A302C513A332C483A327D2C653D7B5041545445524E3030303A302C504154544552';
wwv_flow_api.g_varchar2_table(64) := '4E3030313A312C5041545445524E3031303A322C5041545445524E3031313A332C5041545445524E3130303A342C5041545445524E3130313A352C5041545445524E3131303A362C5041545445524E3131313A377D2C663D7B5041545445524E5F504F53';
wwv_flow_api.g_varchar2_table(65) := '4954494F4E5F5441424C453A5B5B5D2C5B362C31385D2C5B362C32325D2C5B362C32365D2C5B362C33305D2C5B362C33345D2C5B362C32322C33385D2C5B362C32342C34325D2C5B362C32362C34365D2C5B362C32382C35305D2C5B362C33302C35345D';
wwv_flow_api.g_varchar2_table(66) := '2C5B362C33322C35385D2C5B362C33342C36325D2C5B362C32362C34362C36365D2C5B362C32362C34382C37305D2C5B362C32362C35302C37345D2C5B362C33302C35342C37385D2C5B362C33302C35362C38325D2C5B362C33302C35382C38365D2C5B';
wwv_flow_api.g_varchar2_table(67) := '362C33342C36322C39305D2C5B362C32382C35302C37322C39345D2C5B362C32362C35302C37342C39385D2C5B362C33302C35342C37382C3130325D2C5B362C32382C35342C38302C3130365D2C5B362C33322C35382C38342C3131305D2C5B362C3330';
wwv_flow_api.g_varchar2_table(68) := '2C35382C38362C3131345D2C5B362C33342C36322C39302C3131385D2C5B362C32362C35302C37342C39382C3132325D2C5B362C33302C35342C37382C3130322C3132365D2C5B362C32362C35322C37382C3130342C3133305D2C5B362C33302C35362C';
wwv_flow_api.g_varchar2_table(69) := '38322C3130382C3133345D2C5B362C33342C36302C38362C3131322C3133385D2C5B362C33302C35382C38362C3131342C3134325D2C5B362C33342C36322C39302C3131382C3134365D2C5B362C33302C35342C37382C3130322C3132362C3135305D2C';
wwv_flow_api.g_varchar2_table(70) := '5B362C32342C35302C37362C3130322C3132382C3135345D2C5B362C32382C35342C38302C3130362C3133322C3135385D2C5B362C33322C35382C38342C3131302C3133362C3136325D2C5B362C32362C35342C38322C3131302C3133382C3136365D2C';
wwv_flow_api.g_varchar2_table(71) := '5B362C33302C35382C38362C3131342C3134322C3137305D5D2C4731353A313333352C4731383A373937332C4731355F4D41534B3A32313532322C67657442434854797065496E666F3A66756E6374696F6E2861297B666F722876617220623D613C3C31';
wwv_flow_api.g_varchar2_table(72) := '303B662E67657442434844696769742862292D662E676574424348446967697428662E473135293E3D303B29625E3D662E4731353C3C662E67657442434844696769742862292D662E676574424348446967697428662E473135293B72657475726E2861';
wwv_flow_api.g_varchar2_table(73) := '3C3C31307C62295E662E4731355F4D41534B7D2C676574424348547970654E756D6265723A66756E6374696F6E2861297B666F722876617220623D613C3C31323B662E67657442434844696769742862292D662E676574424348446967697428662E4731';
wwv_flow_api.g_varchar2_table(74) := '38293E3D303B29625E3D662E4731383C3C662E67657442434844696769742862292D662E676574424348446967697428662E473138293B72657475726E20613C3C31327C627D2C67657442434844696769743A66756E6374696F6E2861297B666F722876';
wwv_flow_api.g_varchar2_table(75) := '617220623D303B30213D613B29622B2B2C613E3E3E3D313B72657475726E20627D2C6765745061747465726E506F736974696F6E3A66756E6374696F6E2861297B72657475726E20662E5041545445524E5F504F534954494F4E5F5441424C455B612D31';
wwv_flow_api.g_varchar2_table(76) := '5D7D2C6765744D61736B3A66756E6374696F6E28612C622C63297B7377697463682861297B6361736520652E5041545445524E3030303A72657475726E20303D3D28622B632925323B6361736520652E5041545445524E3030313A72657475726E20303D';
wwv_flow_api.g_varchar2_table(77) := '3D6225323B6361736520652E5041545445524E3031303A72657475726E20303D3D6325333B6361736520652E5041545445524E3031313A72657475726E20303D3D28622B632925333B6361736520652E5041545445524E3130303A72657475726E20303D';
wwv_flow_api.g_varchar2_table(78) := '3D284D6174682E666C6F6F7228622F32292B4D6174682E666C6F6F7228632F33292925323B6361736520652E5041545445524E3130313A72657475726E20303D3D622A6325322B622A6325333B6361736520652E5041545445524E3131303A7265747572';
wwv_flow_api.g_varchar2_table(79) := '6E20303D3D28622A6325322B622A6325332925323B6361736520652E5041545445524E3131313A72657475726E20303D3D28622A6325332B28622B632925322925323B64656661756C743A7468726F77206E6577204572726F722822626164206D61736B';
wwv_flow_api.g_varchar2_table(80) := '5061747465726E3A222B61297D7D2C6765744572726F72436F7272656374506F6C796E6F6D69616C3A66756E6374696F6E2861297B666F722876617220623D6E65772069285B315D2C30292C633D303B613E633B632B2B29623D622E6D756C7469706C79';
wwv_flow_api.g_varchar2_table(81) := '286E65772069285B312C672E676578702863295D2C3029293B72657475726E20627D2C6765744C656E677468496E426974733A66756E6374696F6E28612C62297B696628623E3D31262631303E62297377697463682861297B6361736520632E4D4F4445';
wwv_flow_api.g_varchar2_table(82) := '5F4E554D4245523A72657475726E2031303B6361736520632E4D4F44455F414C5048415F4E554D3A72657475726E20393B6361736520632E4D4F44455F384249545F425954453A72657475726E20383B6361736520632E4D4F44455F4B414E4A493A7265';
wwv_flow_api.g_varchar2_table(83) := '7475726E20383B64656661756C743A7468726F77206E6577204572726F7228226D6F64653A222B61297D656C73652069662832373E62297377697463682861297B6361736520632E4D4F44455F4E554D4245523A72657475726E2031323B636173652063';
wwv_flow_api.g_varchar2_table(84) := '2E4D4F44455F414C5048415F4E554D3A72657475726E2031313B6361736520632E4D4F44455F384249545F425954453A72657475726E2031363B6361736520632E4D4F44455F4B414E4A493A72657475726E2031303B64656661756C743A7468726F7720';
wwv_flow_api.g_varchar2_table(85) := '6E6577204572726F7228226D6F64653A222B61297D656C73657B696628212834313E6229297468726F77206E6577204572726F722822747970653A222B62293B7377697463682861297B6361736520632E4D4F44455F4E554D4245523A72657475726E20';
wwv_flow_api.g_varchar2_table(86) := '31343B6361736520632E4D4F44455F414C5048415F4E554D3A72657475726E2031333B6361736520632E4D4F44455F384249545F425954453A72657475726E2031363B6361736520632E4D4F44455F4B414E4A493A72657475726E2031323B6465666175';
wwv_flow_api.g_varchar2_table(87) := '6C743A7468726F77206E6577204572726F7228226D6F64653A222B61297D7D7D2C6765744C6F7374506F696E743A66756E6374696F6E2861297B666F722876617220623D612E6765744D6F64756C65436F756E7428292C633D302C643D303B623E643B64';
wwv_flow_api.g_varchar2_table(88) := '2B2B29666F722876617220653D303B623E653B652B2B297B666F722876617220663D302C673D612E69734461726B28642C65292C683D2D313B313E3D683B682B2B296966282128303E642B687C7C642B683E3D622929666F722876617220693D2D313B31';
wwv_flow_api.g_varchar2_table(89) := '3E3D693B692B2B29303E652B697C7C652B693E3D627C7C2830213D687C7C30213D69292626673D3D612E69734461726B28642B682C652B69292626662B2B3B663E35262628632B3D332B662D35297D666F722876617220643D303B622D313E643B642B2B';
wwv_flow_api.g_varchar2_table(90) := '29666F722876617220653D303B622D313E653B652B2B297B766172206A3D303B612E69734461726B28642C652926266A2B2B2C612E69734461726B28642B312C652926266A2B2B2C612E69734461726B28642C652B312926266A2B2B2C612E6973446172';
wwv_flow_api.g_varchar2_table(91) := '6B28642B312C652B312926266A2B2B2C28303D3D6A7C7C343D3D6A29262628632B3D33297D666F722876617220643D303B623E643B642B2B29666F722876617220653D303B622D363E653B652B2B29612E69734461726B28642C6529262621612E697344';
wwv_flow_api.g_varchar2_table(92) := '61726B28642C652B31292626612E69734461726B28642C652B32292626612E69734461726B28642C652B33292626612E69734461726B28642C652B3429262621612E69734461726B28642C652B35292626612E69734461726B28642C652B362926262863';
wwv_flow_api.g_varchar2_table(93) := '2B3D3430293B666F722876617220653D303B623E653B652B2B29666F722876617220643D303B622D363E643B642B2B29612E69734461726B28642C6529262621612E69734461726B28642B312C65292626612E69734461726B28642B322C65292626612E';
wwv_flow_api.g_varchar2_table(94) := '69734461726B28642B332C65292626612E69734461726B28642B342C6529262621612E69734461726B28642B352C65292626612E69734461726B28642B362C6529262628632B3D3430293B666F7228766172206B3D302C653D303B623E653B652B2B2966';
wwv_flow_api.g_varchar2_table(95) := '6F722876617220643D303B623E643B642B2B29612E69734461726B28642C652926266B2B2B3B766172206C3D4D6174682E616273283130302A6B2F622F622D3530292F353B72657475726E20632B3D31302A6C7D7D2C673D7B676C6F673A66756E637469';
wwv_flow_api.g_varchar2_table(96) := '6F6E2861297B696628313E61297468726F77206E6577204572726F722822676C6F6728222B612B222922293B72657475726E20672E4C4F475F5441424C455B615D7D2C676578703A66756E6374696F6E2861297B666F72283B303E613B29612B3D323535';
wwv_flow_api.g_varchar2_table(97) := '3B666F72283B613E3D3235363B29612D3D3235353B72657475726E20672E4558505F5441424C455B615D7D2C4558505F5441424C453A6E657720417272617928323536292C4C4F475F5441424C453A6E657720417272617928323536297D2C683D303B38';
wwv_flow_api.g_varchar2_table(98) := '3E683B682B2B29672E4558505F5441424C455B685D3D313C3C683B666F722876617220683D383B3235363E683B682B2B29672E4558505F5441424C455B685D3D672E4558505F5441424C455B682D345D5E672E4558505F5441424C455B682D355D5E672E';
wwv_flow_api.g_varchar2_table(99) := '4558505F5441424C455B682D365D5E672E4558505F5441424C455B682D385D3B666F722876617220683D303B3235353E683B682B2B29672E4C4F475F5441424C455B672E4558505F5441424C455B685D5D3D683B692E70726F746F747970653D7B676574';
wwv_flow_api.g_varchar2_table(100) := '3A66756E6374696F6E2861297B72657475726E20746869732E6E756D5B615D7D2C6765744C656E6774683A66756E6374696F6E28297B72657475726E20746869732E6E756D2E6C656E6774687D2C6D756C7469706C793A66756E6374696F6E2861297B66';
wwv_flow_api.g_varchar2_table(101) := '6F722876617220623D6E657720417272617928746869732E6765744C656E67746828292B612E6765744C656E67746828292D31292C633D303B633C746869732E6765744C656E67746828293B632B2B29666F722876617220643D303B643C612E6765744C';
wwv_flow_api.g_varchar2_table(102) := '656E67746828293B642B2B29625B632B645D5E3D672E6765787028672E676C6F6728746869732E676574286329292B672E676C6F6728612E67657428642929293B72657475726E206E6577206928622C30297D2C6D6F643A66756E6374696F6E2861297B';
wwv_flow_api.g_varchar2_table(103) := '696628746869732E6765744C656E67746828292D612E6765744C656E67746828293C302972657475726E20746869733B666F722876617220623D672E676C6F6728746869732E676574283029292D672E676C6F6728612E676574283029292C633D6E6577';
wwv_flow_api.g_varchar2_table(104) := '20417272617928746869732E6765744C656E6774682829292C643D303B643C746869732E6765744C656E67746828293B642B2B29635B645D3D746869732E6765742864293B666F722876617220643D303B643C612E6765744C656E67746828293B642B2B';
wwv_flow_api.g_varchar2_table(105) := '29635B645D5E3D672E6765787028672E676C6F6728612E676574286429292B62293B72657475726E206E6577206928632C30292E6D6F642861297D7D2C6A2E52535F424C4F434B5F5441424C453D5B5B312C32362C31395D2C5B312C32362C31365D2C5B';
wwv_flow_api.g_varchar2_table(106) := '312C32362C31335D2C5B312C32362C395D2C5B312C34342C33345D2C5B312C34342C32385D2C5B312C34342C32325D2C5B312C34342C31365D2C5B312C37302C35355D2C5B312C37302C34345D2C5B322C33352C31375D2C5B322C33352C31335D2C5B31';
wwv_flow_api.g_varchar2_table(107) := '2C3130302C38305D2C5B322C35302C33325D2C5B322C35302C32345D2C5B342C32352C395D2C5B312C3133342C3130385D2C5B322C36372C34335D2C5B322C33332C31352C322C33342C31365D2C5B322C33332C31312C322C33342C31325D2C5B322C38';
wwv_flow_api.g_varchar2_table(108) := '362C36385D2C5B342C34332C32375D2C5B342C34332C31395D2C5B342C34332C31355D2C5B322C39382C37385D2C5B342C34392C33315D2C5B322C33322C31342C342C33332C31355D2C5B342C33392C31332C312C34302C31345D2C5B322C3132312C39';
wwv_flow_api.g_varchar2_table(109) := '375D2C5B322C36302C33382C322C36312C33395D2C5B342C34302C31382C322C34312C31395D2C5B342C34302C31342C322C34312C31355D2C5B322C3134362C3131365D2C5B332C35382C33362C322C35392C33375D2C5B342C33362C31362C342C3337';
wwv_flow_api.g_varchar2_table(110) := '2C31375D2C5B342C33362C31322C342C33372C31335D2C5B322C38362C36382C322C38372C36395D2C5B342C36392C34332C312C37302C34345D2C5B362C34332C31392C322C34342C32305D2C5B362C34332C31352C322C34342C31365D2C5B342C3130';
wwv_flow_api.g_varchar2_table(111) := '312C38315D2C5B312C38302C35302C342C38312C35315D2C5B342C35302C32322C342C35312C32335D2C5B332C33362C31322C382C33372C31335D2C5B322C3131362C39322C322C3131372C39335D2C5B362C35382C33362C322C35392C33375D2C5B34';
wwv_flow_api.g_varchar2_table(112) := '2C34362C32302C362C34372C32315D2C5B372C34322C31342C342C34332C31355D2C5B342C3133332C3130375D2C5B382C35392C33372C312C36302C33385D2C5B382C34342C32302C342C34352C32315D2C5B31322C33332C31312C342C33342C31325D';
wwv_flow_api.g_varchar2_table(113) := '2C5B332C3134352C3131352C312C3134362C3131365D2C5B342C36342C34302C352C36352C34315D2C5B31312C33362C31362C352C33372C31375D2C5B31312C33362C31322C352C33372C31335D2C5B352C3130392C38372C312C3131302C38385D2C5B';
wwv_flow_api.g_varchar2_table(114) := '352C36352C34312C352C36362C34325D2C5B352C35342C32342C372C35352C32355D2C5B31312C33362C31325D2C5B352C3132322C39382C312C3132332C39395D2C5B372C37332C34352C332C37342C34365D2C5B31352C34332C31392C322C34342C32';
wwv_flow_api.g_varchar2_table(115) := '305D2C5B332C34352C31352C31332C34362C31365D2C5B312C3133352C3130372C352C3133362C3130385D2C5B31302C37342C34362C312C37352C34375D2C5B312C35302C32322C31352C35312C32335D2C5B322C34322C31342C31372C34332C31355D';
wwv_flow_api.g_varchar2_table(116) := '2C5B352C3135302C3132302C312C3135312C3132315D2C5B392C36392C34332C342C37302C34345D2C5B31372C35302C32322C312C35312C32335D2C5B322C34322C31342C31392C34332C31355D2C5B332C3134312C3131332C342C3134322C3131345D';
wwv_flow_api.g_varchar2_table(117) := '2C5B332C37302C34342C31312C37312C34355D2C5B31372C34372C32312C342C34382C32325D2C5B392C33392C31332C31362C34302C31345D2C5B332C3133352C3130372C352C3133362C3130385D2C5B332C36372C34312C31332C36382C34325D2C5B';
wwv_flow_api.g_varchar2_table(118) := '31352C35342C32342C352C35352C32355D2C5B31352C34332C31352C31302C34342C31365D2C5B342C3134342C3131362C342C3134352C3131375D2C5B31372C36382C34325D2C5B31372C35302C32322C362C35312C32335D2C5B31392C34362C31362C';
wwv_flow_api.g_varchar2_table(119) := '362C34372C31375D2C5B322C3133392C3131312C372C3134302C3131325D2C5B31372C37342C34365D2C5B372C35342C32342C31362C35352C32355D2C5B33342C33372C31335D2C5B342C3135312C3132312C352C3135322C3132325D2C5B342C37352C';
wwv_flow_api.g_varchar2_table(120) := '34372C31342C37362C34385D2C5B31312C35342C32342C31342C35352C32355D2C5B31362C34352C31352C31342C34362C31365D2C5B362C3134372C3131372C342C3134382C3131385D2C5B362C37332C34352C31342C37342C34365D2C5B31312C3534';
wwv_flow_api.g_varchar2_table(121) := '2C32342C31362C35352C32355D2C5B33302C34362C31362C322C34372C31375D2C5B382C3133322C3130362C342C3133332C3130375D2C5B382C37352C34372C31332C37362C34385D2C5B372C35342C32342C32322C35352C32355D2C5B32322C34352C';
wwv_flow_api.g_varchar2_table(122) := '31352C31332C34362C31365D2C5B31302C3134322C3131342C322C3134332C3131355D2C5B31392C37342C34362C342C37352C34375D2C5B32382C35302C32322C362C35312C32335D2C5B33332C34362C31362C342C34372C31375D2C5B382C3135322C';
wwv_flow_api.g_varchar2_table(123) := '3132322C342C3135332C3132335D2C5B32322C37332C34352C332C37342C34365D2C5B382C35332C32332C32362C35342C32345D2C5B31322C34352C31352C32382C34362C31365D2C5B332C3134372C3131372C31302C3134382C3131385D2C5B332C37';
wwv_flow_api.g_varchar2_table(124) := '332C34352C32332C37342C34365D2C5B342C35342C32342C33312C35352C32355D2C5B31312C34352C31352C33312C34362C31365D2C5B372C3134362C3131362C372C3134372C3131375D2C5B32312C37332C34352C372C37342C34365D2C5B312C3533';
wwv_flow_api.g_varchar2_table(125) := '2C32332C33372C35342C32345D2C5B31392C34352C31352C32362C34362C31365D2C5B352C3134352C3131352C31302C3134362C3131365D2C5B31392C37352C34372C31302C37362C34385D2C5B31352C35342C32342C32352C35352C32355D2C5B3233';
wwv_flow_api.g_varchar2_table(126) := '2C34352C31352C32352C34362C31365D2C5B31332C3134352C3131352C332C3134362C3131365D2C5B322C37342C34362C32392C37352C34375D2C5B34322C35342C32342C312C35352C32355D2C5B32332C34352C31352C32382C34362C31365D2C5B31';
wwv_flow_api.g_varchar2_table(127) := '372C3134352C3131355D2C5B31302C37342C34362C32332C37352C34375D2C5B31302C35342C32342C33352C35352C32355D2C5B31392C34352C31352C33352C34362C31365D2C5B31372C3134352C3131352C312C3134362C3131365D2C5B31342C3734';
wwv_flow_api.g_varchar2_table(128) := '2C34362C32312C37352C34375D2C5B32392C35342C32342C31392C35352C32355D2C5B31312C34352C31352C34362C34362C31365D2C5B31332C3134352C3131352C362C3134362C3131365D2C5B31342C37342C34362C32332C37352C34375D2C5B3434';
wwv_flow_api.g_varchar2_table(129) := '2C35342C32342C372C35352C32355D2C5B35392C34362C31362C312C34372C31375D2C5B31322C3135312C3132312C372C3135322C3132325D2C5B31322C37352C34372C32362C37362C34385D2C5B33392C35342C32342C31342C35352C32355D2C5B32';
wwv_flow_api.g_varchar2_table(130) := '322C34352C31352C34312C34362C31365D2C5B362C3135312C3132312C31342C3135322C3132325D2C5B362C37352C34372C33342C37362C34385D2C5B34362C35342C32342C31302C35352C32355D2C5B322C34352C31352C36342C34362C31365D2C5B';
wwv_flow_api.g_varchar2_table(131) := '31372C3135322C3132322C342C3135332C3132335D2C5B32392C37342C34362C31342C37352C34375D2C5B34392C35342C32342C31302C35352C32355D2C5B32342C34352C31352C34362C34362C31365D2C5B342C3135322C3132322C31382C3135332C';
wwv_flow_api.g_varchar2_table(132) := '3132335D2C5B31332C37342C34362C33322C37352C34375D2C5B34382C35342C32342C31342C35352C32355D2C5B34322C34352C31352C33322C34362C31365D2C5B32302C3134372C3131372C342C3134382C3131385D2C5B34302C37352C34372C372C';
wwv_flow_api.g_varchar2_table(133) := '37362C34385D2C5B34332C35342C32342C32322C35352C32355D2C5B31302C34352C31352C36372C34362C31365D2C5B31392C3134382C3131382C362C3134392C3131395D2C5B31382C37352C34372C33312C37362C34385D2C5B33342C35342C32342C';
wwv_flow_api.g_varchar2_table(134) := '33342C35352C32355D2C5B32302C34352C31352C36312C34362C31365D5D2C6A2E6765745253426C6F636B733D66756E6374696F6E28612C62297B76617220633D6A2E6765745273426C6F636B5461626C6528612C62293B696628766F696420303D3D63';
wwv_flow_api.g_varchar2_table(135) := '297468726F77206E6577204572726F72282262616420727320626C6F636B204020747970654E756D6265723A222B612B222F6572726F72436F72726563744C6576656C3A222B62293B666F722876617220643D632E6C656E6774682F332C653D5B5D2C66';
wwv_flow_api.g_varchar2_table(136) := '3D303B643E663B662B2B29666F722876617220673D635B332A662B305D2C683D635B332A662B315D2C693D635B332A662B325D2C6B3D303B673E6B3B6B2B2B29652E70757368286E6577206A28682C6929293B72657475726E20657D2C6A2E6765745273';
wwv_flow_api.g_varchar2_table(137) := '426C6F636B5461626C653D66756E6374696F6E28612C62297B7377697463682862297B6361736520642E4C3A72657475726E206A2E52535F424C4F434B5F5441424C455B342A28612D31292B305D3B6361736520642E4D3A72657475726E206A2E52535F';
wwv_flow_api.g_varchar2_table(138) := '424C4F434B5F5441424C455B342A28612D31292B315D3B6361736520642E513A72657475726E206A2E52535F424C4F434B5F5441424C455B342A28612D31292B325D3B6361736520642E483A72657475726E206A2E52535F424C4F434B5F5441424C455B';
wwv_flow_api.g_varchar2_table(139) := '342A28612D31292B335D3B64656661756C743A72657475726E20766F696420307D7D2C6B2E70726F746F747970653D7B6765743A66756E6374696F6E2861297B76617220623D4D6174682E666C6F6F7228612F38293B72657475726E20313D3D28312674';
wwv_flow_api.g_varchar2_table(140) := '6869732E6275666665725B625D3E3E3E372D612538297D2C7075743A66756E6374696F6E28612C62297B666F722876617220633D303B623E633B632B2B29746869732E70757442697428313D3D283126613E3E3E622D632D3129297D2C6765744C656E67';
wwv_flow_api.g_varchar2_table(141) := '7468496E426974733A66756E6374696F6E28297B72657475726E20746869732E6C656E6774687D2C7075744269743A66756E6374696F6E2861297B76617220623D4D6174682E666C6F6F7228746869732E6C656E6774682F38293B746869732E62756666';
wwv_flow_api.g_varchar2_table(142) := '65722E6C656E6774683C3D622626746869732E6275666665722E707573682830292C61262628746869732E6275666665725B625D7C3D3132383E3E3E746869732E6C656E6774682538292C746869732E6C656E6774682B2B7D7D3B766172206C3D5B5B31';
wwv_flow_api.g_varchar2_table(143) := '372C31342C31312C375D2C5B33322C32362C32302C31345D2C5B35332C34322C33322C32345D2C5B37382C36322C34362C33345D2C5B3130362C38342C36302C34345D2C5B3133342C3130362C37342C35385D2C5B3135342C3132322C38362C36345D2C';
wwv_flow_api.g_varchar2_table(144) := '5B3139322C3135322C3130382C38345D2C5B3233302C3138302C3133302C39385D2C5B3237312C3231332C3135312C3131395D2C5B3332312C3235312C3137372C3133375D2C5B3336372C3238372C3230332C3135355D2C5B3432352C3333312C323431';
wwv_flow_api.g_varchar2_table(145) := '2C3137375D2C5B3435382C3336322C3235382C3139345D2C5B3532302C3431322C3239322C3232305D2C5B3538362C3435302C3332322C3235305D2C5B3634342C3530342C3336342C3238305D2C5B3731382C3536302C3339342C3331305D2C5B373932';
wwv_flow_api.g_varchar2_table(146) := '2C3632342C3434322C3333385D2C5B3835382C3636362C3438322C3338325D2C5B3932392C3731312C3530392C3430335D2C5B313030332C3737392C3536352C3433395D2C5B313039312C3835372C3631312C3436315D2C5B313137312C3931312C3636';
wwv_flow_api.g_varchar2_table(147) := '312C3531315D2C5B313237332C3939372C3731352C3533355D2C5B313336372C313035392C3735312C3539335D2C5B313436352C313132352C3830352C3632355D2C5B313532382C313139302C3836382C3635385D2C5B313632382C313236342C393038';
wwv_flow_api.g_varchar2_table(148) := '2C3639385D2C5B313733322C313337302C3938322C3734325D2C5B313834302C313435322C313033302C3739305D2C5B313935322C313533382C313131322C3834325D2C5B323036382C313632382C313136382C3839385D2C5B323138382C313732322C';
wwv_flow_api.g_varchar2_table(149) := '313232382C3935385D2C5B323330332C313830392C313238332C3938335D2C5B323433312C313931312C313335312C313035315D2C5B323536332C313938392C313432332C313039335D2C5B323639392C323039392C313439392C313133395D2C5B3238';
wwv_flow_api.g_varchar2_table(150) := '30392C323231332C313537392C313231395D2C5B323935332C323333312C313636332C313237335D5D2C6F3D66756E6374696F6E28297B76617220613D66756E6374696F6E28612C62297B746869732E5F656C3D612C746869732E5F68744F7074696F6E';
wwv_flow_api.g_varchar2_table(151) := '3D627D3B72657475726E20612E70726F746F747970652E647261773D66756E6374696F6E2861297B66756E6374696F6E206728612C62297B76617220633D646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77';
wwv_flow_api.g_varchar2_table(152) := '332E6F72672F323030302F737667222C61293B666F7228766172206420696E206229622E6861734F776E50726F70657274792864292626632E73657441747472696275746528642C625B645D293B72657475726E20637D76617220623D746869732E5F68';
wwv_flow_api.g_varchar2_table(153) := '744F7074696F6E2C633D746869732E5F656C2C643D612E6765744D6F64756C65436F756E7428293B4D6174682E666C6F6F7228622E77696474682F64292C4D6174682E666C6F6F7228622E6865696768742F64292C746869732E636C65617228293B7661';
wwv_flow_api.g_varchar2_table(154) := '7220683D672822737667222C7B76696577426F783A2230203020222B537472696E672864292B2220222B537472696E672864292C77696474683A2231303025222C6865696768743A2231303025222C66696C6C3A622E636F6C6F724C696768747D293B68';
wwv_flow_api.g_varchar2_table(155) := '2E7365744174747269627574654E532822687474703A2F2F7777772E77332E6F72672F323030302F786D6C6E732F222C22786D6C6E733A786C696E6B222C22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22292C632E61707065';
wwv_flow_api.g_varchar2_table(156) := '6E644368696C642868292C682E617070656E644368696C642867282272656374222C7B66696C6C3A622E636F6C6F724461726B2C77696474683A2231222C6865696768743A2231222C69643A2274656D706C617465227D29293B666F722876617220693D';
wwv_flow_api.g_varchar2_table(157) := '303B643E693B692B2B29666F7228766172206A3D303B643E6A3B6A2B2B29696628612E69734461726B28692C6A29297B766172206B3D672822757365222C7B783A537472696E672869292C793A537472696E67286A297D293B6B2E736574417474726962';
wwv_flow_api.g_varchar2_table(158) := '7574654E532822687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222C2268726566222C222374656D706C61746522292C682E617070656E644368696C64286B297D7D2C612E70726F746F747970652E636C6561723D66756E637469';
wwv_flow_api.g_varchar2_table(159) := '6F6E28297B666F72283B746869732E5F656C2E6861734368696C644E6F64657328293B29746869732E5F656C2E72656D6F76654368696C6428746869732E5F656C2E6C6173744368696C64297D2C617D28292C703D22737667223D3D3D646F63756D656E';
wwv_flow_api.g_varchar2_table(160) := '742E646F63756D656E74456C656D656E742E7461674E616D652E746F4C6F7765724361736528292C713D703F6F3A6D28293F66756E6374696F6E28297B66756E6374696F6E206128297B746869732E5F656C496D6167652E7372633D746869732E5F656C';
wwv_flow_api.g_varchar2_table(161) := '43616E7661732E746F4461746155524C2822696D6167652F706E6722292C746869732E5F656C496D6167652E7374796C652E646973706C61793D22626C6F636B222C746869732E5F656C43616E7661732E7374796C652E646973706C61793D226E6F6E65';
wwv_flow_api.g_varchar2_table(162) := '227D66756E6374696F6E206428612C62297B76617220633D746869733B696628632E5F664661696C3D622C632E5F66537563636573733D612C6E756C6C3D3D3D632E5F62537570706F727444617461555249297B76617220643D646F63756D656E742E63';
wwv_flow_api.g_varchar2_table(163) := '7265617465456C656D656E742822696D6722292C653D66756E6374696F6E28297B632E5F62537570706F7274446174615552493D21312C632E5F664661696C26265F664661696C2E63616C6C2863297D2C663D66756E6374696F6E28297B632E5F625375';
wwv_flow_api.g_varchar2_table(164) := '70706F7274446174615552493D21302C632E5F66537563636573732626632E5F66537563636573732E63616C6C2863297D3B72657475726E20642E6F6E61626F72743D652C642E6F6E6572726F723D652C642E6F6E6C6F61643D662C642E7372633D2264';
wwv_flow_api.g_varchar2_table(165) := '6174613A696D6167652F6769663B6261736536342C6956424F5277304B47676F414141414E53556845556741414141554141414146434159414141434E6279626C4141414148456C4551565149313250342F2F382F773338474941584449424B45304448';
wwv_flow_api.g_varchar2_table(166) := '78676C6A4E4241414F3954584C3059344F487741414141424A52553545726B4A6767673D3D222C766F696420307D632E5F62537570706F7274446174615552493D3D3D21302626632E5F66537563636573733F632E5F66537563636573732E63616C6C28';
wwv_flow_api.g_varchar2_table(167) := '63293A632E5F62537570706F7274446174615552493D3D3D21312626632E5F664661696C2626632E5F664661696C2E63616C6C2863297D696628746869732E5F616E64726F69642626746869732E5F616E64726F69643C3D322E31297B76617220623D31';
wwv_flow_api.g_varchar2_table(168) := '2F77696E646F772E646576696365506978656C526174696F2C633D43616E76617352656E646572696E67436F6E7465787432442E70726F746F747970652E64726177496D6167653B43616E76617352656E646572696E67436F6E7465787432442E70726F';
wwv_flow_api.g_varchar2_table(169) := '746F747970652E64726177496D6167653D66756E6374696F6E28612C642C652C662C672C682C692C6A297B696628226E6F64654E616D6522696E206126262F696D672F692E7465737428612E6E6F64654E616D652929666F7228766172206C3D61726775';
wwv_flow_api.g_varchar2_table(170) := '6D656E74732E6C656E6774682D313B6C3E3D313B6C2D2D29617267756D656E74735B6C5D3D617267756D656E74735B6C5D2A623B656C736522756E646566696E6564223D3D747970656F66206A262628617267756D656E74735B315D2A3D622C61726775';
wwv_flow_api.g_varchar2_table(171) := '6D656E74735B325D2A3D622C617267756D656E74735B335D2A3D622C617267756D656E74735B345D2A3D62293B632E6170706C7928746869732C617267756D656E7473297D7D76617220653D66756E6374696F6E28612C62297B746869732E5F62497350';
wwv_flow_api.g_varchar2_table(172) := '61696E7465643D21312C746869732E5F616E64726F69643D6E28292C746869732E5F68744F7074696F6E3D622C746869732E5F656C43616E7661733D646F63756D656E742E637265617465456C656D656E74282263616E76617322292C746869732E5F65';
wwv_flow_api.g_varchar2_table(173) := '6C43616E7661732E77696474683D622E77696474682C746869732E5F656C43616E7661732E6865696768743D622E6865696768742C612E617070656E644368696C6428746869732E5F656C43616E766173292C746869732E5F656C3D612C746869732E5F';
wwv_flow_api.g_varchar2_table(174) := '6F436F6E746578743D746869732E5F656C43616E7661732E676574436F6E746578742822326422292C746869732E5F6249735061696E7465643D21312C746869732E5F656C496D6167653D646F63756D656E742E637265617465456C656D656E74282269';
wwv_flow_api.g_varchar2_table(175) := '6D6722292C746869732E5F656C496D6167652E7374796C652E646973706C61793D226E6F6E65222C746869732E5F656C2E617070656E644368696C6428746869732E5F656C496D616765292C746869732E5F62537570706F7274446174615552493D6E75';
wwv_flow_api.g_varchar2_table(176) := '6C6C7D3B72657475726E20652E70726F746F747970652E647261773D66756E6374696F6E2861297B76617220623D746869732E5F656C496D6167652C633D746869732E5F6F436F6E746578742C643D746869732E5F68744F7074696F6E2C653D612E6765';
wwv_flow_api.g_varchar2_table(177) := '744D6F64756C65436F756E7428292C663D642E77696474682F652C673D642E6865696768742F652C683D4D6174682E726F756E642866292C693D4D6174682E726F756E642867293B622E7374796C652E646973706C61793D226E6F6E65222C746869732E';
wwv_flow_api.g_varchar2_table(178) := '636C65617228293B666F7228766172206A3D303B653E6A3B6A2B2B29666F7228766172206B3D303B653E6B3B6B2B2B297B766172206C3D612E69734461726B286A2C6B292C6D3D6B2A662C6E3D6A2A673B632E7374726F6B655374796C653D6C3F642E63';
wwv_flow_api.g_varchar2_table(179) := '6F6C6F724461726B3A642E636F6C6F724C696768742C632E6C696E6557696474683D312C632E66696C6C5374796C653D6C3F642E636F6C6F724461726B3A642E636F6C6F724C696768742C632E66696C6C52656374286D2C6E2C662C67292C632E737472';
wwv_flow_api.g_varchar2_table(180) := '6F6B6552656374284D6174682E666C6F6F72286D292B2E352C4D6174682E666C6F6F72286E292B2E352C682C69292C632E7374726F6B6552656374284D6174682E6365696C286D292D2E352C4D6174682E6365696C286E292D2E352C682C69297D746869';
wwv_flow_api.g_varchar2_table(181) := '732E5F6249735061696E7465643D21307D2C652E70726F746F747970652E6D616B65496D6167653D66756E6374696F6E28297B746869732E5F6249735061696E7465642626642E63616C6C28746869732C61297D2C652E70726F746F747970652E697350';
wwv_flow_api.g_varchar2_table(182) := '61696E7465643D66756E6374696F6E28297B72657475726E20746869732E5F6249735061696E7465647D2C652E70726F746F747970652E636C6561723D66756E6374696F6E28297B746869732E5F6F436F6E746578742E636C6561725265637428302C30';
wwv_flow_api.g_varchar2_table(183) := '2C746869732E5F656C43616E7661732E77696474682C746869732E5F656C43616E7661732E686569676874292C746869732E5F6249735061696E7465643D21317D2C652E70726F746F747970652E726F756E643D66756E6374696F6E2861297B72657475';
wwv_flow_api.g_varchar2_table(184) := '726E20613F4D6174682E666C6F6F72283165332A61292F3165333A617D2C657D28293A66756E6374696F6E28297B76617220613D66756E6374696F6E28612C62297B746869732E5F656C3D612C746869732E5F68744F7074696F6E3D627D3B7265747572';
wwv_flow_api.g_varchar2_table(185) := '6E20612E70726F746F747970652E647261773D66756E6374696F6E2861297B666F722876617220623D746869732E5F68744F7074696F6E2C633D746869732E5F656C2C643D612E6765744D6F64756C65436F756E7428292C653D4D6174682E666C6F6F72';
wwv_flow_api.g_varchar2_table(186) := '28622E77696474682F64292C663D4D6174682E666C6F6F7228622E6865696768742F64292C673D5B273C7461626C65207374796C653D22626F726465723A303B626F726465722D636F6C6C617073653A636F6C6C617073653B223E275D2C683D303B643E';
wwv_flow_api.g_varchar2_table(187) := '683B682B2B297B672E7075736828223C74723E22293B666F722876617220693D303B643E693B692B2B29672E7075736828273C7464207374796C653D22626F726465723A303B626F726465722D636F6C6C617073653A636F6C6C617073653B7061646469';
wwv_flow_api.g_varchar2_table(188) := '6E673A303B6D617267696E3A303B77696474683A272B652B2270783B6865696768743A222B662B2270783B6261636B67726F756E642D636F6C6F723A222B28612E69734461726B28682C69293F622E636F6C6F724461726B3A622E636F6C6F724C696768';
wwv_flow_api.g_varchar2_table(189) := '74292B273B223E3C2F74643E27293B672E7075736828223C2F74723E22297D672E7075736828223C2F7461626C653E22292C632E696E6E657248544D4C3D672E6A6F696E282222293B766172206A3D632E6368696C644E6F6465735B305D2C6B3D28622E';
wwv_flow_api.g_varchar2_table(190) := '77696474682D6A2E6F66667365745769647468292F322C6C3D28622E6865696768742D6A2E6F6666736574486569676874292F323B6B3E3026266C3E302626286A2E7374796C652E6D617267696E3D6C2B22707820222B6B2B22707822297D2C612E7072';
wwv_flow_api.g_varchar2_table(191) := '6F746F747970652E636C6561723D66756E6374696F6E28297B746869732E5F656C2E696E6E657248544D4C3D22227D2C617D28293B5152436F64653D66756E6374696F6E28612C62297B696628746869732E5F68744F7074696F6E3D7B77696474683A32';
wwv_flow_api.g_varchar2_table(192) := '35362C6865696768743A3235362C747970654E756D6265723A342C636F6C6F724461726B3A2223303030303030222C636F6C6F724C696768743A2223666666666666222C636F72726563744C6576656C3A642E487D2C22737472696E67223D3D74797065';
wwv_flow_api.g_varchar2_table(193) := '6F662062262628623D7B746578743A627D292C6229666F7228766172206320696E206229746869732E5F68744F7074696F6E5B635D3D625B635D3B22737472696E67223D3D747970656F662061262628613D646F63756D656E742E676574456C656D656E';
wwv_flow_api.g_varchar2_table(194) := '7442794964286129292C746869732E5F616E64726F69643D6E28292C746869732E5F656C3D612C746869732E5F6F5152436F64653D6E756C6C2C746869732E5F6F44726177696E673D6E6577207128746869732E5F656C2C746869732E5F68744F707469';
wwv_flow_api.g_varchar2_table(195) := '6F6E292C746869732E5F68744F7074696F6E2E746578742626746869732E6D616B65436F646528746869732E5F68744F7074696F6E2E74657874297D2C5152436F64652E70726F746F747970652E6D616B65436F64653D66756E6374696F6E2861297B74';
wwv_flow_api.g_varchar2_table(196) := '6869732E5F6F5152436F64653D6E65772062287228612C746869732E5F68744F7074696F6E2E636F72726563744C6576656C292C746869732E5F68744F7074696F6E2E636F72726563744C6576656C292C746869732E5F6F5152436F64652E6164644461';
wwv_flow_api.g_varchar2_table(197) := '74612861292C746869732E5F6F5152436F64652E6D616B6528292C746869732E5F656C2E7469746C653D612C746869732E5F6F44726177696E672E6472617728746869732E5F6F5152436F6465292C746869732E6D616B65496D61676528297D2C515243';
wwv_flow_api.g_varchar2_table(198) := '6F64652E70726F746F747970652E6D616B65496D6167653D66756E6374696F6E28297B2266756E6374696F6E223D3D747970656F6620746869732E5F6F44726177696E672E6D616B65496D61676526262821746869732E5F616E64726F69647C7C746869';
wwv_flow_api.g_varchar2_table(199) := '732E5F616E64726F69643E3D33292626746869732E5F6F44726177696E672E6D616B65496D61676528297D2C5152436F64652E70726F746F747970652E636C6561723D66756E6374696F6E28297B746869732E5F6F44726177696E672E636C6561722829';
wwv_flow_api.g_varchar2_table(200) := '7D2C5152436F64652E436F72726563744C6576656C3D647D28293B';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 20564911238048246 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 20563635873959606 + wwv_flow_api.g_id_offset
 ,p_file_name => 'qrcode.min.js'
 ,p_mime_type => 'application/javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

prompt  ...data loading
--
prompt  ...post import process
 
begin
 
wwv_flow_api.post_import_process(p_flow_id => wwv_flow.g_flow_id);
null;
 
end;
/

--application/end_environment
commit;
commit;
begin
execute immediate 'begin sys.dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
set define on
prompt  ...done

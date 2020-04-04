.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final BLOCKED_TYPE:I = 0x6

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_ASSISTED_DIALING_USED:I = 0x10

.field public static final FEATURES_HD_CALL:I = 0x4

.field public static final FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final FEATURES_RTT:I = 0x20

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final FEATURES_WIFI:I = 0x8

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final REJECTED_TYPE:I = 0x5

.field public static final SEM_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final SEM_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final SEM_ADDRESS:Ljava/lang/String; = "address"

.field public static final SEM_ANSWERED_EXTERNALLY_TYPE_SHARED_CALL:I = 0x578

.field public static final SEM_BUSINESS_NAME:Ljava/lang/String; = "bname"

.field public static final SEM_CALL_OUT_DURATION:Ljava/lang/String; = "call_out_duration"

.field public static final SEM_CALL_PLUS:Ljava/lang/String; = "callplus"

.field public static final SEM_CDNIP_NUMBER:Ljava/lang/String; = "cdnip_number"

.field public static final SEM_CITY_ID:Ljava/lang/String; = "cityid"

.field public static final SEM_CNAP_NAME:Ljava/lang/String; = "cnap_name"

.field public static final SEM_CONTACT_ID:Ljava/lang/String; = "contactid"

.field public static final SEM_CONTENTS_VALUE_KEY_CONTACT_ID:Ljava/lang/String; = "ci_contact_id"

.field public static final SEM_CONTENTS_VALUE_KEY_NORMALIZED_NUMBER:Ljava/lang/String; = "ci_normalizedNumber"

.field public static final SEM_CONTENTS_VALUE_KEY_PHONE_NUMBER:Ljava/lang/String; = "ci_phoneNumber"

.field public static final SEM_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final SEM_CUSTOM1:Ljava/lang/String; = "sec_custom1"

.field public static final SEM_CUSTOM2:Ljava/lang/String; = "sec_custom2"

.field public static final SEM_CUSTOM3:Ljava/lang/String; = "sec_custom3"

.field public static final SEM_DORMANT_SET:Ljava/lang/String; = "dormant_set"

.field public static final SEM_E164_NUMBER:Ljava/lang/String; = "e164_number"

.field public static final SEM_END_TYPE:Ljava/lang/String; = "sec_end_type"

.field public static final SEM_FIRST_NAME:Ljava/lang/String; = "fname"

.field public static final SEM_FREQUENT:Ljava/lang/String; = "frequent"

.field public static final SEM_GROUP_ID:Ljava/lang/String; = "sec_groupid"

.field public static final SEM_INCOMING_TYPE_VISITOR_ROAMING:I = 0x4b0

.field public static final SEM_LAST_NAME:Ljava/lang/String; = "lname"

.field public static final SEM_LEGACY_PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final SEM_LEGACY_PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final SEM_LEGACY_UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field public static final SEM_LINE_STATUS:Ljava/lang/String; = "sec_line_status"

.field public static final SEM_LOG_TYPE:Ljava/lang/String; = "logtype"

.field public static final SEM_LOG_TYPE_CALL_CONFERECNCE:I = 0x546

.field public static final SEM_LOG_TYPE_CALL_HD:I = 0x96

.field public static final SEM_LOG_TYPE_CALL_KOETAKU:I = 0x6e

.field public static final SEM_LOG_TYPE_CALL_SWIS:I = 0x578

.field public static final SEM_LOG_TYPE_CALL_VIDEO:I = 0x1f4

.field public static final SEM_LOG_TYPE_CALL_VIDEO_EPDG_WIFI:I = 0x5aa

.field public static final SEM_LOG_TYPE_CALL_VIDEO_VOLTE:I = 0x41a

.field public static final SEM_LOG_TYPE_CALL_VOICE:I = 0x64

.field public static final SEM_LOG_TYPE_CALL_VOICE_VOLTE:I = 0x3e8

.field public static final SEM_LOG_TYPE_CALL_VOIP:I = 0x320

.field public static final SEM_LOG_TYPE_CALL_VOWIFI:I = 0x47e

.field public static final SEM_LOG_TYPE_EMAIL:I = 0x190

.field public static final SEM_LOG_TYPE_FAKE_BASE_STATION:I = 0x5dc

.field public static final SEM_LOG_TYPE_IM:I = 0x2bc

.field public static final SEM_LOG_TYPE_IM_CTC:I = 0x15e

.field public static final SEM_LOG_TYPE_MMS:I = 0xc8

.field public static final SEM_LOG_TYPE_RCS_CHAT:I = 0x4e2

.field public static final SEM_LOG_TYPE_RCS_FT:I = 0x514

.field public static final SEM_LOG_TYPE_RCS_FT_CTC:I = 0xfa

.field public static final SEM_LOG_TYPE_RCS_GROUP_CHAT:I = 0x4b0

.field public static final SEM_LOG_TYPE_RCS_SHARED_CONTENT:I = 0x44c

.field public static final SEM_LOG_TYPE_SMS:I = 0x12c

.field public static final SEM_LOG_TYPE_SNS:I = 0x258

.field public static final SEM_LOG_TYPE_VOICEMAIL:I = 0x384

.field public static final SEM_LOG_TYPE_VVM:I = 0x3b6

.field public static final SEM_MEMO:Ljava/lang/String; = "sec_memo"

.field public static final SEM_MESSAGE_CONTENT:Ljava/lang/String; = "m_content"

.field public static final SEM_MESSAGE_ID:Ljava/lang/String; = "messageid"

.field public static final SEM_MESSAGE_SUBJECT:Ljava/lang/String; = "m_subject"

.field public static final SEM_MISSED_TYPE_ROAMING:I = 0x4e2

.field public static final SEM_OUTGOING_TYPE_CONFERECNCE:I = 0x640

.field public static final SEM_OUTGOING_TYPE_HOME_ROAMING:I = 0x47e

.field public static final SEM_OUTGOING_TYPE_VISITOR_ROAMING:I = 0x44c

.field public static final SEM_PHOTORING_URI:Ljava/lang/String; = "photoring_uri"

.field public static final SEM_PINYIN_NAME:Ljava/lang/String; = "pinyin_name"

.field public static final SEM_PULLED_TYPE_SHARED_CALL:I = 0x5dc

.field public static final SEM_RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final SEM_RECORD:Ljava/lang/String; = "sec_record"

.field public static final SEM_REJECTED_TYPE_ROAMING:I = 0x514

.field public static final SEM_REJECTED_TYPE_SHARED_CALL:I = 0x5aa

.field public static final SEM_REJECT_FLAG:Ljava/lang/String; = "reject_flag"

.field public static final SEM_REMIND_ME_LATER_SET:Ljava/lang/String; = "remind_me_later_set"

.field public static final SEM_ROAMING_AUTO_DIALER_QUERY_PARAM:Ljava/lang/String; = "ROAMING_AUTO_DIALER"

.field public static final SEM_RTT:Ljava/lang/String; = "sec_rtt"

.field public static final SEM_SAMSUNG_OWN_NUM:Ljava/lang/String; = "samsung_ownnum"

.field public static final SEM_SERVICE_PROVIDER_TYPE:Ljava/lang/String; = "sp_type"

.field public static final SEM_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final SEM_SERVICE_TYPE_CMF_CALL:I = 0x2774

.field public static final SEM_SERVICE_TYPE_EMERGENCY_ALERT:I = 0x2904

.field public static final SEM_SERVICE_TYPE_FMM_CONTACT_OWNER:I = 0x286e

.field public static final SEM_SERVICE_TYPE_FMM_LOST_DEVICE:I = 0x283c

.field public static final SEM_SERVICE_TYPE_MESSAGE_CALL:I = 0x2710

.field public static final SEM_SERVICE_TYPE_SWITCH_CALL:I = 0x280a

.field public static final SEM_SERVICE_TYPE_SWITCH_CALL_DISCONNECTED:I = 0x27d8

.field public static final SEM_SERVICE_TYPE_YELLOW_PAGE:I = 0x28a0

.field public static final SEM_SIMNUM:Ljava/lang/String; = "simnum"

.field public static final SEM_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final SEM_SMART_CALL:Ljava/lang/String; = "sec_smartcall"

.field public static final SEM_SPAM_REPORT:Ljava/lang/String; = "spam_report"

.field public static final SEM_SUBID:Ljava/lang/String; = "sec_subid"

.field public static final SEM_VVM_ID:Ljava/lang/String; = "vvm_id"

.field public static final SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 17

    const-string v3, ""

    const-string v4, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-static/range {v0 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;)Landroid/net/Uri;
    .locals 17

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    invoke-static/range {v0 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;
    .locals 17

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v0 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p12

    move-object/from16 v7, p16

    const-string v0, "CallLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCall called! callType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", presentation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallLog"

    const-string v8, "Add call: number=%s, duration=%d, user=%s, for all=%s"

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v10, v14

    const/4 v13, 0x2

    aput-object p14, v10, v13

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/4 v11, 0x3

    aput-object v15, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v17, v15

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v0, v17

    :goto_0
    const/16 v17, 0x0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v17

    :cond_0
    move-object/from16 v11, v17

    if-ne v3, v13, :cond_1

    const/4 v10, 0x2

    goto :goto_1

    :cond_1
    if-ne v3, v9, :cond_2

    const/4 v10, 0x4

    goto :goto_1

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x3

    if-ne v3, v9, :cond_4

    :cond_3
    const/4 v10, 0x3

    :cond_4
    :goto_1
    const/4 v9, 0x1

    if-eq v10, v9, :cond_6

    const-string v9, ""

    if-eqz v1, :cond_5

    const-string v12, ""

    iput-object v12, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :cond_5
    move-object v12, v9

    goto :goto_2

    :cond_6
    move-object/from16 v12, p2

    :goto_2
    const/4 v9, 0x0

    const/4 v13, 0x0

    if-eqz v5, :cond_7

    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v13

    :cond_7
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const/4 v0, 0x6

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(I)V

    move-object v0, v14

    if-eqz v7, :cond_8

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_8
    const-string/jumbo v14, "number"

    invoke-virtual {v0, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "post_dial_digits"

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "via_number"

    move-object/from16 v1, p4

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "presentation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "features"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "date"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "duration"

    move/from16 v14, p11

    move-object/from16 v19, v8

    int-to-long v7, v14

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v6, :cond_9

    const-string v1, "data_usage"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_9
    const-string/jumbo v1, "subscription_component_name"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "subscription_id"

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "phone_account_address"

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "new"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "add_for_all_users"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x3

    if-ne v4, v1, :cond_a

    const-string/jumbo v1, "is_read"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    const/4 v1, 0x0

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserHandle()I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v20, v1

    const-string v1, "CallLog"

    const-string v3, "PersonaManager COM is activated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v20, v1

    move/from16 v1, p13

    :goto_3
    if-eqz v1, :cond_13

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v2, v7, v3, v0}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_12

    move/from16 v21, v1

    const-string v1, "call_log_shadow"

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v24, v3

    goto/16 :goto_7

    :cond_c
    if-nez v8, :cond_d

    move-object v1, v3

    goto :goto_4

    :cond_d
    move-object/from16 v1, v20

    :goto_4
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    move-object/from16 v22, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/16 v16, 0x0

    :goto_5
    move/from16 v23, v16

    move-object/from16 v24, v3

    move/from16 v3, v23

    if-ge v3, v1, :cond_11

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move/from16 v25, v1

    move-object v1, v15

    check-cast v1, Landroid/content/pm/UserInfo;

    move-object/from16 v26, v4

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v27, v1

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v4}, Landroid/os/UserHandle;->isSystem()Z

    move-result v15

    if-eqz v15, :cond_e

    goto :goto_6

    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_f

    invoke-static {v2, v7, v1}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v15

    if-nez v15, :cond_f

    const-string v5, "CallLog"

    const-string v6, "Other user should not have callLog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    invoke-virtual {v7, v4}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v7, v4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {v2, v7, v4, v0}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-ne v1, v8, :cond_10

    move-object v1, v5

    move-object/from16 v22, v1

    :cond_10
    :goto_6
    add-int/lit8 v16, v3, 0x1

    move-object/from16 v3, v24

    move/from16 v1, v25

    move-object/from16 v4, v26

    move-object/from16 v5, p8

    move-object/from16 v6, p12

    goto :goto_5

    :cond_11
    goto :goto_9

    :cond_12
    move/from16 v21, v1

    move-object/from16 v24, v3

    :goto_7
    const-string v1, "CallLog"

    const-string v3, "The system user is still encrypted or the callLog is inserted into the shadow"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    :cond_13
    move/from16 v21, v1

    if-eqz p14, :cond_14

    nop

    move-object/from16 v1, p14

    goto :goto_8

    :cond_14
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    :goto_8
    invoke-static {v2, v7, v1, v0}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    :goto_9
    return-object v22
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v2, v3}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ROAMING_AUTO_DIALER"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ROAMING_AUTO_DIALER"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ROAMING_AUTO_DIALER"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "ROAMING_AUTO_DIALER"

    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    :cond_2
    :try_start_0
    const-string v4, "CallLog"

    const-string v5, "Provider called! Insert callLog as a uri"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ROAMING_AUTO_DIALER"

    invoke-virtual {p3, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v4

    :catch_0
    move-exception v4

    const-string v5, "CallLog"

    const-string v6, "Failed to insert calllog"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return-object v5
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v0, 0x0

    move-object v7, v0

    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 3

    const-string/jumbo v0, "no_outgoing_calls"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    nop

    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    return-void
.end method

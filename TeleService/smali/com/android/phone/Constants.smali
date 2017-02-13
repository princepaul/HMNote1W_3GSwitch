.class public Lcom/android/phone/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Constants$VTScreenMode;,
        Lcom/android/phone/Constants$CallStatusCode;
    }
.end annotation


# static fields
.field public static final ACTION_RING_CALL_TOGGLED:Ljava/lang/String; = "com.mediatek.phone.action.RING_CALL_TOGGLED"

.field public static final CALL_SETTING_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.CallSettings"

.field public static final CALL_STATUS_DIALED:I = 0x0

.field public static final CALL_STATUS_DIALED_MMI:I = 0x1

.field public static final CALL_STATUS_DROP_VOICECALL:I = 0x3

.field public static final CALL_STATUS_FAILED:I = 0x2

.field public static final DTMF_TONE_TYPE_LONG:I = 0x1

.field public static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field public static final EXTRA_ACTUAL_NUMBER_TO_DIAL:Ljava/lang/String; = "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

.field public static final EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.phone.CALL_ORIGIN"

.field public static final EXTRA_FOLLOW_SIM_MANAGEMENT:Ljava/lang/String; = "follow_sim_management"

.field public static final EXTRA_INTERNATIONAL_DIAL_OPTION:Ljava/lang/String; = "com.android.phone.extra.international"

.field public static final EXTRA_IS_CONTACT:Ljava/lang/String; = "com.android.phone.IS_CONTACT"

.field public static final EXTRA_IS_FORBIDE_DIALOG:Ljava/lang/String; = "com.android.phone.extra.forbid_dialog"

.field public static final EXTRA_IS_IMS_CALL:Ljava/lang/String; = "com.mediatek.phone.extra.ims"

.field public static final EXTRA_IS_IP_DIAL:Ljava/lang/String; = "com.android.phone.IS_IPCALL"

.field public static final EXTRA_IS_NOTIFICATION:Ljava/lang/String; = "com.android.phone.extra.notification"

.field public static final EXTRA_IS_VIDEO_CALL:Ljava/lang/String; = "com.android.phone.extra.video"

.field public static final EXTRA_ORIGINAL_SIM_ID:Ljava/lang/String; = "com.android.phone.ORIGINAL_SIM_ID"

.field public static final EXTRA_SLOT_ID:Ljava/lang/String; = "com.android.phone.extra.slot"

.field public static final EXTRA_VOICEMAIL_NUMBER:Ljava/lang/String; = "com.android.phone.voicemail_number"

.field public static final EXTRA_VT_MAKE_VOICE_RECALL:Ljava/lang/String; = "com.android.phone.extra.vt_make_voice_recall"

.field public static final INTERNATIONAL_DIAL_OPTION_IGNORE:I = 0x2

.field public static final INTERNATIONAL_DIAL_OPTION_NORMAL:I = 0x0

.field public static final INTERNATIONAL_DIAL_OPTION_WITH_COUNTRY_CODE:I = 0x1

.field public static final IP_PREFIX_SETTING_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.IpPrefixPreference"

.field public static final MESSAGE_CANCEL_VOICEMAIL:Ljava/lang/String; = "com.android.phone.voicemail_cancel"

.field public static final MODEM_3G_CAPABILITY_SWITCH_SETTING_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.Modem3GCapabilitySwitch"

.field public static final OUTGOING_CALL_BROADCASTER:Ljava/lang/String; = "com.android.phone.OutgoingCallBroadcaster"

.field public static final OUTGOING_CALL_RECEIVER:Ljava/lang/String; = "com.mediatek.phone.OutgoingCallReceiver"

.field public static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field public static final PHONE_PREFERENCE_NAME:Ljava/lang/String; = "com.android.phone_preferences"

.field public static final PHONE_RECORDING_TYPE_NOT_RECORDING:I = 0x0

.field public static final PHONE_RECORDING_TYPE_ONLY_PEER_VIDEO:I = 0x3

.field public static final PHONE_RECORDING_TYPE_ONLY_VOICE:I = 0x2

.field public static final PHONE_RECORDING_TYPE_VOICE_AND_PEER_VIDEO:I = 0x1

.field public static final PHONE_RECORDING_VIDEO_CALL_CUSTOM_VALUE:I = 0x1

.field public static final PHONE_RECORDING_VOICE_CALL_CUSTOM_VALUE:I = 0x0

.field public static final PHONE_RECORD_LOW_STORAGE_THRESHOLD:J = 0x200000L

.field public static final SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field public static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SCHEME_VOICEMAIL:Ljava/lang/String; = "voicemail"

.field public static final SETTING_SUB_TITLE_NAME:Ljava/lang/String; = "sub_title_name"

.field public static final SIP_CALL_SETTING_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.SipCallSetting"

.field public static final STORAGE_SETTING_INTENT_NAME:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final STORAGE_TYPE_PHONE_STORAGE:I = 0x0

.field public static final STORAGE_TYPE_SD_CARD:I = 0x1

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail:"

.field public static final VOICE_MAIL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.android.phone.settings.VoicemailSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$NotificationInfo;,
        Lcom/android/phone/NotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_MISSED_CALL:Ljava/lang/String; = "com.android.phone.ACTION_NOTIFY_MISSED_CALL"

.field static final CALL_FORWARD_NOTIFICATION:I = 0x6

.field static final CALL_FORWARD_NOTIFICATION_2:I = 0x6a

.field static final CALL_FORWARD_NOTIFICATION_3:I = 0xce

.field static final CALL_FORWARD_NOTIFICATION_4:I = 0x132

.field static final CALL_FORWARD_NOTIFICATION_GEMINI:[I

.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final CALL_LOG_TOKEN:I = -0x1

.field private static final CALL_RECORD_NOTIFICATION_START:I = 0x2710

.field private static final CIPHER_INDICATION_NOTIFIACTION_ID:I = 0x1e

.field private static final CONTACT_TOKEN:I = -0x2

.field static final DATA_DISCONNECTED_ROAMING_NOTIFICATION:I = 0x7

.field private static final DBG:Z = true

.field private static final DEFAULT_MISSED_CALL_NOTIFY_TIMES:Ljava/lang/String; = "0"

.field private static final INTENTFORSIM1:Ljava/lang/String; = "com.android.notifysim1"

.field private static final INTENTFORSIM2:Ljava/lang/String; = "com.android.notifysim2"

.field private static final INTENTFORSIM3:Ljava/lang/String; = "com.android.notifysim3"

.field private static final INTENTFORSIM4:Ljava/lang/String; = "com.android.notifysim4"

.field private static final INTENTFORSIM_GEMINI:[Ljava/lang/String;

.field static final IN_CALL_NOTIFICATION:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "NotificationMgr"

.field private static final MAX_VM_NUMBER_RETRIES:I = 0x5

.field private static final MISSECALL_EXTRA:Ljava/lang/String; = "MissedCallNumber"

.field private static final MISSEDCALL_INTENT:Ljava/lang/String; = "com.android.phone.NotificationMgr.MissedCall_intent"

.field static final MISSED_CALL_NOTIFICATION:I = 0x1

.field static final MISSED_CALL_NOTIFICATION_TAG:Ljava/lang/String; = "missed_call"

.field private static final MISSED_CALL_NOTIFY_INTERVAL:I = 0x493e0

.field private static final MISSED_CALL_NOTIFY_TIMES_KEY:Ljava/lang/String; = "button_missed_call_notify_times"

.field static final MMI_NOTIFICATION:I = 0x3

.field private static final NEED_REMOVE_CIPHER_INDICATION_NOTIFICATION:I = 0x1

.field private static final NEED_SHOW_CIPHER_INDICATION_NOTIFICATION:I = 0x0

.field private static final NETWORK_SELECTION_KEY_GEMINI:[Ljava/lang/String;

.field private static final NETWORK_SELECTION_NAME_KEY_GEMINI:[Ljava/lang/String;

.field public static final NETWORK_SELECTION_NOTIFICATION:I = 0x4

.field private static final NOTIFICATION_REC_TYPE:Ljava/lang/String; = "call_rec"

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION:I = 0x8

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION_2:I = 0x6c

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION_3:I = 0xd0

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION_4:I = 0x134

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION_GEMINI:[I

.field static final SIM_CARDS_NETWORK_MODE_CHAGNED:I = 0x9

.field private static final UNAVAILABLE_NOTIFY_SIM1:I = 0x1

.field private static final UNAVAILABLE_NOTIFY_SIM2:I = 0x2

.field private static final UNAVAILABLE_NOTIFY_SIM3:I = 0x4

.field private static final UNAVAILABLE_NOTIFY_SIM4:I = 0x8

.field private static final UNAVAILABLE_NOTIFY_SIM_GEMINI:[I

.field private static final VM_NUMBER_RETRY_DELAY_MILLIS:I = 0x2710

.field static final VOICEMAIL_NOTIFICATION:I = 0x5

.field static final VOICEMAIL_NOTIFICATION_2:I = 0x69

.field static final VOICEMAIL_NOTIFICATION_3:I = 0xcd

.field static final VOICEMAIL_NOTIFICATION_4:I = 0x131

.field static final VOICEMAIL_NOTIFICATION_GEMINI:[I

.field private static final VOICE_COMMAND_INCOMING_CALL_NOTIFICATION:I = 0x6e

.field static final VOICE_MAIL_ACTION_GEMINI:[Ljava/lang/String;

.field private static mIsAlreadyShowCI:Z

.field private static sInstance:Lcom/android/phone/NotificationMgr;


# instance fields
.field private CALL_FORWARD_INDICATOR_SIM2:Z

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCfiIconMap:[I

.field private mCfiStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstMissedCallNumber:Ljava/lang/String;

.field private mIsOneMissedCallNumber:Z

.field private mMissedCallNotifyTimes:I

.field private mMissedCallSetting:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mSelectedUnavailableNotify:Z

.field private mShowingCallRcordIcon:Z

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I

.field public statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 109
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "presentation"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const-string v1, "duration"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vtcall"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 379
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 1379
    sput-boolean v4, Lcom/android/phone/NotificationMgr;->mIsAlreadyShowCI:Z

    .line 1637
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/NotificationMgr;->UNAVAILABLE_NOTIFY_SIM_GEMINI:[I

    .line 1646
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.android.notifysim1"

    aput-object v1, v0, v4

    const-string v1, "com.android.notifysim2"

    aput-object v1, v0, v5

    const-string v1, "com.android.notifysim3"

    aput-object v1, v0, v6

    const-string v1, "com.android.notifysim4"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/phone/NotificationMgr;->INTENTFORSIM_GEMINI:[Ljava/lang/String;

    .line 1652
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_NOTIFICATION_GEMINI:[I

    .line 1658
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/NotificationMgr;->SELECTED_OPERATOR_FAIL_NOTIFICATION_GEMINI:[I

    .line 1665
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/phone/NotificationMgr;->VOICEMAIL_NOTIFICATION_GEMINI:[I

    .line 1668
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "VoiceMailSIM"

    aput-object v1, v0, v4

    const-string v1, "VoiceMailSIM"

    aput-object v1, v0, v5

    const-string v1, "VoiceMailSIM"

    aput-object v1, v0, v6

    const-string v1, "VoiceMailSIM"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/phone/NotificationMgr;->VOICE_MAIL_ACTION_GEMINI:[Ljava/lang/String;

    .line 1672
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "network_selection_key"

    aput-object v1, v0, v4

    const-string v1, "network_selection_key_2"

    aput-object v1, v0, v5

    const-string v1, "network_selection_key_2"

    aput-object v1, v0, v6

    const-string v1, "network_selection_key_2"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/phone/NotificationMgr;->NETWORK_SELECTION_KEY_GEMINI:[Ljava/lang/String;

    .line 1675
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "network_selection_name_key"

    aput-object v1, v0, v4

    const-string v1, "network_selection_name_key_2"

    aput-object v1, v0, v5

    const-string v1, "network_selection_name_key_2"

    aput-object v1, v0, v6

    const-string v1, "network_selection_name_key_2"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/phone/NotificationMgr;->NETWORK_SELECTION_NAME_KEY_GEMINI:[Ljava/lang/String;

    return-void

    .line 1637
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    .line 1652
    :array_1
    .array-data 4
        0x6
        0x6a
        0xce
        0x132
    .end array-data

    .line 1658
    :array_2
    .array-data 4
        0x8
        0x6c
        0xd0
        0x134
    .end array-data

    .line 1665
    :array_3
    .array-data 4
        0x5
        0x69
        0xcd
        0x131
    .end array-data
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 4
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mIsOneMissedCallNumber:Z

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mFirstMissedCallNumber:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 173
    iput v2, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 176
    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 1292
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mCfiIconMap:[I

    .line 1300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mCfiStatusMap:Ljava/util/HashMap;

    .line 1591
    new-instance v0, Lcom/android/phone/NotificationMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr$1;-><init>(Lcom/android/phone/NotificationMgr;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1640
    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_INDICATOR_SIM2:Z

    .line 1679
    new-instance v0, Lcom/android/phone/NotificationMgr$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr$2;-><init>(Lcom/android/phone/NotificationMgr;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 191
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 193
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 195
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 198
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 199
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 202
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->initMtk(Lcom/android/phone/PhoneGlobals;)V

    .line 203
    return-void

    .line 1292
    :array_0
    .array-data 4
        0x7f0200c0
        0x7f0200c2
        0x7f0200c1
        0x7f0200c3
        0x7f0200bf
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NotificationMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I

    return v0
.end method

.method static synthetic access$510(Lcom/android/phone/NotificationMgr;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I

    return v0
.end method

.method static synthetic access$512(Lcom/android/phone/NotificationMgr;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/NotificationMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mMissedCallSetting:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/NotificationMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/NotificationMgr;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/NotificationMgr;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;
    .param p1, "x1"    # Landroid/media/Ringtone;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method private cancelMute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 852
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 854
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 856
    :cond_0
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 2

    .prologue
    .line 1219
    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1221
    return-void
.end method

.method private cancelNetworkSelection(I)V
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 1715
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 1716
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1717
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/android/phone/NotificationMgr;->SELECTED_OPERATOR_FAIL_NOTIFICATION_GEMINI:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1720
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNetworkSelection(). index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1722
    return-void
.end method

.method private cancelSpeakerphone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 779
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 781
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 783
    :cond_0
    return-void
.end method

.method private createClearMissedCallsIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 753
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/ClearMissedCallsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 754
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.intent.CLEAR_MISSED_CALLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1582
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1583
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1584
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1588
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1588
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;
    .locals 4
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 214
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 218
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-direct {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 219
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-direct {v0}, Lcom/android/phone/NotificationMgr;->intCfiStatusMap()V

    .line 223
    :goto_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 221
    :cond_0
    const-string v0, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initMtk(Lcom/android/phone/PhoneGlobals;)V
    .locals 1
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 1283
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1284
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1285
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1287
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->registerReceiverForNetworkSetting()V

    .line 1288
    return-void
.end method

.method private intCfiStatusMap()V
    .locals 7

    .prologue
    .line 1303
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 1304
    .local v3, "slotID":I
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mCfiStatusMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1306
    .end local v3    # "slotID":I
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1273
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void
.end method

.method private notifyMute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 845
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 847
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 849
    :cond_0
    return-void
.end method

.method private notifySpeakerphone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 772
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 774
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 776
    :cond_0
    return-void
.end method

.method private registerReceiverForNetworkSetting()V
    .locals 3

    .prologue
    .line 1701
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1702
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1703
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.notifysim1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1704
    const-string v1, "com.android.notifysim2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1705
    const-string v1, "com.android.notifysim3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1706
    const-string v1, "com.android.notifysim4"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1707
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1709
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private resetNewCallsFlag()V
    .locals 6

    .prologue
    .line 1743
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1744
    .local v1, "where":Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1745
    const-string v2, " AND new=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1748
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "new"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1750
    return-void
.end method

.method private setupMissedCallRepeatReminder()V
    .locals 7

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->getMissedCallNotifyTimes()I

    move-result v1

    .line 1504
    .local v1, "notifyTimes":I
    if-gtz v1, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1507
    :cond_0
    const-class v3, Lcom/android/phone/NotificationMgr;

    monitor-enter v3

    .line 1508
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.phone.ACTION_NOTIFY_MISSED_CALL"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1509
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mReceiverRegistered:Z

    .line 1510
    iput v1, p0, Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I

    .line 1511
    iput v1, p0, Lcom/android/phone/NotificationMgr;->mMissedCallSetting:I

    .line 1512
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1514
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1515
    .local v0, "alarm":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/phone/NotificationMgr;->getMissedCallNotifyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1512
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .locals 9
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showNetworkSelection("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1190
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0b02d9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1192
    .local v4, "titleText":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0b02da

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "expandedText":Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1196
    .local v2, "notification":Landroid/app/Notification;
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1197
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 1198
    const/4 v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1199
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1202
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10200000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1206
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.settings.NetworkSetting"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1208
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1210
    .local v3, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1212
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1213
    return-void
.end method

.method private updateCfiForAllSlots()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1309
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1310
    sget-object v8, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_NOTIFICATION_GEMINI:[I

    aget v4, v8, v1

    .line 1311
    .local v4, "notifyId":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v8

    aget v7, v8, v1

    .line 1312
    .local v7, "slotId":I
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v8, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1313
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mCfiStatusMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1332
    const v5, 0x1080085

    .line 1333
    .local v5, "resId":I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v6

    .line 1334
    .local v6, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v6, :cond_0

    iget v8, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v8, :cond_0

    iget v8, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mCfiIconMap:[I

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 1335
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mCfiIconMap:[I

    iget v9, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v5, v8, v9

    .line 1337
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v8, 0x14000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1341
    const-string v8, "com.android.phone"

    const-class v9, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    const-string v8, "simId"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1346
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1347
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v11, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0457

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0b045a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1354
    .local v3, "notification":Landroid/app/Notification;
    iget v8, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v3, Landroid/app/Notification;->flags:I

    .line 1357
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimIdBySlotId(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v3, Landroid/app/Notification;->simId:J

    .line 1358
    const/4 v8, 0x3

    iput v8, v3, Landroid/app/Notification;->simInfoType:I

    .line 1359
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v8, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1309
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v5    # "resId":I
    .end local v6    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1362
    .end local v4    # "notifyId":I
    .end local v7    # "slotId":I
    :cond_2
    return-void
.end method

.method private updateNotificationsAtStartup()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 345
    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 348
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 351
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .local v8, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v0, "- start call log query..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method


# virtual methods
.method cancelCallInProgressNotifications()V
    .locals 1

    .prologue
    .line 887
    const-string v0, "cancelCallInProgressNotifications()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 888
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 889
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 890
    return-void
.end method

.method public cancelCallRecord()V
    .locals 2

    .prologue
    .line 1453
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingCallRcordIcon:Z

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "call_record"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingCallRcordIcon:Z

    .line 1457
    :cond_0
    return-void
.end method

.method cancelMissedCallNotification()V
    .locals 3

    .prologue
    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 766
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "missed_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 768
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallRepeatReminder()V

    .line 769
    return-void
.end method

.method protected cancelMissedCallRepeatReminder()V
    .locals 4

    .prologue
    .line 1520
    const-class v2, Lcom/android/phone/NotificationMgr;

    monitor-enter v2

    .line 1521
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1523
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mReceiverRegistered:Z

    .line 1526
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I

    .line 1527
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mMissedCallSetting:I

    .line 1529
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    .line 1530
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1531
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 1533
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;

    .line 1535
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1538
    .local v0, "alarm":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->getMissedCallNotifyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1539
    return-void

    .line 1535
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cancelVoiceCommandNotification()V
    .locals 2

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1739
    return-void
.end method

.method protected configureLedNotification(Landroid/app/Notification;)V
    .locals 5
    .param p1, "note"    # Landroid/app/Notification;

    .prologue
    .line 598
    iget v2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/Notification;->flags:I

    .line 599
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_breathing_light_color"

    sget v4, Landroid/provider/MiuiSettings$System;->CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/app/Notification;->ledARGB:I

    .line 602
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_breathing_light_freq"

    sget v4, Landroid/provider/MiuiSettings$System;->CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 605
    .local v0, "freq":I
    invoke-static {v0}, Landroid/app/MiuiNotification;->getLedPwmOffOn(I)[I

    move-result-object v1

    .line 606
    .local v1, "offOn":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p1, Landroid/app/Notification;->ledOffMS:I

    .line 607
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p1, Landroid/app/Notification;->ledOnMS:I

    .line 608
    return-void
.end method

.method public getMissedCallCount()I
    .locals 1

    .prologue
    .line 1629
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method protected getMissedCallNotifyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1548
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.ACTION_NOTIFY_MISSED_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1551
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method protected getMissedCallNotifyTimes()I
    .locals 3

    .prologue
    .line 1542
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1543
    .local v0, "sharedPreference":Landroid/content/SharedPreferences;
    const-string v1, "button_missed_call_notify_times"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1179
    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1181
    return-void
.end method

.method public notifyCallRecord()V
    .locals 6

    .prologue
    .line 1441
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingCallRcordIcon:Z

    if-nez v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "call_record"

    const v2, 0x7f0200bb

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03fa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingCallRcordIcon:Z

    .line 1447
    :cond_0
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JI)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p5, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p6, "date"    # J
    .param p8, "callVideo"    # I

    .prologue
    .line 633
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/phone/PhoneGlobals;->createPendingCallLogIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 639
    .local v7, "pendingCallLogIntent":Landroid/app/PendingIntent;
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v10, :cond_1

    .line 640
    const-string v10, "notifyMissedCall: non-voice-capable device, not posting notification"

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 749
    .end local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 645
    .restart local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyMissedCall(). name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", label: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", photo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", photoIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", date: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 656
    iget v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 660
    if-eqz p1, :cond_4

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 661
    move-object/from16 v4, p1

    .line 679
    .local v4, "callName":Ljava/lang/String;
    :cond_2
    :goto_1
    iget v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 680
    move-object v9, v4

    .line 681
    .local v9, "titleText":Ljava/lang/String;
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mFirstMissedCallNumber:Ljava/lang/String;

    .line 682
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/NotificationMgr;->mIsOneMissedCallNumber:Z

    .line 696
    :goto_2
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b02d0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, "expandedText":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v3, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 700
    .local v3, "builder":Landroid/app/Notification$Builder;
    const v10, 0x108007f

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0b02d1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->createClearMissedCallsIntent()Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 714
    iget v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0186

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0185

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 718
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add actions with the number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 722
    const v10, 0x7f0200bc

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0b02dc

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/phone/PhoneGlobals;->getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v3, v10, v11, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 726
    const v10, 0x7f020079

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0b02dd

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/phone/PhoneGlobals;->getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v3, v10, v11, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 730
    if-eqz p5, :cond_9

    .line 731
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 741
    .end local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_3
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 742
    .local v6, "notification":Landroid/app/Notification;
    iget-object v10, v6, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    iget v11, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-virtual {v10, v11}, Landroid/app/MiuiNotification;->setMessageCount(I)V

    .line 743
    invoke-virtual {p0, v6}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 744
    iget v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    if-lez v10, :cond_0

    .line 745
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v11, "missed_call"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 746
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallRepeatReminder()V

    .line 747
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->setupMissedCallRepeatReminder()V

    goto/16 :goto_0

    .line 662
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "callName":Ljava/lang/String;
    .end local v5    # "expandedText":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v9    # "titleText":Ljava/lang/String;
    .restart local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 663
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 666
    .local v2, "bidiFormatter":Landroid/text/BidiFormatter;
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v10}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v4

    .line 667
    .restart local v4    # "callName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 668
    .local v8, "telocation":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 669
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 673
    .end local v2    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v4    # "callName":Ljava/lang/String;
    .end local v8    # "telocation":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0185

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "callName":Ljava/lang/String;
    goto/16 :goto_1

    .line 684
    :cond_6
    iget-boolean v10, p0, Lcom/android/phone/NotificationMgr;->mIsOneMissedCallNumber:Z

    if-nez v10, :cond_7

    .line 685
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b02cf

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "titleText":Ljava/lang/String;
    goto/16 :goto_2

    .line 687
    .end local v9    # "titleText":Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mFirstMissedCallNumber:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 688
    move-object v9, v4

    .restart local v9    # "titleText":Ljava/lang/String;
    goto/16 :goto_2

    .line 690
    .end local v9    # "titleText":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/NotificationMgr;->mIsOneMissedCallNumber:Z

    .line 691
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b02cf

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "titleText":Ljava/lang/String;
    goto/16 :goto_2

    .line 732
    .restart local v3    # "builder":Landroid/app/Notification$Builder;
    .restart local v5    # "expandedText":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p4

    instance-of v10, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_3

    .line 733
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .end local p4    # "photo":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 737
    .restart local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Suppress actions. number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", missedCalls: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "notifyId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1269
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1270
    return-void
.end method

.method public postTransientNotification(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 1371
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 1372
    return-void
.end method

.method public removeCipherIndicationNotification()V
    .locals 2

    .prologue
    .line 1427
    const-string v0, "NotificationMgr"

    const-string v1, "[removeCipherIndicationNotification]"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->mIsAlreadyShowCI:Z

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1430
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/NotificationMgr;->mIsAlreadyShowCI:Z

    .line 1435
    :goto_0
    return-void

    .line 1432
    :cond_0
    const-string v0, "NotificationMgr"

    const-string v1, "[removeCipherIndicationNotification], the notification isn\'t shown, so no need to remove"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method resetMissedCallNumber()V
    .locals 1

    .prologue
    .line 1755
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 1756
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->resetNewCallsFlag()V

    .line 1757
    return-void
.end method

.method public showCipherIndicationNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1403
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020044

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1407
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0128

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0129

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1414
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1415
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1416
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1418
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1419
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1420
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1421
    return-void
.end method

.method showDataDisconnectedRoaming(I)V
    .locals 7
    .param p1, "simId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1147
    const-string v4, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1148
    const/4 v2, 0x0

    .line 1155
    .local v2, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1161
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b01f2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1163
    .local v1, "contentText":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1164
    .local v0, "builder":Landroid/app/Notification$Builder;
    const v4, 0x108008a

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1165
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b01ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1166
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1167
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1169
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1172
    .local v3, "notif":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1173
    return-void
.end method

.method public showMissedCallNotification(Lcom/android/phone/NotificationMgr$NotificationInfo;)V
    .locals 8
    .param p1, "n"    # Lcom/android/phone/NotificationMgr$NotificationInfo;

    .prologue
    const/4 v5, 0x0

    .line 369
    const-string v0, "updateMissedCallNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 373
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x2

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/phone/NotificationMgr$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v7, "number"

    move-object v2, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public showNetworkModeSelectionNeedChange()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1560
    const-string v4, "showNetworkModeSelectionNeedChange()"

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1561
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1563
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b01fb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1565
    .local v1, "contentText":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1566
    .local v0, "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f030001

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1567
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b01fa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1568
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1569
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1571
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1573
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1574
    iget-object v4, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 1575
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1576
    invoke-virtual {p0, v3}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 1577
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1578
    return-void
.end method

.method public showVoiceCommandNotification()V
    .locals 4

    .prologue
    .line 1725
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0111

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0112

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x2020131

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1734
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1735
    return-void
.end method

.method public updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "success"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1460
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1461
    .local v8, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "call_rec"

    invoke-static {v1, v2}, Lmiui/provider/Recordings;->getNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v10, v1, 0x1

    .line 1462
    .local v10, "cntUnread":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1464
    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.RecordPreviewActivity"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    const/high16 v1, 0x10000000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1466
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    const-string v1, "extra_rectype"

    const-string v2, "call_rec"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
    const-string v1, "extra_dirpath"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1470
    if-eqz p1, :cond_0

    .line 1471
    const/4 v1, 0x1

    if-le v10, v1, :cond_2

    .line 1472
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0003

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v10, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1476
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "call_rec"

    const/4 v3, 0x0

    invoke-static {v1, v2, v10, v3}, Lmiui/provider/Recordings;->setNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 1483
    :cond_0
    :goto_1
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0200bb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    const v3, 0x7f0b0405

    :goto_2
    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, p2

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1489
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "com.android.soundrecorder.png"

    invoke-static {v1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    .line 1490
    .local v9, "CallRecordIcon":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1491
    iget-object v1, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 1492
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1493
    if-eqz p1, :cond_1

    .line 1494
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.soundrecorder.action.CANCEL_NOTIFICATION"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1495
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v1, "extra_rectype"

    const-string v2, "call_rec"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1498
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 1499
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_5

    const/16 v1, 0x2710

    :goto_3
    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1500
    return-void

    .line 1474
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v9    # "CallRecordIcon":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callrec://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 1479
    :cond_3
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1483
    :cond_4
    const v3, 0x7f0b0406

    goto :goto_2

    .line 1499
    .restart local v0    # "notification":Landroid/app/Notification;
    .restart local v9    # "CallRecordIcon":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v1, v3

    goto :goto_3
.end method

.method updateCfi(ZI)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCfi(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1082
    const/4 v1, 0x6

    .line 1083
    .local v1, "notifyId":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p2, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 1084
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1085
    sget-object v2, Lcom/android/phone/NotificationMgr;->CALL_FORWARD_NOTIFICATION_GEMINI:[I

    aget v1, v2, v0

    .line 1086
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mCfiStatusMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->updateCfiForAllSlots()V

    .line 1139
    return-void
.end method

.method public updateCipherIndicationNotification(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 1389
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCipherIndicationNotification], type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAlreadyShowCI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/NotificationMgr;->mIsAlreadyShowCI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    if-nez p1, :cond_1

    sget-boolean v0, Lcom/android/phone/NotificationMgr;->mIsAlreadyShowCI:Z

    if-nez v0, :cond_1

    .line 1392
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showCipherIndicationNotification()V

    .line 1393
    sput-boolean v3, Lcom/android/phone/NotificationMgr;->mIsAlreadyShowCI:Z

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    if-ne p1, v3, :cond_0

    .line 1395
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->removeCipherIndicationNotification()V

    goto :goto_0
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 873
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    .line 878
    :goto_0
    return-void

    .line 875
    :cond_0
    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 876
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(ZI)V
    .locals 13
    .param p1, "visible"    # Z
    .param p2, "slotId"    # I

    .prologue
    const/4 v12, -0x1

    .line 898
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMwi(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slotId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 900
    const/4 v2, 0x0

    .line 901
    .local v2, "notification":Landroid/app/Notification;
    const/4 v1, 0x0

    .line 902
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 903
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v9

    invoke-static {p2, v9}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v7

    .line 905
    .local v7, "slotIdx":I
    if-eqz p1, :cond_5

    .line 906
    const v6, 0x108007e

    .line 920
    .local v6, "resId":I
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0023

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, "notificationTitle":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v9, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getVoiceMailNumber(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;

    move-result-object v8

    .line 925
    .local v8, "vmNumber":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- got vm number: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 942
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v9, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getIccRecordsLoaded(Lcom/android/internal/telephony/Phone;I)Z

    move-result v0

    .line 944
    .local v0, "iccRecordloaded":Z
    if-nez v8, :cond_2

    if-nez v0, :cond_2

    .line 945
    const-string v9, "- Null vm number: SIM records not loaded (yet)..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 958
    iget v9, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    add-int/lit8 v10, v9, -0x1

    iput v10, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v9, :cond_1

    .line 959
    const-string v9, "  - Retrying in 10000 msec..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 960
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v10, v11, p2}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(JI)V

    .line 1072
    .end local v0    # "iccRecordloaded":Z
    .end local v4    # "notificationTitle":Ljava/lang/String;
    .end local v6    # "resId":I
    .end local v8    # "vmNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 963
    .restart local v0    # "iccRecordloaded":Z
    .restart local v4    # "notificationTitle":Ljava/lang/String;
    .restart local v6    # "resId":I
    .restart local v8    # "vmNumber":Ljava/lang/String;
    :cond_1
    const-string v9, "NotificationMgr"

    const-string v10, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_2
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0b02d5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "notificationText":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 992
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 993
    const-string v9, "voicemail_number"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    :goto_1
    if-ltz v7, :cond_3

    .line 999
    sget-object v9, Lcom/android/phone/NotificationMgr;->VOICE_MAIL_ACTION_GEMINI:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    :cond_3
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.phone"

    const-string v11, "com.mediatek.phone.VoicemailDialog"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1008
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMwi(): new intent CALL, simId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1009
    const-string v9, "simId"

    invoke-virtual {v1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1042
    new-instance v2, Landroid/app/Notification;

    .end local v2    # "notification":Landroid/app/Notification;
    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v2, v6, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1049
    .restart local v2    # "notification":Landroid/app/Notification;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9, v4, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1056
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimIdBySlotId(I)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v2, Landroid/app/Notification;->simId:J

    .line 1057
    const/4 v9, 0x3

    iput v9, v2, Landroid/app/Notification;->simInfoType:I

    .line 1058
    iget v9, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v2, Landroid/app/Notification;->defaults:I

    .line 1059
    iget v9, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v2, Landroid/app/Notification;->defaults:I

    .line 1061
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 1062
    invoke-virtual {p0, v2}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 1064
    if-eq v7, v12, :cond_0

    .line 1065
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v10, Lcom/android/phone/NotificationMgr;->VOICEMAIL_NOTIFICATION_GEMINI:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 995
    :cond_4
    const-string v9, "voicemail_number"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1068
    .end local v0    # "iccRecordloaded":Z
    .end local v3    # "notificationText":Ljava/lang/String;
    .end local v4    # "notificationTitle":Ljava/lang/String;
    .end local v6    # "resId":I
    .end local v8    # "vmNumber":Ljava/lang/String;
    :cond_5
    if-eq v7, v12, :cond_0

    .line 1069
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v10, Lcom/android/phone/NotificationMgr;->VOICEMAIL_NOTIFICATION_GEMINI:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method updateNetworkSelection(II)V
    .locals 6
    .param p1, "serviceState"    # I
    .param p2, "simId"    # I

    .prologue
    const/4 v5, 0x1

    .line 1230
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1234
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1236
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v3

    invoke-static {p2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 1238
    .local v0, "index":I
    const-string v3, "network_selection_name_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, "networkSelection":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1241
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1245
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkSelection()...state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1248
    if-ne p1, v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1250
    iget-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v3, :cond_1

    .line 1251
    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1252
    iput-boolean v5, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1261
    .end local v0    # "index":I
    .end local v1    # "networkSelection":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 1255
    .restart local v0    # "index":I
    .restart local v1    # "networkSelection":Ljava/lang/String;
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    iget-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v3, :cond_1

    .line 1256
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1257
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_0
.end method

.method public updateSpeakerNotification()V
    .locals 5

    .prologue
    .line 797
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 799
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 805
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 809
    .local v1, "showNotification":Z
    :goto_0
    if-eqz v1, :cond_1

    const-string v3, "updateSpeakerNotification: speaker ON"

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 814
    return-void

    .line 805
    .end local v1    # "showNotification":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 809
    .restart local v1    # "showNotification":Z
    :cond_1
    const-string v3, "updateSpeakerNotification: speaker OFF (or not offhook)"

    goto :goto_1
.end method

.method public updateSpeakerNotification(Z)V
    .locals 2
    .param p1, "showNotification"    # Z

    .prologue
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSpeakerNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 837
    if-eqz p1, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method

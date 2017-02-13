.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$8;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;,
        Lcom/android/phone/PhoneUtils$FgRingCalls;
    }
.end annotation


# static fields
.field private static final ACTIVE_AND_HOLD_IN_SAME_PHONE:I = 0xd

.field private static final ACTIVE_AND_TWO_HOLD:I = 0xf

.field private static final ACTIVE_CALL_IS_NOT_EXIST:I = 0xb

.field private static final ACTIVE_OR_HOLD_NOT_IN_SAME_PHONE:I = 0xe

.field private static final ACTIVE_OUTGOING_CALL:I = 0x10

.field private static final ACTIVE_VOICE_CALL_ONLY_ONE:I = 0xc

.field private static final ACTIVE_VT_CALL:I = 0xa

.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field public static final AUDIO_IDLE:I = 0x0

.field public static final AUDIO_OFFHOOK:I = 0x2

.field public static final AUDIO_RINGING:I = 0x1

.field public static final CALL_STATUS_DIALED:I = 0x0

.field public static final CALL_STATUS_DIALED_MMI:I = 0x1

.field public static final CALL_STATUS_FAILED:I = 0x2

.field private static final CNAP_SPECIAL_CASE_NO:I = -0x1

.field private static final DBG:Z = true

.field private static final DBG_SETAUDIOMODE_STACK:Z = false

.field private static final DISCONNECTING_POLLING_INTERVAL_MS:I = 0xc8

.field private static final DISCONNECTING_POLLING_TIMES_LIMIT:I = 0x8

.field private static final DUALMIC_MODE:Ljava/lang/String; = "Enable_Dual_Mic_Setting"

.field private static final DUALTALK_SELECT_CALL_DIALOG:I = 0x0

.field private static final EXTRA_STARTING_WINDOW_LABEL:Ljava/lang/String; = ":miui:starting_window_label"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneUtils"

.field static final MAX_USSD_LEN:I = 0xa0

.field private static final MIN_LENGTH:I = 0x6

.field static final MIN_USSD_LEN:I = 0x1

.field private static final MIN_WIDTH:I = 0x10e

.field private static final MSG_CHECK_STATUS_ANSWERCALL:I = 0x64

.field public static final PHONE_SPEECH_INFO:I = -0x2

.field public static final PHONE_SPEECH_INFO2:I = -0x66

.field public static final PHONE_SPEECH_INFO3:I = -0xca

.field public static final PHONE_SPEECH_INFO4:I = -0x12e

.field public static final PHONE_SPEECH_INFO_GEMINI:[I

.field private static final PHONE_STATE_CHANGED:I = -0x1

.field private static final QUERY_TOKEN:I = -0x1

.field private static final REPEATED_BLOCKED_CALLS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPEATED_CALLS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPEATED_CALL_DURATION:J = 0x2bf20L

.field public static final SUFFIX_OF_EMERGENCY_NUMBER:Ljava/lang/String; = "111"

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field private static mLastClickActionTime:J

.field private static sAudioBehaviourState:I

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurCode:Lcom/android/internal/telephony/MmiCode;

.field private static sDialog:Landroid/app/Dialog;

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsOpen:Z

.field private static sIsSpeakerEnabled:Z

.field private static sMmiFinished:Z

.field public static sNoNeedStartUssdActivity:Z

.field private static sPhoneSwapStatus:Z

.field private static sTtyMode:Ljava/lang/String;

.field public static sUssdActivity:Lcom/mediatek/phone/UssdAlertActivity;

.field private static sUssdDialog:Lmiui/app/AlertDialog;

.field private static sUssdMsg:Ljava/lang/StringBuilder;

.field private static sVoipSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 148
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 151
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 173
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 188
    sput-object v5, Lcom/android/phone/PhoneUtils;->sUssdDialog:Lmiui/app/AlertDialog;

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v3, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    .line 2173
    new-instance v3, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$4;-><init>()V

    sput-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 3243
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 3245
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 3246
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 3438
    sput v2, Lcom/android/phone/PhoneUtils;->sAudioBehaviourState:I

    .line 3457
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sPhoneSwapStatus:Z

    .line 3469
    const-string v1, "tty_off"

    sput-object v1, Lcom/android/phone/PhoneUtils;->sTtyMode:Ljava/lang/String;

    .line 3470
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsOpen:Z

    .line 3519
    sput-object v5, Lcom/android/phone/PhoneUtils;->sDialog:Landroid/app/Dialog;

    .line 3520
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sMmiFinished:Z

    .line 3522
    sput-object v5, Lcom/android/phone/PhoneUtils;->sUssdActivity:Lcom/mediatek/phone/UssdAlertActivity;

    .line 3523
    sput-object v5, Lcom/android/phone/PhoneUtils;->sCurCode:Lcom/android/internal/telephony/MmiCode;

    .line 4117
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/phone/PhoneUtils;->PHONE_SPEECH_INFO_GEMINI:[I

    .line 5255
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/android/phone/PhoneUtils;->mLastClickActionTime:J

    .line 5643
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sNoNeedStartUssdActivity:Z

    .line 5749
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/phone/PhoneUtils;->REPEATED_CALLS:Ljava/util/HashMap;

    .line 5754
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/phone/PhoneUtils;->REPEATED_BLOCKED_CALLS:Ljava/util/HashMap;

    return-void

    :cond_0
    move v1, v2

    .line 3246
    goto :goto_0

    .line 4117
    nop

    :array_0
    .array-data 4
        -0x2
        -0x66
        -0xca
        -0x12e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method public static acceptVtCallWithVoiceOnly(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p0, "callManager"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 5031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptVtCallWithVoiceOnly() ! ringingCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5036
    :try_start_0
    const-string v1, "acceptVtCallWithVoiceOnly() : call CallManager.acceptVtCallWithVoiceOnly() start "

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5038
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->acceptVtCallWithVoiceOnly(Lcom/android/internal/telephony/Call;)V

    .line 5040
    const-string v1, "acceptVtCallWithVoiceOnly() : call CallManager.acceptVtCallWithVoiceOnly() end "

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5045
    :goto_0
    return-void

    .line 5042
    :catch_0
    move-exception v0

    .line 5043
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->handleMessageMtk(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/phone/PhoneUtils;->REPEATED_CALLS:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/phone/PhoneUtils;->REPEATED_BLOCKED_CALLS:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/phone/PhoneUtils$ConnectionHandler;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/Phone;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$902(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 121
    sput-wide p0, Lcom/android/phone/PhoneUtils;->mLastClickActionTime:J

    return-wide p0
.end method

.method private static activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 3153
    const-string v5, "activateSpeakerIfDocked()..."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3155
    const/4 v0, 0x0

    .line 3156
    .local v0, "activated":Z
    sget v5, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v5, :cond_0

    .line 3157
    const-string v5, "activateSpeakerIfDocked(): In a dock -> may need to turn on speaker."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3158
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 3161
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v3

    .line 3162
    .local v3, "btManager":Lcom/android/phone/BluetoothManager;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v4

    .line 3163
    .local v4, "wiredHeadset":Lcom/android/phone/WiredHeadsetManager;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getAudioRouter()Lcom/android/phone/AudioRouter;

    move-result-object v2

    .line 3165
    .local v2, "audioRouter":Lcom/android/phone/AudioRouter;
    invoke-virtual {v4}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3166
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/phone/AudioRouter;->setSpeaker(Z)V

    .line 3167
    const/4 v0, 0x1

    .line 3170
    .end local v1    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v2    # "audioRouter":Lcom/android/phone/AudioRouter;
    .end local v3    # "btManager":Lcom/android/phone/BluetoothManager;
    .end local v4    # "wiredHeadset":Lcom/android/phone/WiredHeadsetManager;
    :cond_0
    return v0
.end method

.method public static addWindowLable(Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 5995
    const-string v0, ":miui:starting_window_label"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 5996
    return-void
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 717
    const-string v3, "answerAndEndActive()..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 729
    .local v1, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 741
    .local v2, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 742
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 743
    const-string v3, "PhoneUtils"

    const-string v4, "end active call failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v3, 0x0

    .line 761
    :goto_0
    return v3

    .line 755
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v1, v2, :cond_1

    if-ne v1, v2, :cond_2

    instance-of v3, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v3, :cond_2

    .line 757
    :cond_1
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0

    .line 761
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static answerAndEndHolding(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 692
    const-string v0, "end holding & answer waiting: 1"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const-string v0, "PhoneUtils"

    const-string v1, "end holding failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    .line 698
    :cond_0
    const-string v0, "end holding & answer waiting: 2"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 699
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 15
    .param p0, "ringingCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v14, 0x2

    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 322
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "answerCall("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 324
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v7, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 328
    .local v7, "notifier":Lcom/android/phone/CallNotifier;
    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 331
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 334
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    if-ne v12, v14, :cond_3

    .line 335
    .local v9, "phoneIsCdma":Z
    :goto_0
    const/4 v0, 0x0

    .line 336
    .local v0, "answered":Z
    const/4 v3, 0x0

    .line 338
    .local v3, "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    if-eqz v9, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_0

    .line 341
    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 345
    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 346
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "answerCall: call state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 348
    if-eqz v9, :cond_1

    .line 349
    :try_start_0
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_4

    .line 353
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 379
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    .line 382
    .local v6, "isRealIncomingCall":Z
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    .line 383
    const/4 v0, 0x1

    .line 389
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 392
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    .line 394
    .local v10, "speakerActivated":Z
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v2

    .line 395
    .local v2, "btManager":Lcom/android/phone/BluetoothManager;
    const/4 v11, 0x1

    invoke-static {v1, v11}, Lcom/android/phone/PhoneUtils;->forceSpeakerOn(Landroid/content/Context;Z)Z

    move-result v11

    if-nez v11, :cond_2

    .line 406
    if-eqz v6, :cond_2

    if-nez v10, :cond_2

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {p0}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 410
    const-string v11, "PhoneUtils"

    const-string v12, "Forcing speaker off due to new incoming call..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 433
    .end local v2    # "btManager":Lcom/android/phone/BluetoothManager;
    .end local v6    # "isRealIncomingCall":Z
    .end local v10    # "speakerActivated":Z
    :cond_2
    :goto_2
    return v0

    .end local v0    # "answered":Z
    .end local v3    # "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    .end local v9    # "phoneIsCdma":Z
    :cond_3
    move v9, v11

    .line 334
    goto/16 :goto_0

    .line 358
    .restart local v0    # "answered":Z
    .restart local v3    # "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    .restart local v9    # "phoneIsCdma":Z
    :cond_4
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 363
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 368
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 369
    if-eqz v3, :cond_1

    .line 371
    const/4 v11, 0x1

    :try_start_1
    invoke-interface {v3, v11}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSetSecondCallState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 372
    :catch_0
    move-exception v4

    .line 373
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v11, "PhoneUtils"

    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 416
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 417
    .local v5, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "answerCall: caught "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    if-eqz v9, :cond_2

    .line 421
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v12, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 423
    if-eqz v3, :cond_2

    .line 425
    const/4 v11, 0x0

    :try_start_3
    invoke-interface {v3, v11}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSetSecondCallState(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 426
    :catch_2
    move-exception v4

    .line 427
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v11, "PhoneUtils"

    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 2684
    packed-switch p0, :pswitch_data_0

    .line 2690
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2685
    :pswitch_0
    const-string v0, "MODE_INVALID"

    goto :goto_0

    .line 2686
    :pswitch_1
    const-string v0, "MODE_CURRENT"

    goto :goto_0

    .line 2687
    :pswitch_2
    const-string v0, "MODE_NORMAL"

    goto :goto_0

    .line 2688
    :pswitch_3
    const-string v0, "MODE_RINGTONE"

    goto :goto_0

    .line 2689
    :pswitch_4
    const-string v0, "MODE_IN_CALL"

    goto :goto_0

    .line 2684
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static autoUpdateUssdReponseUi(Landroid/view/View;)V
    .locals 0
    .param p0, "dialogView"    # Landroid/view/View;

    .prologue
    .line 3530
    return-void
.end method

.method static cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 1573
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelMmiCodeExt, slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-static {p0, p1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPendingMmiCodes(Lcom/android/internal/telephony/Phone;I)Ljava/util/List;

    move-result-object v3

    .line 1576
    .local v3, "pendingMmis":Ljava/util/List;, "Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1577
    .local v1, "count":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelMmiCode: num pending MMIs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1579
    const/4 v0, 0x0

    .line 1580
    .local v0, "canceled":Z
    if-lez v1, :cond_0

    .line 1585
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 1586
    .local v2, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1587
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1588
    const/4 v0, 0x1

    .line 1591
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    :cond_0
    return v0
.end method

.method public static cancelUssdDialog()V
    .locals 1

    .prologue
    .line 3971
    sget-object v0, Lcom/android/phone/PhoneUtils;->sCurCode:Lcom/android/internal/telephony/MmiCode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->sCurCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3972
    sget-object v0, Lcom/android/phone/PhoneUtils;->sCurCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 3974
    :cond_0
    return-void
.end method

.method public static checkAndCopyPrivateExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 10
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 3794
    invoke-static {p0, v7}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v6

    invoke-static {p1, v6}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 3795
    const-string v6, "com.android.phone.extra.slot"

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3796
    .local v5, "slot":I
    if-eq v7, v5, :cond_0

    .line 3797
    const-string v6, "com.android.phone.extra.slot"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3805
    :cond_0
    const-string v6, "com.android.phone.ORIGINAL_SIM_ID"

    const-wide/16 v7, -0x5

    invoke-virtual {p0, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 3806
    .local v3, "simId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v6, v3

    if-eqz v6, :cond_1

    .line 3807
    const-string v6, "com.android.phone.ORIGINAL_SIM_ID"

    invoke-virtual {p1, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3809
    :cond_1
    const-string v6, "com.android.phone.IS_IPCALL"

    invoke-virtual {p0, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3810
    .local v2, "isIpCall":Z
    if-eqz v2, :cond_2

    .line 3811
    const-string v6, "com.android.phone.IS_IPCALL"

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3813
    :cond_2
    const-string v6, "follow_sim_management"

    invoke-virtual {p0, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3814
    .local v1, "isFollowSimManagement":Z
    if-eqz v1, :cond_3

    .line 3815
    const-string v6, "follow_sim_management"

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3818
    :cond_3
    const-string v6, "com.android.phone.IS_CONTACT"

    invoke-virtual {p0, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3819
    .local v0, "isContactNumber":Z
    if-eqz v0, :cond_4

    .line 3820
    const-string v6, "com.android.phone.IS_CONTACT"

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3823
    :cond_4
    return-void
.end method

.method static checkCallKeyForVT(I)V
    .locals 5
    .param p0, "phoneType"    # I

    .prologue
    .line 4442
    const/4 v1, 0x0

    .line 4451
    .local v1, "ignoreThisCallKey":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCallKey: ignoreThisCallKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4453
    if-nez v1, :cond_1

    .line 4455
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4456
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4458
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 4464
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-void

    .line 4460
    .restart local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b02e5

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 2
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    .line 3035
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3038
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, PRIVATE string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3039
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    .line 3048
    :goto_0
    return v0

    .line 3040
    :cond_1
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3044
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, UNKNOWN string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3045
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    goto :goto_0

    .line 3047
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, normal str. number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3048
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static cleanOutOfDatedBlockedCall()V
    .locals 9

    .prologue
    .line 5899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5900
    .local v0, "current":J
    sget-object v5, Lcom/android/phone/PhoneUtils;->REPEATED_BLOCKED_CALLS:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5901
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5902
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5903
    .local v3, "lastTime":J
    cmp-long v5, v3, v0

    if-lez v5, :cond_2

    .line 5904
    sget-object v5, Lcom/android/phone/PhoneUtils;->REPEATED_BLOCKED_CALLS:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 5910
    .end local v3    # "lastTime":J
    :cond_1
    return-void

    .line 5906
    .restart local v3    # "lastTime":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x2bf20

    sub-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 5907
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static cleanOutOfDatedCall()V
    .locals 9

    .prologue
    .line 5826
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5827
    .local v0, "current":J
    sget-object v5, Lcom/android/phone/PhoneUtils;->REPEATED_CALLS:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5828
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5829
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5830
    .local v3, "lastTime":J
    cmp-long v5, v3, v0

    if-lez v5, :cond_2

    .line 5831
    sget-object v5, Lcom/android/phone/PhoneUtils;->REPEATED_CALLS:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 5837
    .end local v3    # "lastTime":J
    :cond_1
    return-void

    .line 5833
    .restart local v3    # "lastTime":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x2bf20

    sub-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 5834
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static diskSpaceAvailable(J)Z
    .locals 4
    .param p0, "sizeAvailable"    # J

    .prologue
    .line 3909
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getDiskAvailableSize()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static diskSpaceAvailable(Ljava/lang/String;J)Z
    .locals 13
    .param p0, "defaultPath"    # Ljava/lang/String;
    .param p1, "sizeAvailable"    # J

    .prologue
    .line 3913
    if-nez p0, :cond_0

    .line 3914
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v9

    .line 3932
    :goto_0
    return v9

    .line 3916
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3919
    .local v5, "sdCardDirectory":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3920
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3929
    .local v6, "statfs":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 3930
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 3931
    .local v0, "availBlocks":J
    mul-long v7, v2, v0

    .line 3932
    .local v7, "totalSize":J
    sub-long v9, v7, p1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    .line 3922
    .end local v0    # "availBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "statfs":Landroid/os/StatFs;
    .end local v7    # "totalSize":J
    :cond_1
    :try_start_1
    const-string v9, "-----diskSpaceAvailable: sdCardDirectory is null----"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3923
    const/4 v9, 0x0

    goto :goto_0

    .line 3925
    :catch_0
    move-exception v4

    .line 3926
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "-----diskSpaceAvailable: IllegalArgumentException----"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3927
    const/4 v9, 0x0

    goto :goto_0

    .line 3932
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "availBlocks":J
    .restart local v2    # "blockSize":J
    .restart local v6    # "statfs":Landroid/os/StatFs;
    .restart local v7    # "totalSize":J
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static dismissMMIDialog()V
    .locals 1

    .prologue
    .line 3534
    sget-object v0, Lcom/android/phone/PhoneUtils;->sDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3535
    sget-object v0, Lcom/android/phone/PhoneUtils;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 3536
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtils;->sDialog:Landroid/app/Dialog;

    .line 3538
    :cond_0
    return-void
.end method

.method public static dismissUssdDialog()V
    .locals 1

    .prologue
    .line 3541
    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdActivity:Lcom/mediatek/phone/UssdAlertActivity;

    if-eqz v0, :cond_0

    .line 3542
    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdActivity:Lcom/mediatek/phone/UssdAlertActivity;

    invoke-virtual {v0}, Lcom/mediatek/phone/UssdAlertActivity;->dismiss()V

    .line 3543
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtils;->sUssdActivity:Lcom/mediatek/phone/UssdAlertActivity;

    .line 3545
    :cond_0
    return-void
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Lmiui/app/AlertDialog;)V
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;
    .param p3, "dismissCallbackMessage"    # Landroid/os/Message;
    .param p4, "previousAlert"    # Lmiui/app/AlertDialog;

    .prologue
    .line 1338
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->displayMMICompleteExt(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Lmiui/app/AlertDialog;I)V

    .line 1340
    return-void
.end method

.method static displayMMICompleteExt(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Lmiui/app/AlertDialog;I)V
    .locals 18
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;
    .param p3, "dismissCallbackMessage"    # Landroid/os/Message;
    .param p4, "previousAlert"    # Lmiui/app/AlertDialog;
    .param p5, "simId"    # I

    .prologue
    .line 1344
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 1346
    .local v2, "app":Lcom/android/phone/PhoneGlobals;
    const/4 v13, 0x0

    .line 1347
    .local v13, "title":I
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v11

    .line 1348
    .local v11, "state":Lcom/android/internal/telephony/MmiCode$State;
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1350
    .local v8, "mmiPhone":Lcom/android/internal/telephony/Phone;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "displayMMIComplete: state="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1352
    sget-object v14, Lcom/android/phone/PhoneUtils$8;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v11}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 1378
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected MmiCode state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1355
    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v12

    .line 1356
    .local v12, "text":Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "- using text from PENDING MMI message: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1381
    :goto_0
    if-eqz p4, :cond_0

    .line 1382
    invoke-virtual/range {p4 .. p4}, Lmiui/app/AlertDialog;->dismiss()V

    .line 1387
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v11, v14, :cond_3

    .line 1388
    const-string v14, "displaying PUK unblocking progress dialog."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1392
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1393
    .local v10, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v10, v13}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1394
    invoke-virtual {v10, v12}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1395
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1396
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1397
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d8

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1398
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 1401
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V

    .line 1405
    invoke-virtual {v2, v10}, Lcom/android/phone/PhoneGlobals;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 1556
    .end local v10    # "pd":Landroid/app/ProgressDialog;
    :cond_1
    :goto_1
    return-void

    .line 1359
    .end local v12    # "text":Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v12, 0x0

    .line 1360
    .restart local v12    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1362
    .end local v12    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1365
    const v13, 0x104006a

    .line 1366
    const v14, 0x7f0b019d

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1367
    .restart local v12    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1374
    .end local v12    # "text":Ljava/lang/CharSequence;
    :cond_2
    :pswitch_3
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v12

    .line 1375
    .restart local v12    # "text":Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "- using text from MMI message: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1410
    :cond_3
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1411
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/android/phone/PhoneGlobals;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 1416
    :cond_4
    sget-object v14, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v11, v14, :cond_7

    .line 1417
    const-string v14, "MMI code has finished running."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1419
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extended NW displayMMIInitiate ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1420
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-eqz v14, :cond_1

    .line 1427
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Lmiui/app/AlertDialog;

    if-nez v14, :cond_5

    .line 1428
    new-instance v14, Lmiui/app/AlertDialog$Builder;

    const v15, 0x7f0e001f

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v15, 0x7f0b018f

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v14

    new-instance v15, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v15}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    invoke-virtual {v14, v15}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v14

    sput-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Lmiui/app/AlertDialog;

    .line 1439
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v14}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d8

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1441
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v14}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 1444
    :cond_5
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_6

    .line 1445
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    const-string v16, "\n"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b01f6

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, "\n"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    :cond_6
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1451
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Lmiui/app/AlertDialog;

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lmiui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1452
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v14}, Lmiui/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1454
    :cond_7
    const-string v14, "USSD code has requested user input. Constructing input dialog."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1479
    const-string v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1481
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f040012

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1484
    .local v3, "dialogView":Landroid/view/View;
    const v14, 0x7f07002c

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1487
    .local v5, "inputText":Landroid/widget/EditText;
    new-instance v7, Lcom/android/phone/PhoneUtils$2;

    move-object/from16 v0, p2

    invoke-direct {v7, v5, v2, v0, v8}, Lcom/android/phone/PhoneUtils$2;-><init>(Landroid/widget/EditText;Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/MmiCode;Lcom/android/internal/telephony/Phone;)V

    .line 1518
    .local v7, "mUSSDDialogListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v14, Lmiui/app/AlertDialog$Builder;

    const v15, 0x7f0e001f

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v14, v12}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v3}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0b0196

    invoke-virtual {v14, v15, v7}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0b018c

    invoke-virtual {v14, v15, v7}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v9

    .line 1528
    .local v9, "newDialog":Lmiui/app/AlertDialog;
    new-instance v6, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v6, v8, v5, v9}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lmiui/app/AlertDialog;)V

    .line 1543
    .local v6, "mUSSDDialogInputListener":Landroid/view/View$OnKeyListener;
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1544
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 1547
    invoke-virtual {v9}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d8

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1549
    invoke-virtual {v9}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 1553
    invoke-virtual {v9}, Lmiui/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;
    .param p2, "buttonCallbackMessage"    # Landroid/os/Message;
    .param p3, "previousAlert"    # Landroid/app/Dialog;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayMMIInitiate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1266
    if-eqz p3, :cond_0

    .line 1267
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 1299
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 1301
    .local v0, "isCancelable":Z
    :goto_0
    if-nez v0, :cond_2

    .line 1302
    const-string v3, "not a USSD code, displaying status toast."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1303
    const v3, 0x7f0b0189

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1304
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1305
    const/4 v1, 0x0

    .line 1321
    .end local v2    # "text":Ljava/lang/CharSequence;
    :goto_1
    return-object v1

    .end local v0    # "isCancelable":Z
    :cond_1
    move v0, v4

    .line 1299
    goto :goto_0

    .line 1307
    .restart local v0    # "isCancelable":Z
    :cond_2
    const-string v5, "running USSD code, displaying indeterminate progress."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1310
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1311
    .local v1, "pd":Landroid/app/ProgressDialog;
    const v5, 0x7f0b018a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1312
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1313
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1314
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1316
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1319
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/ext/ExtensionManager;->getMmiCodeExtension()Lcom/mediatek/phone/ext/MmiCodeExtension;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2, v1}, Lcom/mediatek/phone/ext/MmiCodeExtension;->onMmiCodeStarted(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)V

    goto :goto_1
.end method

.method static displayMmiDialog(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I
    .param p3, "slot"    # I
    .param p4, "userInit"    # Z

    .prologue
    .line 3954
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sNoNeedStartUssdActivity:Z

    if-eqz v1, :cond_0

    .line 3955
    const-string v1, "PhoneUtils"

    const-string v2, "displayMmiDialog(), current MMICode is canceled, do nothing"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3956
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneUtils;->sNoNeedStartUssdActivity:Z

    .line 3968
    :goto_0
    return-void

    .line 3960
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3961
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/mediatek/phone/UssdAlertActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3962
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3963
    const-string v1, "ussd_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3964
    const-string v1, "ussd_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3965
    const-string v1, "slot_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3966
    const-string v1, "ussd_user_inititated"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3967
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static dumpCallManager()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3363
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v2, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3364
    .local v2, "cm":Lcom/android/internal/telephony/CallManager;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3368
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v5, "PhoneUtils"

    const-string v6, "############### dumpCallManager() ##############"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallManager: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3377
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3378
    .local v1, "call":Lcom/android/internal/telephony/Call;
    const-string v5, " - FG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "YES "

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3380
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3381
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3382
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3384
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3385
    const-string v5, " - BG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "YES "

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3387
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3388
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3389
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3391
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3392
    const-string v5, " - RINGING call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "YES "

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3394
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3395
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 3400
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_0

    .line 3401
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3404
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3405
    const-string v5, " - FG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3406
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3407
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3408
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3410
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3411
    const-string v5, " - BG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3412
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3413
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3414
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3415
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3416
    const-string v5, " - RINGING call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3417
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3418
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3419
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3378
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v5, "NO "

    goto/16 :goto_0

    .line 3385
    :cond_2
    const-string v5, "NO "

    goto/16 :goto_1

    .line 3392
    :cond_3
    const-string v5, "NO "

    goto/16 :goto_2

    .line 3423
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v5, "PhoneUtils"

    const-string v6, "############## END dumpCallManager() ###############"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    return-void
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 17
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 3281
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 3282
    .local v2, "app":Lcom/android/phone/PhoneGlobals;
    const-string v14, "PhoneUtils"

    const-string v15, "dumpCallState():"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    const-string v14, "PhoneUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "- Phone: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", name = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", state = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3288
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v6

    .line 3289
    .local v6, "geminiSlots":[I
    move-object v3, v6

    .local v3, "arr$":[I
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget v7, v3, v11

    .line 3290
    .local v7, "gs":I
    const-string v14, "PhoneUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "- Phone slot="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getState(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3295
    .end local v3    # "arr$":[I
    .end local v6    # "geminiSlots":[I
    .end local v7    # "gs":I
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v14, 0x80

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3297
    .local v4, "b":Ljava/lang/StringBuilder;
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3298
    .local v5, "call":Lcom/android/internal/telephony/Call;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3299
    const-string v14, "  - FG call: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3300
    const-string v14, " isAlive "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3301
    const-string v14, " isRinging "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3302
    const-string v14, " isDialing "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3303
    const-string v14, " isIdle "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3304
    const-string v14, " hasConnections "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3305
    const-string v14, "PhoneUtils"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3309
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3310
    const-string v14, "  - BG call: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3311
    const-string v14, " isAlive "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3312
    const-string v14, " isRinging "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3313
    const-string v14, " isDialing "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3314
    const-string v14, " isIdle "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3315
    const-string v14, " hasConnections "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3316
    const-string v14, "PhoneUtils"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3319
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3320
    const-string v14, "  - RINGING call: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3321
    const-string v14, " isAlive "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3322
    const-string v14, " isRinging "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3323
    const-string v14, " isDialing "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3324
    const-string v14, " isIdle "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3325
    const-string v14, " hasConnections "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3326
    const-string v14, "PhoneUtils"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v10, 0x1

    .line 3330
    .local v10, "hasRingingCall":Z
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v8, 0x1

    .line 3331
    .local v8, "hasActiveCall":Z
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v9, 0x1

    .line 3332
    .local v9, "hasHoldingCall":Z
    :goto_3
    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    .line 3333
    .local v1, "allLinesTaken":Z
    :goto_4
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3334
    const-string v14, "  - hasRingingCall "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3335
    const-string v14, " hasActiveCall "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3336
    const-string v14, " hasHoldingCall "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3337
    const-string v14, " allLinesTaken "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3338
    const-string v14, "PhoneUtils"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 3342
    iget-object v14, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v14, :cond_6

    .line 3343
    const-string v14, "PhoneUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  - CDMA call state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :cond_1
    :goto_5
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v13

    .line 3354
    .local v13, "ringing":Z
    const-string v14, "PhoneUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  - Ringer state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    return-void

    .line 3329
    .end local v1    # "allLinesTaken":Z
    .end local v8    # "hasActiveCall":Z
    .end local v9    # "hasHoldingCall":Z
    .end local v10    # "hasRingingCall":Z
    .end local v13    # "ringing":Z
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 3330
    .restart local v10    # "hasRingingCall":Z
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 3331
    .restart local v8    # "hasActiveCall":Z
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3332
    .restart local v9    # "hasHoldingCall":Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 3346
    .restart local v1    # "allLinesTaken":Z
    :cond_6
    const-string v14, "PhoneUtils"

    const-string v15, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static forceSpeakerOn(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkHeadSet"    # Z

    .prologue
    .line 4086
    const/4 v0, 0x0

    .line 4109
    .local v0, "forceSpeakerOn":Z
    const/4 v1, 0x0

    return v1
.end method

.method public static formatNumberWithIp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 5926
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v8, p1

    .line 5990
    .end local p1    # "number":Ljava/lang/String;
    .local v8, "number":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 5931
    .end local v8    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 5932
    .local v3, "currentAreaCode":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_2

    :cond_1
    move-object/from16 v8, p1

    .line 5934
    .end local p1    # "number":Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    goto :goto_0

    .line 5938
    .end local v8    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v12

    int-to-long v10, v12

    .line 5939
    .local v10, "simId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move/from16 v0, p2

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10, v11}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 5941
    .local v5, "ipPrefix":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v8, p1

    .line 5942
    .end local p1    # "number":Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    goto :goto_0

    .line 5944
    .end local v8    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v8, p1

    .line 5946
    .end local p1    # "number":Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    goto :goto_0

    .line 5949
    .end local v8    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_4
    invoke-static/range {p1 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v9

    .line 5950
    .local v9, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_8

    .line 5951
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 5952
    .local v2, "countryCode":Ljava/lang/String;
    invoke-virtual {v9, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5953
    .local v1, "areaCode":Ljava/lang/String;
    const-string v12, "0"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 5956
    .local v4, "id":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Landroid/provider/MiuiSettings$Telephony;->isAutoAddZeroPrefix(Landroid/content/ContentResolver;)Z

    move-result v6

    .line 5958
    .local v6, "isAddZeroPrefixEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpSupportLocalNum(Landroid/content/ContentResolver;)Z

    move-result v7

    .line 5962
    .local v7, "isSupportLocalNumbers":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    if-nez v7, :cond_6

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "86"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 5964
    :cond_6
    const-string v12, "+86"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 5966
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_7

    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v12

    if-eqz v12, :cond_a

    if-eqz v6, :cond_a

    .line 5967
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5988
    .end local v1    # "areaCode":Ljava/lang/String;
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "isAddZeroPrefixEnabled":Z
    .end local v7    # "isSupportLocalNumbers":Z
    :cond_8
    :goto_2
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    move-object/from16 v8, p1

    .line 5990
    .end local p1    # "number":Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .end local v8    # "number":Ljava/lang/String;
    .restart local v1    # "areaCode":Ljava/lang/String;
    .restart local v2    # "countryCode":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_9
    move-object v4, v3

    .line 5953
    goto :goto_1

    .line 5969
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v6    # "isAddZeroPrefixEnabled":Z
    .restart local v7    # "isSupportLocalNumbers":Z
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 5971
    :cond_b
    const-string v12, "0086"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 5973
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_c

    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v6, :cond_d

    .line 5974
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 5976
    :cond_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 5979
    :cond_e
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v12

    if-eqz v12, :cond_f

    if-eqz v6, :cond_f

    .line 5980
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 5983
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+"

    const-string v14, "00"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2
.end method

.method public static getActiveSimInfo()Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 3840
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3841
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getSlotNotIdle(Lcom/android/internal/telephony/Phone;)I

    move-result v6

    .line 3843
    .local v6, "slot":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 3844
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 3845
    .local v1, "geminiSlots":[I
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .line 3846
    .local v2, "gs":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPendingMmiCodes(Lcom/android/internal/telephony/Phone;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 3847
    move v6, v2

    .line 3852
    .end local v2    # "gs":I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimIndicator, running mmi, slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3868
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    :goto_1
    return-object v5

    .line 3845
    .restart local v0    # "arr$":[I
    .restart local v1    # "geminiSlots":[I
    .restart local v2    # "gs":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3856
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlots":[I
    .end local v2    # "gs":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v5

    .line 3857
    .local v5, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v5, :cond_1

    .line 3859
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimIndicator slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simInfo :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3860
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "color       = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getAdnUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 5685
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getAllCallsStateMsg(Lcom/android/internal/telephony/CallManager;)I
    .locals 7
    .param p0, "callManager"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v4, -0x1

    .line 5194
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    .line 5195
    .local v2, "dt":Lcom/mediatek/phone/DualTalkUtils;
    if-nez v2, :cond_1

    .line 5251
    :cond_0
    :goto_0
    return v4

    .line 5200
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5201
    const-string v4, "ACTIVE_OUTGOING_CALL"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5202
    const/16 v4, 0x10

    goto :goto_0

    .line 5206
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5207
    const-string v4, "ACTIVE_VT_CALL"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5208
    const/16 v4, 0xa

    goto :goto_0

    .line 5212
    :cond_3
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5213
    const-string v4, "ACTIVE_AND_TWO_HOLD"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5214
    const/16 v4, 0xf

    goto :goto_0

    .line 5218
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 5219
    .local v3, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5220
    .local v1, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-ne v5, v6, :cond_5

    .line 5223
    const-string v4, "ACTIVE_AND_HOLD_IN_SAME_PHONE"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5224
    const/16 v4, 0xd

    goto :goto_0

    .line 5228
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-ne v5, v6, :cond_7

    :cond_6
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5232
    :cond_7
    const-string v4, "ACTIVE_OR_HOLD_NOT_IN_SAME_PHONE"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5233
    const/16 v4, 0xe

    goto/16 :goto_0

    .line 5237
    :cond_8
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getAllActiveCalls()Ljava/util/List;

    move-result-object v0

    .line 5238
    .local v0, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getAllActiveCalls()Ljava/util/List;

    move-result-object v0

    .line 5239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activeCalls : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 5241
    const-string v4, "ACTIVE_CALL_IS_NOT_EXIST"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5242
    const/16 v4, 0xb

    goto/16 :goto_0

    .line 5246
    :cond_9
    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5247
    const-string v4, "ACTIVE_CALL_ONLY_ONE"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5248
    const/16 v4, 0xc

    goto/16 :goto_0
.end method

.method private static getAllPhonesInOrder()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5606
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v0, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 5607
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    .line 5608
    .local v3, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5609
    .local v4, "phonesInOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 5610
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5611
    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 5613
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5616
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v4
.end method

.method public static getAudioControlState()I
    .locals 1

    .prologue
    .line 3446
    sget v0, Lcom/android/phone/PhoneUtils;->sAudioBehaviourState:I

    return v0
.end method

.method public static getBackgroundCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5294
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5295
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5296
    .local v1, "firstBgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 5297
    .local v2, "secondBgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 5298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5300
    :cond_0
    if-eqz v2, :cond_1

    .line 5301
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5306
    .end local v1    # "firstBgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "secondBgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    .line 5304
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1850
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0

    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 3
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 4234
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4235
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 4236
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4239
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f0b02c8

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4241
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;
    .locals 3
    .param p0, "cause"    # Lcom/android/internal/telephony/Connection$DisconnectCause;

    .prologue
    .line 4248
    if-nez p0, :cond_0

    .line 4249
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4252
    const v0, 0x7f0b02c8

    .line 4324
    .local v0, "resID":I
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4254
    .end local v0    # "resID":I
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneUtils$8;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 4320
    const v0, 0x7f0b02c8

    .restart local v0    # "resID":I
    goto :goto_0
.end method

.method static getCallInfoName(I)Ljava/lang/String;
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 5500
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1717
    const/4 v0, 0x0

    .line 1719
    .local v0, "info":Lcom/android/internal/telephony/CallerInfo;
    if-eqz p1, :cond_0

    .line 1723
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 1724
    .local v3, "userDataObject":Ljava/lang/Object;
    instance-of v4, v3, Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 1725
    check-cast v3, Landroid/net/Uri;

    .end local v3    # "userDataObject":Ljava/lang/Object;
    invoke-static {p0, v3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1726
    if-eqz v0, :cond_0

    .line 1727
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1761
    :cond_0
    :goto_0
    return-object v0

    .line 1730
    .restart local v3    # "userDataObject":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_2

    .line 1732
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3    # "userDataObject":Ljava/lang/Object;
    iget-object v0, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1737
    :goto_1
    if-nez v0, :cond_0

    .line 1740
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1742
    .local v1, "number":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallerInfo: number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1744
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1748
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getSlotNotIdle(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 1750
    .local v2, "simId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1752
    invoke-static {p0, v1, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1754
    if-eqz v0, :cond_0

    .line 1755
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "simId":I
    .restart local v3    # "userDataObject":Ljava/lang/Object;
    :cond_2
    move-object v0, v3

    .line 1735
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method static getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1869
    const/4 v0, 0x0

    .line 1870
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 1872
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1873
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1879
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1874
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 1875
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v1, Landroid/net/Uri;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    goto :goto_0

    .line 1877
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method public static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompactNameFromCallerInfo: info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2247
    const/4 v0, 0x0

    .line 2248
    .local v0, "compactName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 2249
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2252
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p1, p0, v1, v2}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2260
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2269
    :cond_1
    if-eqz p0, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_4

    .line 2272
    const v1, 0x7f0b0186

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2279
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompactNameFromCallerInfo: compactName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2280
    return-object v0

    .line 2256
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 2273
    :cond_4
    if-eqz p0, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_5

    .line 2274
    const v1, 0x7f0b0187

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2276
    :cond_5
    const v1, 0x7f0b0185

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getCurrentActiveCall()Lcom/android/internal/telephony/Call;
    .locals 7

    .prologue
    .line 5695
    const/4 v3, 0x0

    .line 5696
    .local v3, "cur":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    .line 5698
    .local v2, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v1

    .line 5699
    .local v1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 5700
    .local v0, "c":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5701
    move-object v3, v0

    .line 5706
    .end local v0    # "c":Lcom/android/internal/telephony/Call;
    :cond_1
    if-nez v3, :cond_3

    .line 5707
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v1

    .line 5708
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 5709
    .restart local v0    # "c":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 5710
    .local v5, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    .line 5711
    move-object v3, v0

    .line 5717
    .end local v0    # "c":Lcom/android/internal/telephony/Call;
    .end local v5    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_3
    if-nez v3, :cond_5

    .line 5718
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 5719
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 5720
    .restart local v0    # "c":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 5721
    .restart local v5    # "state":Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_4

    .line 5722
    move-object v3, v0

    .line 5728
    .end local v0    # "c":Lcom/android/internal/telephony/Call;
    .end local v5    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_5
    return-object v3
.end method

.method public static getCurrentConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 5732
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getCurrentActiveCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 5736
    if-nez p0, :cond_0

    .line 5737
    const/4 v0, 0x0

    .line 5740
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDiskAvailableSize()J
    .locals 10

    .prologue
    const-wide/16 v7, -0x1

    .line 3888
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3891
    .local v5, "sdCardDirectory":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3892
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3901
    .local v6, "statfs":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 3902
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 3903
    .local v0, "availBlocks":J
    mul-long v7, v2, v0

    .line 3904
    .end local v0    # "availBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "statfs":Landroid/os/StatFs;
    :goto_0
    return-wide v7

    .line 3894
    :cond_0
    :try_start_1
    const-string v9, "-----diskSpaceAvailable: sdCardDirectory is null----"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3897
    :catch_0
    move-exception v4

    .line 3898
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "-----diskSpaceAvailable: IllegalArgumentException----"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 3876
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 3878
    .local v1, "rawNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3879
    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3883
    .local v0, "formattedNumber":Ljava/lang/String;
    :goto_0
    const v3, 0x7f0b02cc

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3884
    .local v2, "titleFormat":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3881
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v2    # "titleFormat":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0b0185

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedNumber":Ljava/lang/String;
    goto :goto_0
.end method

.method static getExpectedAudioMode()I
    .locals 5

    .prologue
    .line 3619
    const/4 v2, 0x0

    .line 3620
    .local v2, "mode":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3621
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    sget-object v3, Lcom/android/phone/PhoneUtils$8;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3637
    const-string v3, "PhoneUtils"

    const-string v4, "cm.getState() is neither RINGING nor OFFHOOK in getExpectedAudioMode()."

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3642
    :cond_0
    :goto_0
    return v2

    .line 3623
    :pswitch_0
    const/4 v2, 0x1

    .line 3624
    goto :goto_0

    .line 3626
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3630
    .local v1, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    instance-of v3, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v3, :cond_0

    .line 3633
    const/4 v2, 0x2

    goto :goto_0

    .line 3621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getExternalStorageDefaultPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3948
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFdnUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 5690
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getForegroundCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5277
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5278
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5279
    .local v1, "firstFgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 5280
    .local v2, "secondFgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 5281
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5283
    :cond_0
    if-eqz v2, :cond_1

    .line 5284
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5289
    .end local v1    # "firstFgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "secondFgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    .line 5287
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFullDialString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1855
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1859
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialNumber(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1632
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1633
    const/4 v1, 0x0

    .line 1649
    :goto_0
    return-object v1

    .line 1639
    :cond_0
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1640
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1643
    .local v1, "actualNumberToDial":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> got EXTRA_ACTUAL_NUMBER_TO_DIAL; returning \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1649
    .end local v1    # "actualNumberToDial":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 1804
    const/4 v1, 0x0

    .line 1806
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1807
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1827
    :goto_0
    if-nez v1, :cond_5

    .line 1828
    const/4 v0, 0x0

    .line 1845
    :cond_0
    :goto_1
    return-object v0

    .line 1814
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1816
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1818
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1820
    :cond_3
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getFullDialString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1823
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 1830
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 1833
    .local v3, "presentation":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1834
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1835
    .local v2, "numbers":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 1839
    .end local v2    # "numbers":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, v1, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1842
    .local v0, "newNumber":Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1843
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getMmiFinished()Z
    .locals 1

    .prologue
    .line 3548
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sMmiFinished:Z

    return v0
.end method

.method public static getMute()Z
    .locals 5

    .prologue
    .line 2624
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2626
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 2628
    .local v2, "routeToAudioManager":Z
    if-eqz v2, :cond_0

    .line 2629
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2631
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v3

    .line 2633
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    return v3

    :cond_0
    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getMute()Z

    move-result v3

    goto :goto_0
.end method

.method static getName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 1778
    const/4 v0, 0x0

    .line 1779
    .local v0, "name":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1782
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1786
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getNumber(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 6004
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v0, v1, :cond_1

    .line 6008
    :cond_0
    const-string v0, "-1"

    .line 6010
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "rawNum"    # Ljava/lang/String;

    .prologue
    .line 6020
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6021
    const-string v0, "-1"

    .line 6023
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1677
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1678
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1682
    .local v1, "scheme":Ljava/lang/String;
    const-string v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1683
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1697
    :cond_0
    return-object v0

    .line 1689
    :cond_1
    invoke-static {p1, p0}, Lmiui/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1693
    .local v0, "number":Ljava/lang/String;
    const-string v3, "voicemail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1695
    :cond_2
    new-instance v3, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v3
.end method

.method static getOperatorColorByCall(Lcom/android/internal/telephony/Call;)I
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, -0x1

    .line 5480
    if-nez p0, :cond_1

    .line 5491
    :cond_0
    :goto_0
    return v1

    .line 5484
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5485
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 5486
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 5488
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto :goto_0
.end method

.method static getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 5457
    if-nez p0, :cond_1

    .line 5472
    :cond_0
    :goto_0
    return-object v1

    .line 5461
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5462
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 5463
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 5465
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 5466
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 5467
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5470
    .end local v0    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    const-string v1, "gsm.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPhoneSwapStatus()Z
    .locals 1

    .prologue
    .line 3460
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sPhoneSwapStatus:Z

    return v0
.end method

.method static getPhoneTypeMTK()I
    .locals 3

    .prologue
    .line 4429
    const/4 v1, 0x1

    .line 4430
    .local v1, "phoneType":I
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4431
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4432
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 4433
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 4438
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return v1

    .line 4436
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    goto :goto_0
.end method

.method public static getPreferenceKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "prefKey"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 5678
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5681
    .end local p0    # "prefKey":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presentation"    # I

    .prologue
    .line 3259
    const v1, 0x7f0b0185

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3260
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 3261
    const v1, 0x7f0b0186

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3265
    :cond_0
    :goto_0
    return-object v0

    .line 3262
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 3263
    const v1, 0x7f0b0187

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPresentationStringEx(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presentation"    # I

    .prologue
    .line 4355
    const/4 v0, 0x0

    .line 4356
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p2, v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4357
    const v1, 0x7f0b0186

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4365
    :goto_0
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " presentation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4366
    return-object v0

    .line 4358
    :cond_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p2, v1, :cond_1

    .line 4359
    const v1, 0x7f0b0187

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4360
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-eq p2, v1, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4361
    :cond_2
    const v1, 0x7f0b0185

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4363
    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method static getRejectCallNotifyMsg()Ljava/lang/String;
    .locals 15

    .prologue
    const v14, 0x7f0b0082

    const v13, 0x7f0b0085

    const v12, 0x7f0b0083

    const v11, 0x7f0b0080

    .line 5080
    const/4 v7, 0x0

    .line 5081
    .local v7, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5082
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 5083
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 5084
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    .line 5085
    .local v2, "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v6

    .line 5086
    .local v6, "hasMultiRingCall":Z
    const/4 v5, 0x0

    .line 5087
    .local v5, "firstRingCallIsVT":Z
    const/4 v9, 0x0

    .line 5088
    .local v9, "secondRingCallIsVT":Z
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 5089
    .local v4, "firstRingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 5100
    .local v8, "secondRingCall":Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getAllCallsStateMsg(Lcom/android/internal/telephony/CallManager;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 5182
    :cond_0
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRejectCallNotifyMsg: get dual talk msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5189
    .end local v2    # "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    .end local v4    # "firstRingCall":Lcom/android/internal/telephony/Call;
    .end local v5    # "firstRingCallIsVT":Z
    .end local v6    # "hasMultiRingCall":Z
    .end local v8    # "secondRingCall":Lcom/android/internal/telephony/Call;
    .end local v9    # "secondRingCallIsVT":Z
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRejectCallNotifyMsg msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5190
    return-object v7

    .line 5102
    .restart local v2    # "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    .restart local v4    # "firstRingCall":Lcom/android/internal/telephony/Call;
    .restart local v5    # "firstRingCallIsVT":Z
    .restart local v6    # "hasMultiRingCall":Z
    .restart local v8    # "secondRingCall":Lcom/android/internal/telephony/Call;
    .restart local v9    # "secondRingCallIsVT":Z
    :pswitch_0
    if-eqz v6, :cond_2

    .line 5103
    const v10, 0x7f0b0084

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5105
    :cond_2
    const v10, 0x7f0b0081

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5107
    goto :goto_0

    .line 5110
    :pswitch_1
    if-eqz v6, :cond_4

    .line 5111
    if-eqz v5, :cond_3

    .line 5112
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5115
    :cond_3
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5118
    :cond_4
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5120
    goto :goto_0

    .line 5123
    :pswitch_2
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5124
    goto :goto_0

    .line 5127
    :pswitch_3
    if-eqz v6, :cond_6

    .line 5128
    if-eqz v5, :cond_5

    .line 5129
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5131
    :cond_5
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5135
    :cond_6
    if-eqz v5, :cond_7

    .line 5136
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5138
    :cond_7
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5141
    goto :goto_0

    .line 5144
    :pswitch_4
    if-eqz v6, :cond_0

    if-nez v5, :cond_8

    if-eqz v9, :cond_0

    .line 5145
    :cond_8
    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 5150
    :pswitch_5
    if-eqz v6, :cond_a

    .line 5151
    if-eqz v5, :cond_9

    .line 5152
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 5153
    :cond_9
    if-eqz v9, :cond_0

    .line 5154
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 5157
    :cond_a
    if-eqz v5, :cond_0

    .line 5158
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 5163
    :pswitch_6
    if-eqz v6, :cond_c

    .line 5164
    if-eqz v5, :cond_b

    .line 5165
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 5167
    :cond_b
    if-nez v9, :cond_0

    .line 5168
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 5169
    .local v3, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    if-eq v10, v11, :cond_0

    .line 5171
    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 5174
    .end local v3    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_c
    if-eqz v5, :cond_0

    .line 5175
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 5183
    .end local v2    # "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    .end local v4    # "firstRingCall":Lcom/android/internal/telephony/Call;
    .end local v5    # "firstRingCallIsVT":Z
    .end local v6    # "hasMultiRingCall":Z
    .end local v8    # "secondRingCall":Lcom/android/internal/telephony/Call;
    .end local v9    # "secondRingCallIsVT":Z
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5185
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5186
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRejectCallNotifyMsg: get single talk msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5100
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getRingingCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5260
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5261
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5262
    .local v1, "firstRingingCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 5263
    .local v2, "secondRingingCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 5264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5266
    :cond_0
    if-eqz v2, :cond_1

    .line 5267
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5272
    .end local v1    # "firstRingingCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "secondRingingCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    .line 5270
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 12
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v8, 0x0

    .line 4183
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    move-object v4, v8

    .line 4204
    :goto_0
    return-object v4

    .line 4187
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 4188
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 4189
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getCDMASlot()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    goto :goto_0

    .line 4193
    :cond_2
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v7

    .line 4194
    .local v7, "serialNumber":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 4195
    .local v1, "geminiSlots":[I
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSimInfoByCall, serialNumber="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4196
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget v2, v0, v3

    .line 4197
    .local v2, "gs":I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    .line 4198
    .local v4, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v4, :cond_3

    iget-object v9, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4199
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimInfoByCall, slotId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", iccId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4196
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "gs":I
    .end local v4    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_4
    move-object v4, v8

    .line 4204
    goto/16 :goto_0
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 3219
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3220
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v1

    .line 3221
    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v2

    .line 3222
    .local v2, "sipUri":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- pickPhoneBasedOnNumber:found SipPhone! obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3230
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "sipUri":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleAnswerAndEnd(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 4848
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    .line 4849
    .local v0, "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    const-string v6, "+handleAnswerAndEnd"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4850
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v2

    .line 4851
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 4853
    .local v5, "size":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4854
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 4855
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_2

    .line 4856
    const-string v6, "+handleAnswerAndEnd: hangup Call.State.ACTIVE"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4857
    instance-of v6, v3, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v6, :cond_1

    .line 4858
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4872
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 4873
    .local v4, "ringCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->hasActiveCdmaPhone()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 4876
    const-string v6, "handleAnswerAndEnd: cdma phone has acttive call, don\'t switch it and answer the ringing only"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4879
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->acceptCall()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4886
    :goto_1
    const-string v6, "-handleAnswerAndEnd"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4887
    return-void

    .line 4860
    .end local v4    # "ringCall":Lcom/android/internal/telephony/Call;
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :try_start_2
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4868
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v1

    .line 4869
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4862
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    .line 4863
    const-string v6, "+handleAnswerAndEnd: hangup Call.State.HOLDING and switch H&A"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4864
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4865
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 4880
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "ringCall":Lcom/android/internal/telephony/Call;
    :catch_1
    move-exception v1

    .line 4881
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4884
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2705
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleHeadsetHook()..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2706
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2710
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_0

    .line 2784
    :goto_0
    return v7

    .line 2722
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_2

    move v4, v6

    .line 2723
    .local v4, "hasRingingCall":Z
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_3

    move v2, v6

    .line 2724
    .local v2, "hasActiveCall":Z
    :goto_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_4

    move v3, v6

    .line 2726
    .local v3, "hasHoldingCall":Z
    :goto_3
    if-eqz v4, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_9

    .line 2731
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2732
    .local v5, "phoneType":I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    .line 2733
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .end local v5    # "phoneType":I
    :cond_1
    :goto_4
    move v7, v6

    .line 2784
    goto :goto_0

    .end local v2    # "hasActiveCall":Z
    .end local v3    # "hasHoldingCall":Z
    .end local v4    # "hasRingingCall":Z
    :cond_2
    move v4, v7

    .line 2722
    goto :goto_1

    .restart local v4    # "hasRingingCall":Z
    :cond_3
    move v2, v7

    .line 2723
    goto :goto_2

    .restart local v2    # "hasActiveCall":Z
    :cond_4
    move v3, v7

    .line 2724
    goto :goto_3

    .line 2734
    .restart local v3    # "hasHoldingCall":Z
    .restart local v5    # "phoneType":I
    :cond_5
    if-eq v5, v6, :cond_6

    const/4 v7, 0x3

    if-ne v5, v7, :cond_8

    .line 2736
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 2737
    const-string v7, "handleHeadsetHook: ringing (both lines in use) ==> answer!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2738
    iget-object v7, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 2740
    :cond_7
    const-string v7, "handleHeadsetHook: ringing ==> answer!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2743
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 2746
    :cond_8
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2750
    .end local v5    # "phoneType":I
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2751
    const-string v7, "handleHeadsetHook: longpress -> hangup"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2752
    iget-object v7, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_4

    .line 2754
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 2756
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2758
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2760
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2761
    const-string v8, "handleHeadsetHook: UNmuting..."

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2762
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto/16 :goto_4

    .line 2764
    :cond_b
    const-string v7, "handleHeadsetHook: muting..."

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2765
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto/16 :goto_4
.end method

.method static handleHoldAndUnhold()V
    .locals 5

    .prologue
    .line 5539
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5553
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    .local v2, "fgCall":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-void

    .line 5542
    .end local v0    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 5543
    .restart local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 5545
    .restart local v0    # "bgCall":Lcom/android/internal/telephony/Call;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5546
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5550
    :catch_0
    move-exception v1

    .line 5551
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleHoldAndUnhold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5547
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5548
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static handleMessageMtk(Landroid/os/Message;)Z
    .locals 4
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 3493
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessageMtk ConnectionHandler: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    iget v1, p0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 3512
    const/4 v1, 0x0

    .line 3514
    :goto_0
    return v1

    .line 3499
    :sswitch_0
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionHandler: PHONE_SPEECH_INFO-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 3501
    iget v1, p0, Landroid/os/Message;->what:I

    sget-object v2, Lcom/android/phone/PhoneUtils;->PHONE_SPEECH_INFO_GEMINI:[I

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotIdByRegisterEvent(I[I)I

    move-result v0

    .line 3503
    .local v0, "slotId":I
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-static {v1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForSpeechInfo(Landroid/os/Handler;I)V

    .line 3514
    .end local v0    # "slotId":I
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3507
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+showSelectCallDialog, holdList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3508
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->showSelectCallDialog(Ljava/util/List;)V

    goto :goto_1

    .line 3494
    nop

    :sswitch_data_0
    .sparse-switch
        -0x12e -> :sswitch_0
        -0xca -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x2 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method static handleSwapCdmaAndGsm()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4967
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    .line 4968
    .local v2, "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 4969
    .local v4, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4971
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-eq v8, v9, :cond_1

    move v5, v6

    .line 4972
    .local v5, "fgPhoneSupportHold":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-eq v8, v9, :cond_2

    move v1, v6

    .line 4975
    .local v1, "bgPhoneSupportHold":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSwapCdmaAndGsm fgCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSwapCdmaAndGsm bgCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4981
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 4982
    const-string v6, "handleSwapCdmaAndGsm: switch between two GSM calls."

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4984
    :try_start_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5027
    :cond_0
    :goto_2
    return-void

    .end local v1    # "bgPhoneSupportHold":Z
    .end local v5    # "fgPhoneSupportHold":Z
    :cond_1
    move v5, v7

    .line 4971
    goto :goto_0

    .restart local v5    # "fgPhoneSupportHold":Z
    :cond_2
    move v1, v7

    .line 4972
    goto :goto_1

    .line 4985
    .restart local v1    # "bgPhoneSupportHold":Z
    :catch_0
    move-exception v3

    .line 4986
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4989
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    if-nez v5, :cond_5

    .line 4990
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4991
    const-string v6, "handleSwapCdmaAndGsm: cdma has multiple calls and in foreground, only switch the audio."

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4994
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4995
    :catch_1
    move-exception v3

    .line 4996
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4999
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "handleSwapCdmaAndGsm: cdma has single call and in foreground, switch by phone"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5001
    :try_start_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 5002
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 5003
    :catch_2
    move-exception v3

    .line 5004
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5008
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v5, :cond_0

    .line 5009
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5010
    const-string v6, "handleSwapCdmaAndGsm: cdma has multiple calls and in background, only switch the audio"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5013
    :try_start_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 5014
    :catch_3
    move-exception v3

    .line 5015
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5018
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v6, "handleSwapCdmaAndGsm: cdma has single call and in background, switch by phone"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5020
    :try_start_4
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 5021
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 5022
    :catch_4
    move-exception v3

    .line 5023
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static handleSwapForDualTalk()V
    .locals 7

    .prologue
    .line 4917
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    .line 4918
    .local v1, "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4919
    invoke-static {}, Lcom/android/phone/PhoneUtils;->handleSwapCdmaAndGsm()V

    .line 4956
    :goto_0
    return-void

    .line 4920
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4924
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4926
    .local v0, "bgHoldCall":Lcom/android/internal/telephony/Call;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4927
    :catch_0
    move-exception v2

    .line 4928
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalSwapCalls exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4934
    .end local v0    # "bgHoldCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4935
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4936
    .local v3, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 4937
    .local v4, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4939
    const-string v5, "Cal foreground phone\'s switchHoldingAndActive"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4942
    :try_start_1
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4943
    :catch_1
    move-exception v2

    .line 4944
    .restart local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4948
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    const-string v5, "PhoneUtils.switchHoldingAndActive"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4950
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 4954
    .end local v3    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method static handleUnholdAndEnd(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 5556
    const-string v4, "+handleUnholdAndEnd"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5557
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v1

    .line 5558
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 5560
    .local v3, "size":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5561
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 5562
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .line 5563
    const-string v4, "+handleUnholdAndEnd: hangup Call.State.ACTIVE"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5564
    instance-of v4, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_1

    .line 5565
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 5575
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5579
    :goto_1
    const-string v4, "-handleUnholdAndEnd"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5580
    return-void

    .line 5567
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5576
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v0

    .line 5577
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 5569
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 5570
    const-string v4, "+handleUnholdAndEnd: hangup Call.State.HOLDING and switch H&A"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5571
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 5572
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method static handleVideoAndVoiceIncoming()V
    .locals 5

    .prologue
    .line 4890
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    .line 4891
    .local v0, "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4914
    :cond_0
    :goto_0
    return-void

    .line 4895
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4899
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4900
    .local v2, "firstRinging":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4903
    .local v3, "secondRinging":Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4907
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4909
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4910
    :catch_0
    move-exception v1

    .line 4911
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p0, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 683
    if-eqz p0, :cond_0

    .line 684
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hangup(Lcom/android/internal/telephony/Call;)Z
    .locals 11
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v8, 0x1

    .line 617
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v2, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 619
    .local v2, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v9

    if-nez v9, :cond_3

    .line 622
    const-string v9, "- hangup(Call): hangupForegroundResumeBackground..."

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    .line 625
    .local v3, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 627
    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 673
    .end local v2    # "cm":Lcom/android/internal/telephony/CallManager;
    .end local v3    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    :cond_0
    :goto_0
    return v8

    .line 630
    .restart local v2    # "cm":Lcom/android/internal/telephony/CallManager;
    .restart local v3    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    .end local v2    # "cm":Lcom/android/internal/telephony/CallManager;
    .end local v3    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    :catch_0
    move-exception v5

    .line 670
    .local v5, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Call hangup: caught "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    const/4 v8, 0x0

    goto :goto_0

    .line 633
    .end local v5    # "ex":Lcom/android/internal/telephony/CallStateException;
    .restart local v2    # "cm":Lcom/android/internal/telephony/CallManager;
    .restart local v3    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 635
    .end local v3    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 636
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 637
    .local v6, "fg":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 638
    .local v0, "bg":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-ne v9, v10, :cond_4

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-ne v9, v8, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 641
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    goto :goto_0

    .line 643
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_0

    .line 645
    .end local v0    # "bg":Lcom/android/internal/telephony/Call;
    .end local v6    # "fg":Lcom/android/internal/telephony/Call;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v10, :cond_6

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 650
    const-string v9, "Both cdma & gsm active call exist, hangup gsm call and switch cdma call"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v4

    .line 652
    .local v4, "dtUtils":Lcom/mediatek/phone/DualTalkUtils;
    invoke-virtual {v4}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 653
    .local v7, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 655
    .local v1, "cdmaCall":Lcom/android/internal/telephony/Call;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "foreground call = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 658
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "background call = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 661
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 662
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch cdma call = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    .end local v1    # "cdmaCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "dtUtils":Lcom/mediatek/phone/DualTalkUtils;
    .end local v7    # "foregroundCall":Lcom/android/internal/telephony/Call;
    :cond_6
    const-string v9, "- hangup(Call): regular hangup()..."

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .locals 7
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 471
    const/4 v3, 0x0

    .line 472
    .local v3, "hungup":Z
    const/4 v4, 0x0

    .line 473
    .local v4, "ringing":Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 474
    .local v2, "fg":Lcom/android/internal/telephony/Call;
    const/4 v0, 0x0

    .line 475
    .local v0, "bg":Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 477
    .local v1, "dtUtils":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 478
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    .line 481
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 484
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupForDualTalk(Lcom/android/internal/telephony/Call;)V

    .line 485
    const/4 v5, 0x1

    .line 527
    :goto_0
    return v5

    .line 486
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 487
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 488
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 504
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_5

    .line 506
    const-string v5, "hangup(): hanging up ringing call"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 508
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 525
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> hungup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v5, v3

    .line 527
    goto :goto_0

    .line 489
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 490
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 491
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    goto :goto_1

    .line 492
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 496
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 497
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    .line 499
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    .line 509
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_7

    .line 511
    :cond_6
    const-string v5, "hangup(): hanging up foreground call"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 513
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_2

    .line 514
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_9

    .line 515
    :cond_8
    const-string v5, "hangup(): hanging up background call"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 516
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_2

    .line 523
    :cond_9
    const-string v5, "hangup(): no active call to hang up"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .param p0, "foreground"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 572
    const-string v0, "hangup active call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 573
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public static hangupAllCalls()V
    .locals 2

    .prologue
    .line 3978
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(ZLcom/android/internal/telephony/Call;)V

    .line 3979
    return-void
.end method

.method static hangupAllCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 441
    .local v2, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 442
    .local v1, "fg":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 447
    .local v0, "bg":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 448
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 450
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 453
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 454
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 456
    :cond_2
    return-void
.end method

.method public static hangupAllCalls(ZLcom/android/internal/telephony/Call;)V
    .locals 9
    .param p0, "includeRingCalls"    # Z
    .param p1, "ringCallToKeep"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3987
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getAllPhonesInOrder()Ljava/util/List;

    move-result-object v5

    .line 3990
    .local v5, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 3991
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3992
    .local v2, "fg":Lcom/android/internal/telephony/Call;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3993
    .local v0, "bg":Lcom/android/internal/telephony/Call;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 3994
    .local v6, "ring":Lcom/android/internal/telephony/Call;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v7, v8, :cond_7

    .line 3995
    instance-of v7, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v7, :cond_5

    .line 3996
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3997
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3998
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 4013
    :cond_1
    :goto_1
    if-eqz p0, :cond_0

    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    .line 4014
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4020
    .end local v0    # "bg":Lcom/android/internal/telephony/Call;
    .end local v2    # "fg":Lcom/android/internal/telephony/Call;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "ring":Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v1

    .line 4021
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4023
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    return-void

    .line 3999
    .restart local v0    # "bg":Lcom/android/internal/telephony/Call;
    .restart local v2    # "fg":Lcom/android/internal/telephony/Call;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v6    # "ring":Lcom/android/internal/telephony/Call;
    :cond_3
    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4000
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_1

    .line 4001
    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4002
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_1

    .line 4005
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4006
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4007
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4009
    :cond_6
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4010
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_1

    .line 4017
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Phone is idle  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static hangupAllHoldCalls()Z
    .locals 6

    .prologue
    .line 4328
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4329
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    .line 4331
    .local v0, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4332
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4333
    .local v2, "firstBgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4335
    .local v3, "secondBgCall":Lcom/android/internal/telephony/Call;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4336
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4342
    .end local v2    # "firstBgCall":Lcom/android/internal/telephony/Call;
    .end local v3    # "secondBgCall":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 4337
    .restart local v2    # "firstBgCall":Lcom/android/internal/telephony/Call;
    .restart local v3    # "secondBgCall":Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v1

    .line 4338
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupAllHoldCalls: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hangupEx(Lcom/android/internal/telephony/CallManager;)Z
    .locals 8
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 3556
    const/4 v4, 0x0

    .line 3557
    .local v4, "hungup":Z
    const/4 v5, 0x0

    .line 3558
    .local v5, "ringing":Lcom/android/internal/telephony/Call;
    const/4 v3, 0x0

    .line 3559
    .local v3, "fg":Lcom/android/internal/telephony/Call;
    const/4 v0, 0x0

    .line 3560
    .local v0, "bg":Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 3561
    .local v1, "call":Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 3563
    .local v2, "dtUtils":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3564
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    .line 3567
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3569
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3570
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupForDualTalk(Lcom/android/internal/telephony/Call;)V

    .line 3571
    const/4 v6, 0x1

    .line 3607
    :goto_0
    return v6

    .line 3572
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3573
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3574
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3584
    :goto_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3585
    const-string v6, "hangup(): hanging up ringing call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3586
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 3587
    move-object v1, v5

    .line 3604
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> hungup = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v6, v4

    .line 3607
    goto :goto_0

    .line 3575
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3576
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3577
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    goto :goto_1

    .line 3579
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3580
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3581
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    .line 3588
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v3, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_6

    .line 3589
    :cond_5
    const-string v6, "hangup(): hanging up foreground call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3590
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 3591
    move-object v1, v3

    goto :goto_2

    .line 3592
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_8

    .line 3593
    :cond_7
    const-string v6, "hangup(): hanging up background call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3594
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 3595
    move-object v1, v0

    goto :goto_2

    .line 3602
    :cond_8
    const-string v6, "hangup(): no active call to hang up"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static hangupForDualTalk(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 4026
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4028
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4032
    :goto_0
    return-void

    .line 4029
    :catch_0
    move-exception v0

    .line 4030
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .param p0, "background"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 577
    const-string v0, "hangup holding call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 578
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, "hungUpRingingCall":Z
    const/4 v1, 0x0

    .line 589
    .local v1, "hungUpFgCall":Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 590
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 593
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 594
    const-string v4, "hangupRingingAndActive: Hang up Ringing Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 595
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 599
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 600
    const-string v4, "hangupRingingAndActive: Hang up Foreground Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 601
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 604
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p0, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 531
    const-string v3, "hangup ringing call"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 533
    .local v1, "phoneType":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 535
    .local v2, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 537
    const-string v3, "hangupRingingCall(): regular incoming call: hangup()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 538
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 567
    :goto_0
    return v3

    .line 539
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 546
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 550
    const-string v3, "hangupRingingCall(): CDMA-specific call-waiting hangup"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 552
    .local v0, "notifier":Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    .line 553
    const/4 v3, 0x1

    goto :goto_0

    .line 557
    .end local v0    # "notifier":Lcom/android/phone/CallNotifier;
    :cond_1
    const-string v3, "hangupRingingCall(): call-waiting call: hangup()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 558
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0

    .line 566
    :cond_2
    const-string v3, "PhoneUtils"

    const-string v4, "hangupRingingCall: no INCOMING or WAITING call"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static hasActivefgEccCall(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    .line 3721
    if-nez p0, :cond_1

    .line 3725
    :cond_0
    :goto_0
    return v1

    .line 3724
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3725
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasActivefgEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 2831
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2832
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 2833
    const/4 v3, 0x1

    .line 2843
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    .line 2836
    :catch_0
    move-exception v1

    .line 2837
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The connections is set to null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2843
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2838
    :catch_1
    move-exception v1

    .line 2839
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ArrayListIterator has got exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 2801
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4035
    if-nez p0, :cond_0

    .line 4038
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static hasMultiplePhoneActive()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4144
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v0, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 4145
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_1

    .line 4147
    :cond_0
    const-string v5, "CallManager says in idle state!"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v5, v6

    .line 4173
    :goto_0
    return v5

    .line 4152
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    .line 4153
    .local v4, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallManager says in idle state!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4154
    const/4 v1, 0x0

    .line 4156
    .local v1, "count":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 4157
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_2

    .line 4158
    add-int/lit8 v1, v1, 0x1

    .line 4160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "non IDLE phone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4162
    if-le v1, v5, :cond_2

    .line 4164
    const-string v6, "More than one phone active!"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4171
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const-string v5, "Strange! no phone active but we go here!"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v5, v6

    .line 4173
    goto :goto_0
.end method

.method public static holdAndActiveFromDifPhone(Lcom/android/internal/telephony/CallManager;)Z
    .locals 7
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 3669
    const/4 v3, 0x0

    .line 3670
    .local v3, "isDiffrentPhone":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    .line 3671
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    const/4 v1, 0x0

    .line 3672
    .local v1, "found":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 3673
    .local v4, "p":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_0

    .line 3674
    if-nez v1, :cond_1

    .line 3675
    const/4 v1, 0x1

    goto :goto_0

    .line 3677
    :cond_1
    const/4 v3, 0x1

    .line 3682
    .end local v4    # "p":Lcom/android/internal/telephony/Phone;
    :cond_2
    return v3
.end method

.method public static initRepeatedBlockedCalls(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5867
    new-instance v0, Lcom/android/phone/PhoneUtils$7;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneUtils$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5896
    return-void
.end method

.method public static initRepeatedCalls(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5791
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5823
    :goto_0
    return-void

    .line 5795
    :cond_0
    new-instance v0, Lcom/android/phone/PhoneUtils$6;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$6;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneUtils$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 296
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 303
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    return-void
.end method

.method static internalAnswerCall()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 4472
    const-string v9, "internalAnswerCall()..."

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4474
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    .line 4475
    .local v1, "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 4476
    .local v0, "callManager":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 4485
    .local v5, "hasRingingCall":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4486
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkAnswerCase()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4491
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalAnswerCallForDualTalk()V

    .line 4645
    :cond_1
    :goto_0
    return-void

    .line 4498
    :cond_2
    if-eqz v5, :cond_1

    .line 4499
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 4500
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 4501
    .local v8, "ringing":Lcom/android/internal/telephony/Call;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 4502
    .local v7, "phoneType":I
    if-ne v7, v10, :cond_4

    .line 4504
    const-string v9, "internalAnswerCall: answering (CDMA)..."

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-ne v9, v11, :cond_3

    .line 4515
    const-string v9, "internalAnswerCall: answer CDMA incoming and end SIP ongoing"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4516
    invoke-static {v0, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 4518
    :cond_3
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 4520
    :cond_4
    if-ne v7, v11, :cond_8

    .line 4522
    const-string v9, "internalAnswerCall: answering (SIP)..."

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4523
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-ne v9, v10, :cond_5

    .line 4534
    const-string v9, "internalAnswerCall: answer SIP incoming and end CDMA ongoing"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4535
    invoke-static {v0, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 4540
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-eq v9, v10, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4543
    invoke-static {v0, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 4547
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4550
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4556
    :cond_7
    :goto_1
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 4551
    :catch_0
    move-exception v2

    .line 4552
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4558
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_8
    const/4 v9, 0x1

    if-ne v7, v9, :cond_a

    .line 4560
    const-string v9, "internalAnswerCall: answering (GSM)..."

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4565
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 4566
    .local v3, "hasActiveCall":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 4613
    .local v4, "hasHoldingCall":Z
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 4615
    const-string v9, "internalAnswerCall: answering (both lines in use!)..."

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4624
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 4636
    :cond_9
    const-string v9, "internalAnswerCall: answering..."

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4637
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 4642
    .end local v3    # "hasActiveCall":Z
    .end local v4    # "hasHoldingCall":Z
    :cond_a
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method static internalAnswerCallForDualTalk()V
    .locals 16

    .prologue
    .line 4662
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v5

    .line 4663
    .local v5, "dualTalk":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    .line 4664
    .local v3, "callManager":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 4668
    .local v12, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 4670
    const-string v14, "internalAnswerCallForDualTalk: ringing when dialing"

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4672
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4673
    .local v1, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 4675
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 4676
    .local v11, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v14, v11, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v14, :cond_2

    .line 4677
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4699
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v11    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v9

    .line 4700
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 4703
    .local v2, "callCount":I
    const/4 v14, 0x2

    if-le v2, v14, :cond_5

    .line 4705
    :try_start_1
    const-string v14, "internalAnswerCallForDualTalk: has more than two calls exist."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4715
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->hasActiveCdmaPhone()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 4716
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->handleAnswerAndEnd(Lcom/android/internal/telephony/Call;)V

    .line 4718
    const-string v14, "internalAnswerCallForDualTalk (C+G): hangup the active call!"

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4845
    :cond_1
    :goto_1
    return-void

    .line 4684
    .end local v2    # "callCount":I
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    .restart local v11    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    :try_start_2
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4686
    .end local v11    # "phone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v6

    .line 4687
    .local v6, "e":Ljava/lang/Exception;
    const-string v14, "internalAnswerCallForDualTalk:Exception "

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4689
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 4692
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4693
    :catch_1
    move-exception v6

    .line 4694
    .local v6, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v6}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4721
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v6    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v2    # "callCount":I
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->handleAnswerAndEnd(Lcom/android/internal/telephony/Call;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 4842
    :catch_2
    move-exception v6

    .line 4843
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4724
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v14, 0x2

    if-ne v2, v14, :cond_e

    .line 4726
    :try_start_5
    const-string v14, "internalAnswerCallForDualTalk: has two calls exist."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4731
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->isBTConnected()Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/Call;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    const/4 v14, 0x1

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/Call;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    if-eq v15, v14, :cond_6

    .line 4733
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 4734
    .local v10, "noCdmaCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_6

    .line 4735
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->handleAnswerAndEnd(Lcom/android/internal/telephony/Call;)V

    .line 4736
    const-string v14, "internalAnswerCallForDualTalk: BT connected, so hangup active call."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4741
    .end local v10    # "noCdmaCall":Lcom/android/internal/telephony/Call;
    :cond_6
    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/Call;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    const/4 v14, 0x1

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/Call;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    if-ne v15, v14, :cond_7

    .line 4743
    const-string v14, "internalAnswerCallForDualTalk: two calls exist in the same phone."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4746
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->handleAnswerAndEnd(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 4750
    :cond_7
    const-string v14, "internalAnswerCallForDualTalk: two calls exist in diffrent phone."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4753
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->hasActiveOrHoldBothCdmaAndGsm()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 4757
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getActiveGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 4758
    .local v7, "gsmPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 4760
    .local v4, "cdmaPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4761
    .local v0, "cCall":Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 4762
    const-string v14, "internalAnswerCallForDualTalk: cdma has multiple connections, disconneted it!"

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4763
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4764
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 4767
    :cond_8
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 4770
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 4772
    const-string v14, "internalAnswerCallForDualTalk: cdma hold + gsm active + gsm ringing"

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4778
    :cond_9
    const-string v14, "internalAnswerCallForDualTalk: cdma active + gsm holding + cdma ringing/gsm ringing"

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4781
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 4785
    .end local v0    # "cCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "cdmaPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "gsmPhone":Lcom/android/internal/telephony/Phone;
    :cond_a
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 4786
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    .line 4787
    .local v13, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_d

    .line 4788
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    if-eq v14, v15, :cond_c

    .line 4789
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 4791
    :cond_c
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 4793
    :cond_d
    sget-object v14, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_b

    .line 4796
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2

    .line 4801
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_e
    const/4 v14, 0x1

    if-ne v2, v14, :cond_16

    .line 4803
    const-string v14, "internalAnswerCallForDualTalk: there is one call exist."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4805
    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 4808
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_10

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 4810
    const-string v14, "internalAnswerCallForDualTalk: check if need to hangup cdma multiple call before answer the ringing call!"

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4812
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    if-eq v14, v15, :cond_f

    .line 4813
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4815
    :cond_f
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 4816
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    if-ne v14, v15, :cond_11

    .line 4817
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 4818
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_15

    .line 4819
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-static {v12}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 4821
    :cond_12
    const-string v14, "internalAnswerCallForDualTalk: there is one video call, hangup current call!"

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4824
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 4825
    .restart local v11    # "phone":Lcom/android/internal/telephony/Phone;
    instance-of v14, v11, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v14, :cond_14

    .line 4826
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4831
    .end local v11    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_13
    :goto_3
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 4828
    .restart local v11    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_14
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    goto :goto_3

    .line 4833
    .end local v11    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_15
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 4835
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    :cond_16
    if-nez v2, :cond_1

    .line 4837
    const-string v14, "internalAnswerCallForDualTalk: there is no call exist."

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4839
    invoke-static {}, Lcom/android/phone/PhoneUtils;->handleVideoAndVoiceIncoming()V

    .line 4840
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1
.end method

.method static internalAnswerVideoCallForDualTalk()V
    .locals 2

    .prologue
    .line 4648
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4649
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 4650
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(ZLcom/android/internal/telephony/Call;)V

    .line 4652
    const-string v1, "hangup all calls except current ring call"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4654
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 4656
    :cond_0
    return-void
.end method

.method static internalSwapCalls()V
    .locals 4

    .prologue
    .line 5504
    const-string v2, "internalSwapCalls()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5506
    invoke-static {}, Lcom/android/phone/PhoneUtils;->handleSwapForDualTalk()V

    .line 5511
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 5512
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    .line 5513
    .local v0, "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    if-eqz v0, :cond_0

    .line 5515
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSwapSecondCallState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5521
    :cond_0
    :goto_0
    return-void

    .line 5516
    :catch_0
    move-exception v1

    .line 5517
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isBlockedByAntiSpam(I)Z
    .locals 1
    .param p0, "blockType"    # I

    .prologue
    .line 791
    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 7
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v4, 0x1

    .line 2305
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2306
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2307
    .local v2, "phoneType":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 2308
    iget-object v5, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 2309
    .local v3, "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v5, :cond_4

    iget-object v5, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2337
    .end local v3    # "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    :goto_0
    return v4

    .line 2324
    :cond_1
    if-ne v2, v4, :cond_2

    .line 2325
    iget-boolean v4, p0, Lcom/android/internal/telephony/Call;->isMptyCall:Z

    goto :goto_0

    .line 2326
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 2328
    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 2329
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2331
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2332
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_0

    .line 2337
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isDMLocked()Z
    .locals 6

    .prologue
    .line 3739
    const/4 v3, 0x0

    .line 3741
    .local v3, "locked":Z
    :try_start_0
    const-string v4, "DmAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3742
    .local v1, "binder":Landroid/os/IBinder;
    const/4 v0, 0x0

    .line 3743
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    if-eqz v1, :cond_0

    .line 3744
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 3746
    :cond_0
    if-eqz v0, :cond_1

    .line 3747
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3753
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDMLocked(): locked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3755
    return v3

    .line 3749
    :catch_0
    move-exception v2

    .line 3750
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static isEccCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3732
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3733
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 4225
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isEvdoDTSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4226
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 4229
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageMounted()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3937
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3939
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    if-nez v0, :cond_1

    .line 3940
    const-string v3, "-----story manager is null----"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3944
    :cond_0
    :goto_0
    return v2

    .line 3943
    :cond_1
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3944
    .local v1, "storageState":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method static isInEmergencyCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 4
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 2577
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2578
    .local v0, "cn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2580
    const/4 v2, 0x1

    .line 2583
    .end local v0    # "cn":Lcom/android/internal/telephony/Connection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3430
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLteSupport()Z
    .locals 3

    .prologue
    .line 5648
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    .line 5649
    .local v0, "isSupport":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5650
    return v0
.end method

.method static isNoiseSuppressionOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2500
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2510
    :cond_0
    :goto_0
    return v2

    .line 2504
    :cond_1
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2505
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v3, "noise_suppression"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2506
    .local v1, "noiseSuppression":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNoiseSuppressionOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2507
    const-string v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2510
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isOnAirplaneMode()Z
    .locals 5

    .prologue
    .line 4375
    const/4 v1, 0x0

    .line 4377
    .local v1, "mode":I
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4383
    :goto_0
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airlane mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4384
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 4379
    :catch_0
    move-exception v0

    .line 4380
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PhoneUtils"

    const-string v3, "fail to get airlane mode"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4381
    const/4 v1, 0x0

    goto :goto_0

    .line 4384
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isOnlyRingingCallExist()Z
    .locals 4

    .prologue
    .line 5655
    const/4 v1, 0x0

    .line 5656
    .local v1, "result":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 5657
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 5659
    .local v0, "hasActiveOrHoldCall":Z
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v2, :cond_1

    if-nez v0, :cond_1

    .line 5660
    const/4 v1, 0x1

    .line 5662
    :cond_1
    return v1

    .line 5657
    .end local v0    # "hasActiveOrHoldCall":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 3178
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3184
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3186
    .local v0, "ecmMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3187
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3190
    .end local v0    # "ecmMode":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1
    .param p0, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 3238
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRepeatedBlockedCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 5846
    sget-object v1, Lcom/android/phone/PhoneUtils;->REPEATED_BLOCKED_CALLS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5848
    .local v0, "lastTime":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x2bf20

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRepeatedCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 5767
    sget-object v1, Lcom/android/phone/PhoneUtils;->REPEATED_CALLS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5769
    .local v0, "lastTime":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x2bf20

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRoutableViaGateway(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3142
    :cond_0
    :goto_0
    return v0

    .line 3137
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3138
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3141
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3142
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2457
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2458
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method public static isSupportFeature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3769
    if-nez p0, :cond_1

    .line 3788
    :cond_0
    :goto_0
    return v0

    .line 3773
    :cond_1
    const-string v2, "TTY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3775
    const-string v2, "DUAL_MIC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 3776
    goto :goto_0

    .line 3777
    :cond_2
    const-string v2, "IP_DIAL"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 3778
    goto :goto_0

    .line 3779
    :cond_3
    const-string v2, "3G_SWITCH"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3781
    const-string v2, "VT_VOICE_RECORDING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 3782
    goto :goto_0

    .line 3783
    :cond_4
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 3784
    goto :goto_0

    .line 3785
    :cond_5
    const-string v2, "PHONE_VOICE_RECORDING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3786
    goto :goto_0
.end method

.method public static isVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    .line 4131
    if-nez p0, :cond_1

    .line 4139
    :cond_0
    :goto_0
    return v1

    .line 4135
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4136
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 4139
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v1

    goto :goto_0
.end method

.method static isVoicemailNumber(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3717
    if-eqz p0, :cond_0

    const-string v0, "voicemail"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoicemailNumber(Ljava/lang/String;ILcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "slot"    # I
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4210
    if-eqz p2, :cond_1

    instance-of v2, p2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_1

    .line 4211
    const/4 v0, 0x0

    .line 4221
    :cond_0
    :goto_0
    return v0

    .line 4215
    :cond_1
    const/4 v0, 0x0

    .line 4217
    .local v0, "isVoicemail":Z
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 4218
    .local v1, "voiceMailNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1, p0}, Lmiui/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4219
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVoipSupported()Z
    .locals 1

    .prologue
    .line 3255
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3358
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    return-void
.end method

.method static mergeCalls()V
    .locals 1

    .prologue
    .line 1175
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 1176
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 1181
    .local v7, "phoneType":I
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    .line 1182
    .local v3, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1183
    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1184
    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 1185
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 1189
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1190
    const-string v8, "mergeCalls(): CDMA..."

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1191
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 1192
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_2

    .line 1195
    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1202
    const-string v8, "- sending flash..."

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1240
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_1
    :goto_0
    return-void

    .line 1205
    .restart local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1207
    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1208
    .local v6, "fg":Lcom/android/internal/telephony/Call;
    const-string v8, "PhoneUtils"

    const-string v9, "we don\'t know how to do exactly, so just switch the cdma call"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1211
    :catch_0
    move-exception v4

    .line 1212
    .local v4, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1218
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v6    # "fg":Lcom/android/internal/telephony/Call;
    :cond_3
    :try_start_1
    const-string v8, "mergeCalls(): calling cm.conference()..."

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1221
    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1222
    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1223
    .local v2, "conPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1224
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 1225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mergeCalls: confrence calls on phone = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1236
    .end local v2    # "conPhone":Lcom/android/internal/telephony/Phone;
    :catch_1
    move-exception v5

    .line 1237
    .local v5, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeCalls: caught "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1227
    .end local v5    # "ex":Lcom/android/internal/telephony/CallStateException;
    .restart local v2    # "conPhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mergeCalls: can\'t confrence on phone = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1230
    .end local v2    # "conPhone":Lcom/android/internal/telephony/Phone;
    :cond_5
    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 1234
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    const v5, 0x7f0b0185

    .line 3065
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, p2

    .line 3115
    .end local p2    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3068
    .end local v2    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", presentation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ci "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3078
    .local v0, "absentNumberValues":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p3, v3, :cond_2

    .line 3080
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3081
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    iput v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3089
    :cond_2
    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v3, p3, :cond_5

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p3, v3, :cond_5

    .line 3092
    :cond_3
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v1

    .line 3093
    .local v1, "cnapSpecialCase":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 3099
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v1, v3, :cond_6

    .line 3100
    const v3, 0x7f0b0186

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3105
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpecialCnap: number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; presentation now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3108
    iput v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3112
    .end local v1    # "cnapSpecialCase":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v2, p2

    .line 3115
    .end local p2    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .line 3101
    .end local v2    # "number":Ljava/lang/String;
    .restart local v1    # "cnapSpecialCase":I
    .restart local p2    # "number":Ljava/lang/String;
    :cond_6
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v1, v3, :cond_4

    .line 3102
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 12
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2979
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 2981
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2982
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    .line 2983
    .local v2, "dt":Lcom/mediatek/phone/DualTalkUtils;
    if-eqz v2, :cond_0

    .line 2984
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 2989
    .end local v2    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    :cond_0
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v9, v10

    .line 3019
    :cond_1
    :goto_0
    return v9

    .line 2993
    :cond_2
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 2994
    .local v8, "phoneType":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 2995
    .local v3, "fgCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v11, 0x2

    if-ne v8, v11, :cond_4

    .line 2999
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 3000
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v11, :cond_3

    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getAddCallMenuStateAfterCallWaiting()Z

    move-result v11

    if-nez v11, :cond_1

    :cond_3
    move v9, v10

    goto :goto_0

    .line 3002
    .end local v1    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_4
    if-eq v8, v9, :cond_5

    const/4 v11, 0x3

    if-ne v8, v11, :cond_a

    .line 3009
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    .line 3010
    .local v6, "hasRingingCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 3011
    .local v4, "hasActiveCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 3012
    .local v5, "hasHoldingCall":Z
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    move v0, v9

    .line 3014
    .local v0, "allLinesTaken":Z
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v0, :cond_6

    .line 3015
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/phone/DualTalkUtils;->canAddCallForDualTalk()Z

    move-result v11

    if-nez v11, :cond_9

    move v0, v9

    .line 3019
    :cond_6
    :goto_2
    if-nez v6, :cond_7

    if-nez v0, :cond_7

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v11, :cond_1

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v11, :cond_1

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v11, :cond_1

    :cond_7
    move v9, v10

    goto :goto_0

    .end local v0    # "allLinesTaken":Z
    :cond_8
    move v0, v10

    .line 3012
    goto :goto_1

    .restart local v0    # "allLinesTaken":Z
    :cond_9
    move v0, v10

    .line 3015
    goto :goto_2

    .line 3025
    .end local v0    # "allLinesTaken":Z
    .end local v4    # "hasActiveCall":Z
    .end local v5    # "hasHoldingCall":Z
    .end local v6    # "hasRingingCall":Z
    :cond_a
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method static okToHoldCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 9
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2855
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2856
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 2857
    .local v3, "hasHoldingCall":Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 2861
    .local v2, "fgCallState":Lcom/android/internal/telephony/Call$State;
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_1

    if-nez v3, :cond_1

    move v4, v6

    .line 2862
    .local v4, "okToHold":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_2

    move v5, v6

    .line 2863
    .local v5, "okToUnhold":Z
    :goto_1
    if-nez v4, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    move v0, v6

    .line 2865
    .local v0, "canHold":Z
    :goto_2
    return v0

    .end local v0    # "canHold":Z
    .end local v4    # "okToHold":Z
    .end local v5    # "okToUnhold":Z
    :cond_1
    move v4, v7

    .line 2861
    goto :goto_0

    .restart local v4    # "okToHold":Z
    :cond_2
    move v5, v7

    .line 2862
    goto :goto_1

    .restart local v5    # "okToUnhold":Z
    :cond_3
    move v0, v7

    .line 2863
    goto :goto_2
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 8
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2943
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2945
    .local v3, "phoneType":I
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    .line 2946
    .local v2, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2947
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2948
    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 2949
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2953
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 2955
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2956
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v6, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_2

    iget-object v6, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2964
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_1
    :goto_0
    return v4

    .restart local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_2
    move v4, v5

    .line 2956
    goto :goto_0

    .line 2964
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v6, v6, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method public static okToRecordVoice(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 4389
    const/4 v1, 0x0

    .line 4395
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4397
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 4398
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fgCall state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    const/4 v0, 0x0

    .line 4412
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4413
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4417
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 4419
    const/4 v1, 0x1

    .line 4425
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_0
    return v1

    .line 4415
    .restart local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public static okToShowSwapButton(Lcom/android/internal/telephony/CallManager;)Z
    .locals 7
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v4, 0x1

    .line 3690
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3691
    .local v2, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3692
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    .line 3693
    .local v1, "dt":Lcom/mediatek/phone/DualTalkUtils;
    if-nez v1, :cond_2

    const/4 v3, 0x0

    .line 3695
    .local v3, "realFgCall":Lcom/android/internal/telephony/Call;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "okToShowSwapButton dt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3696
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "okToShowSwapButton realFgCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3698
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3709
    :cond_1
    :goto_1
    return v4

    .line 3693
    .end local v3    # "realFgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto :goto_0

    .line 3704
    .restart local v3    # "realFgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    :cond_4
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->holdAndActiveFromDifPhone(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3709
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static okToSupportHold(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 2873
    const/4 v4, 0x0

    .line 2875
    .local v4, "supportsHold":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2876
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 2877
    .local v3, "hasHoldingCall":Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 2879
    .local v2, "fgCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2881
    const/4 v4, 0x1

    .line 2891
    :cond_0
    :goto_0
    return v4

    .line 2882
    :cond_1
    if-eqz v3, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_0

    .line 2885
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2886
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2888
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 10
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2899
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2902
    .local v5, "phoneType":I
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    .line 2903
    .local v2, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2904
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2905
    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 2906
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2910
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2911
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2912
    .local v4, "dtFgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2913
    .local v3, "dtBgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    .line 2929
    .end local v3    # "dtBgCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "dtFgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return v6

    .restart local v3    # "dtBgCall":Lcom/android/internal/telephony/Call;
    .restart local v4    # "dtFgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    move v6, v7

    .line 2913
    goto :goto_0

    .line 2916
    .end local v3    # "dtBgCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "dtFgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    .line 2919
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2920
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v8, v9, :cond_1

    move v6, v7

    goto :goto_0

    .line 2922
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_4
    if-eq v5, v6, :cond_5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_8

    .line 2929
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_6

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_1

    :cond_7
    move v6, v7

    goto :goto_0

    .line 2934
    :cond_8
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static onHoldClick()V
    .locals 5

    .prologue
    .line 5310
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5311
    .local v0, "hasActiveCall":Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5312
    .local v1, "hasHoldingCall":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->hasDualHoldCallsOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5314
    .local v2, "haveMultipleHoldingCall":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHoldClick: hasActiveCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasHoldingCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5316
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 5319
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5330
    :goto_1
    return-void

    .line 5312
    .end local v2    # "haveMultipleHoldingCall":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5320
    .restart local v2    # "haveMultipleHoldingCall":Z
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 5323
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 5328
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActiveForDualTalk(Z)V

    goto :goto_1
.end method

.method static onSwapClick()V
    .locals 7

    .prologue
    .line 5333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5334
    .local v0, "currentTime":J
    sget-wide v3, Lcom/android/phone/PhoneUtils;->mLastClickActionTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 5335
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5337
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getAllHoldCalls()Ljava/util/List;

    move-result-object v2

    .line 5338
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->selectWhichCallActive(Ljava/util/List;)V

    .line 5342
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :goto_0
    sput-wide v0, Lcom/android/phone/PhoneUtils;->mLastClickActionTime:J

    .line 5344
    :cond_0
    return-void

    .line 5340
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalSwapCalls()V

    goto :goto_0
.end method

.method public static openTTY()V
    .locals 4

    .prologue
    .line 3477
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isEnableTTY()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3486
    .local v0, "audioManager":Landroid/media/AudioManager;
    .local v1, "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 3480
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 3481
    .restart local v1    # "context":Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3482
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    sget-object v2, Lcom/android/phone/PhoneUtils;->sTtyMode:Ljava/lang/String;

    const-string v3, "tty_off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/phone/PhoneUtils;->sIsOpen:Z

    if-nez v2, :cond_0

    .line 3483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneUtils;->sTtyMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3484
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsOpen:Z

    goto :goto_0
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "primarySipUri"    # Ljava/lang/String;

    .prologue
    .line 3204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickPhoneBasedOnNumber: scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sipUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3210
    if-eqz p3, :cond_1

    .line 3211
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3212
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 3215
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    return-object v0

    .line 3204
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 3215
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_1
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactRef"    # Landroid/net/Uri;
    .param p4, "isEmergencyCall"    # Z

    .prologue
    .line 799
    sget-object v5, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;Z)I

    move-result v0

    return v0
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;Z)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactRef"    # Landroid/net/Uri;
    .param p4, "isEmergencyCall"    # Z
    .param p5, "gatewayInfo"    # Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .param p6, "callGateway"    # Lcom/android/phone/CallGatewayManager;
    .param p7, "isIMSOnly"    # Z

    .prologue
    .line 827
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/phone/PhoneUtils;->placeCallGemini(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;IZ)I

    move-result v0

    return v0
.end method

.method public static placeCallGemini(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;IZ)I
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactRef"    # Landroid/net/Uri;
    .param p4, "isEmergencyCall"    # Z
    .param p5, "gatewayInfo"    # Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .param p6, "callGateway"    # Lcom/android/phone/CallGatewayManager;
    .param p7, "simId"    # I
    .param p8, "isIMSOnly"    # Z

    .prologue
    .line 834
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->gatewayUri:Landroid/net/Uri;

    .line 837
    .local v9, "gatewayUri":Landroid/net/Uri;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "placeCall \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' GW:\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 840
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 841
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->resetBeforeCall()V

    .line 842
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 845
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v20

    if-nez v20, :cond_2

    .line 846
    const/16 v16, 0x2

    .line 1013
    :cond_1
    :goto_0
    return v16

    .line 849
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    .line 851
    .local v4, "app":Lcom/android/phone/PhoneGlobals;
    const/16 v18, 0x0

    .line 852
    .local v18, "useGateway":Z
    if-eqz v9, :cond_3

    if-nez p4, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 855
    const/16 v18, 0x1

    .line 858
    :cond_3
    const/16 v16, 0x0

    .line 861
    .local v16, "status":I
    if-eqz v18, :cond_c

    .line 864
    if-eqz v9, :cond_4

    const-string v20, "tel"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 865
    :cond_4
    const-string v20, "PhoneUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unsupported URL:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/16 v16, 0x2

    goto :goto_0

    .line 874
    :cond_5
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 881
    .local v12, "numberToDial":Ljava/lang/String;
    :goto_1
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v10, 0x1

    .line 883
    .local v10, "initiallyIdle":Z
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const/4 v11, 0x1

    .line 885
    .local v11, "isSipCall":Z
    :goto_3
    move-object v13, v12

    .line 886
    .local v13, "originalNumber":Ljava/lang/String;
    if-eqz p4, :cond_f

    .line 887
    invoke-static/range {p0 .. p0}, Lcom/android/phone/TelephonyCapabilities;->supportsDialingEmergencyNumberDirectly(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string v20, "111"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/phone/TelephonyCapabilities;->supportsDialingEmergencyNumberWithSuffix(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 890
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "111"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 893
    :cond_6
    const-string v20, "TW"

    invoke-static/range {v20 .. v20}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 894
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v20

    if-eqz v20, :cond_8

    .line 895
    const-string v20, "110"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "119"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 896
    :cond_7
    const-string v12, "112"

    .line 912
    :cond_8
    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneType(Lcom/android/internal/telephony/Phone;I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 913
    invoke-static {v12}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->replaceCdmaInternationalAccessCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 917
    :cond_9
    const-string v20, "+860"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 918
    const-string v20, "+860"

    const-string v21, "+86"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 927
    :cond_a
    :goto_5
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-static {v0, v12, v1, v2}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;IZ)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 942
    .local v6, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz p6, :cond_b

    .line 943
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v6, v1}, Lcom/android/phone/CallGatewayManager;->setGatewayInfoForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)V

    .line 948
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneType(Lcom/android/internal/telephony/Phone;I)I

    move-result v14

    .line 952
    .local v14, "phoneType":I
    if-nez v6, :cond_13

    .line 953
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_12

    if-nez v9, :cond_12

    .line 954
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dialed MMI code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 955
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 876
    .end local v6    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v10    # "initiallyIdle":Z
    .end local v11    # "isSipCall":Z
    .end local v12    # "numberToDial":Ljava/lang/String;
    .end local v13    # "originalNumber":Ljava/lang/String;
    .end local v14    # "phoneType":I
    :cond_c
    move-object/from16 v12, p2

    .restart local v12    # "numberToDial":Ljava/lang/String;
    goto/16 :goto_1

    .line 881
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 883
    .restart local v10    # "initiallyIdle":Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 901
    .restart local v11    # "isSipCall":Z
    .restart local v13    # "originalNumber":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v17

    .line 903
    .local v17, "tm":Lmiui/telephony/TelephonyManager;
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneType(Lcom/android/internal/telephony/Phone;I)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    invoke-virtual/range {v17 .. v17}, Lmiui/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmiui/telephony/PhoneNumberUtils;->isChineseOperator(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 905
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/phone/settings/AutoIpExceptionSetting;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 906
    const/16 v20, -0x1

    move/from16 v0, p7

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v20, 0x0

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v12, v1}, Lcom/android/phone/PhoneUtils;->formatNumberWithIp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    :cond_10
    move/from16 v20, p7

    goto :goto_6

    .line 919
    .end local v17    # "tm":Lmiui/telephony/TelephonyManager;
    :cond_11
    const-string v20, "00860"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 920
    const-string v20, "00860"

    const-string v21, "0086"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 929
    :catch_0
    move-exception v8

    .line 933
    .local v8, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v20, "PhoneUtils"

    const-string v21, "Exception from app.mCM.dial()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    const/16 v16, 0x2

    goto/16 :goto_0

    .line 957
    .end local v8    # "ex":Lcom/android/internal/telephony/CallStateException;
    .restart local v6    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v14    # "phoneType":I
    :cond_12
    const/16 v16, 0x2

    goto/16 :goto_0

    .line 960
    :cond_13
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v14, v0, :cond_14

    .line 961
    invoke-static {v4, v6}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Connection;)V

    .line 964
    :cond_14
    if-nez v9, :cond_15

    .line 970
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v7, "content"

    .line 971
    .local v7, "content":Ljava/lang/String;
    if-eqz p3, :cond_15

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 972
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v19

    .line 973
    .local v19, "userDataObject":Ljava/lang/Object;
    if-nez v19, :cond_17

    .line 974
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 989
    .end local v7    # "content":Ljava/lang/String;
    .end local v19    # "userDataObject":Ljava/lang/Object;
    :cond_15
    :goto_7
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p5

    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 992
    if-eqz p4, :cond_16

    .line 993
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 999
    :cond_16
    const-string v20, "about to activate speaker"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1001
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v15

    .line 1003
    .local v15, "speakerActivated":Z
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v5

    .line 1005
    .local v5, "btManager":Lcom/android/phone/BluetoothManager;
    if-eqz v10, :cond_1

    if-nez v15, :cond_1

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v5}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1008
    const-string v20, "PhoneUtils"

    const-string v21, "Forcing speaker off when initiating a new outgoing call..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 979
    .end local v5    # "btManager":Lcom/android/phone/BluetoothManager;
    .end local v15    # "speakerActivated":Z
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v19    # "userDataObject":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_18

    .line 980
    check-cast v19, Lcom/android/internal/telephony/CallerInfo;

    .end local v19    # "userDataObject":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_7

    .line 982
    .restart local v19    # "userDataObject":Ljava/lang/Object;
    :cond_18
    check-cast v19, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v19    # "userDataObject":Ljava/lang/Object;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_7
.end method

.method public static placeCallRegister(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 3611
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3612
    .local v0, "isSipCall":Z
    :goto_0
    const-string v1, "PhoneUtils"

    const-string v2, "placeCallRegister: "

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3614
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    sget-object v2, Lcom/android/phone/PhoneUtils;->PHONE_SPEECH_INFO_GEMINI:[I

    invoke-static {p0, v1, v2}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForSpeechInfo(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 3616
    return-void

    .line 3611
    .end local v0    # "isSipCall":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)I
    .locals 13
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1020
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v12

    .line 1021
    .local v12, "userData":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1022
    .local v9, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    instance-of v0, v12, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    move-object v9, v12

    .line 1023
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 1025
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    .line 1026
    .local v10, "on":Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    sget-object v5, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    const/4 v6, 0x0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v8}, Lcom/android/phone/PhoneUtils;->placeCallGemini(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;IZ)I

    move-result v11

    .line 1030
    .local v11, "state":I
    if-eqz v10, :cond_1

    .line 1031
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1033
    :cond_1
    return v11
.end method

.method public static resetRepeatedCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 5786
    sget-object v0, Lcom/android/phone/PhoneUtils;->REPEATED_CALLS:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5787
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cleanOutOfDatedCall()V

    .line 5788
    return-void
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 1120
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1127
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1128
    const/4 v2, 0x0

    .line 1129
    .local v2, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    .line 1130
    .local v1, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1132
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1134
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1138
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1144
    .end local v1    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    :goto_1
    if-eqz v0, :cond_6

    .line 1146
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1149
    .local v4, "phoneType":I
    const/4 v5, 0x0

    .line 1155
    .local v5, "shouldMute":Ljava/lang/Boolean;
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 1156
    sget-object v6, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "shouldMute":Ljava/lang/Boolean;
    check-cast v5, Ljava/lang/Boolean;

    .line 1162
    .restart local v5    # "shouldMute":Ljava/lang/Boolean;
    :cond_0
    :goto_2
    if-nez v5, :cond_1

    .line 1163
    const-string v6, "problem retrieving mute value for this connection."

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1164
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1168
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 1171
    .end local v4    # "phoneType":I
    .end local v5    # "shouldMute":Ljava/lang/Boolean;
    :goto_3
    return-object v5

    .line 1136
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v1    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    .restart local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    goto :goto_0

    .line 1140
    .end local v1    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_1

    .line 1158
    .restart local v4    # "phoneType":I
    .restart local v5    # "shouldMute":Ljava/lang/Boolean;
    :cond_4
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    .line 1160
    :cond_5
    sget-object v6, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "shouldMute":Ljava/lang/Boolean;
    check-cast v5, Ljava/lang/Boolean;

    .restart local v5    # "shouldMute":Ljava/lang/Boolean;
    goto :goto_2

    .line 1171
    .end local v4    # "phoneType":I
    .end local v5    # "shouldMute":Ljava/lang/Boolean;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_3
.end method

.method static restoreNoiseSuppression(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreNoiseSuppression, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2488
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2496
    :cond_0
    :goto_0
    return-void

    .line 2493
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    if-eq v0, v1, :cond_0

    .line 2494
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSpeakerMode, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2448
    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->forceSpeakerOn(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2450
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_0

    .line 2451
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2454
    :cond_0
    return-void
.end method

.method static secondaryHoldPhotoClicked()V
    .locals 1

    .prologue
    .line 5583
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5585
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->handleUnholdAndEnd(Lcom/android/internal/telephony/Call;)V

    .line 5589
    :cond_0
    :goto_0
    return-void

    .line 5586
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5587
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalSwapCalls()V

    goto :goto_0
.end method

.method static selectWhichCallActive(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5372
    .local p0, "holdList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+selectWhichCallActive, holdList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5375
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 5376
    .local v0, "call":Lcom/android/internal/telephony/Call;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectWhichCallActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5379
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    sget-object v2, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-eqz v2, :cond_1

    .line 5380
    sget-object v2, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    sget-object v3, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5386
    :goto_1
    const-string v2, "-selectWhichCallActive"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5388
    return-void

    .line 5383
    :cond_1
    const-string v2, "-selectWhichCallActive, do nothing, mConnectionHandler is null"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1066
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1067
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1068
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1070
    const-string v1, "PhoneUtils"

    const-string v2, "onReceive: (CDMA) sending empty flash to network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1074
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_0
    return-void
.end method

.method public static sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 3269
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send view notification to Contacts (uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.VIEW_NOTIFICATION"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3271
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.ViewNotificationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3273
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3274
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p0, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1244
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "separateCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :goto_0
    return-void

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setActionBar(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 5671
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 5672
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 5673
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 5675
    :cond_0
    return-void
.end method

.method public static setAudioControlState(I)V
    .locals 0
    .param p0, "newState"    # I

    .prologue
    .line 3442
    sput p0, Lcom/android/phone/PhoneUtils;->sAudioBehaviourState:I

    .line 3443
    return-void
.end method

.method public static setAudioMode()V
    .locals 1

    .prologue
    .line 2638
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2639
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2645
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAudioMode()..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 2648
    .local v1, "context":Landroid/content/Context;
    const-string v8, "audio"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2650
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    .line 2653
    .local v5, "modeBefore":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    move v2, v6

    .line 2654
    .local v2, "isSipPhone":Z
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getExpectedAudioMode()I

    move-result v3

    .line 2655
    .local v3, "mode":I
    const-string v8, "TTY"

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v2, :cond_0

    .line 2656
    if-nez v3, :cond_0

    sget-object v8, Lcom/android/phone/PhoneUtils;->sTtyMode:Ljava/lang/String;

    const-string v9, "tty_off"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/phone/PhoneUtils;->sIsOpen:Z

    if-eqz v8, :cond_0

    .line 2657
    const-string v8, "tty_mode=tty_off"

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2658
    sput-boolean v7, Lcom/android/phone/PhoneUtils;->sIsOpen:Z

    .line 2662
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 2664
    const-string v7, "TTY"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    .line 2665
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    sget-object v7, Lcom/android/phone/PhoneUtils;->sTtyMode:Ljava/lang/String;

    const-string v8, "tty_off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/android/phone/PhoneUtils;->sIsOpen:Z

    if-nez v7, :cond_1

    .line 2666
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tty_mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneUtils;->sTtyMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2667
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->sIsOpen:Z

    .line 2672
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    .line 2674
    .local v4, "modeAfter":I
    if-eq v5, v4, :cond_3

    .line 2681
    :goto_1
    return-void

    .end local v2    # "isSipPhone":Z
    .end local v3    # "mode":I
    .end local v4    # "modeAfter":I
    :cond_2
    move v2, v7

    .line 2653
    goto :goto_0

    .line 2678
    .restart local v2    # "isSipPhone":Z
    .restart local v3    # "mode":I
    .restart local v4    # "modeAfter":I
    :cond_3
    const-string v6, "PhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAudioMode() no change: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setDualMicMode(Ljava/lang/String;)V
    .locals 4
    .param p0, "dualMic"    # Ljava/lang/String;

    .prologue
    .line 3759
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3760
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 3766
    :goto_0
    return-void

    .line 3763
    :cond_0
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3765
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable_Dual_Mic_Setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setMmiFinished(Z)V
    .locals 0
    .param p0, "state"    # Z

    .prologue
    .line 3552
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->sMmiFinished:Z

    .line 3553
    return-void
.end method

.method static setMute(Z)V
    .locals 7
    .param p0, "muted"    # Z

    .prologue
    .line 2526
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v0, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2528
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isInEmergencyCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2529
    const/4 p0, 0x0

    .line 2532
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2535
    const/4 v3, 0x0

    .line 2536
    .local v3, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    .line 2537
    .local v2, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2539
    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2546
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2547
    .local v1, "cn":Lcom/android/internal/telephony/Connection;
    sget-object v5, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2548
    const-string v5, "problem retrieving mute value for this connection."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2550
    :cond_1
    sget-object v5, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2541
    .end local v1    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto :goto_0

    .line 2564
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2565
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2566
    .restart local v1    # "cn":Lcom/android/internal/telephony/Connection;
    sget-object v5, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 2567
    const-string v5, "problem retrieving mute value for this connection."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2569
    :cond_4
    sget-object v5, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2574
    .end local v1    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_5
    return-void
.end method

.method private static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "muted"    # Z

    .prologue
    .line 2591
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2592
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2596
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v3

    .line 2599
    .local v3, "oldMuted":Z
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 2601
    .local v4, "routeToAudioManager":Z
    if-eqz v4, :cond_1

    .line 2602
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2604
    .local v1, "audioManager":Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMuteInternal: using setMicrophoneMute("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2610
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    iget-object v5, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 2613
    if-eq v3, p1, :cond_0

    .line 2614
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getAudioRouter()Lcom/android/phone/AudioRouter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/phone/AudioRouter;->onMuteChange(Z)V

    .line 2617
    :cond_0
    return-void

    .line 2607
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMuteInternal: using phone.setMute("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2608
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method public static setPhoneSwapStatus(Z)V
    .locals 0
    .param p0, "status"    # Z

    .prologue
    .line 3464
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->sPhoneSwapStatus:Z

    .line 3465
    return-void
.end method

.method public static setSpeaker(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 5596
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 5597
    return-void
.end method

.method public static setSpeakerForVT(Z)V
    .locals 6
    .param p0, "onOff"    # Z

    .prologue
    .line 5048
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 5049
    .local v2, "mApp":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v3

    .line 5050
    .local v3, "wiredHeadsetManager":Lcom/android/phone/WiredHeadsetManager;
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v1

    .line 5051
    .local v1, "bluetoothManager":Lcom/android/phone/BluetoothManager;
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getAudioRouter()Lcom/android/phone/AudioRouter;

    move-result-object v0

    .line 5052
    .local v0, "audioRouter":Lcom/android/phone/AudioRouter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wiredHeadsetManager = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bluetoothManager = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", audioRouter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5055
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 5064
    invoke-virtual {v0, p0}, Lcom/android/phone/AudioRouter;->setSpeaker(Z)V

    .line 5066
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p0, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5068
    :cond_0
    return-void
.end method

.method public static setTtyMode(Ljava/lang/String;)V
    .locals 0
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 3473
    sput-object p0, Lcom/android/phone/PhoneUtils;->sTtyMode:Ljava/lang/String;

    .line 3474
    return-void
.end method

.method public static shouldAutoReject(Lcom/android/internal/telephony/Connection;)Z
    .locals 11
    .param p0, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4047
    const-string v7, "shouldAutoReject..."

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4048
    if-nez p0, :cond_1

    .line 4082
    :cond_0
    :goto_0
    return v9

    .line 4053
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 4054
    .local v6, "userDataObject":Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_2

    move-object v2, v6

    .line 4055
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 4056
    .local v2, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "instanceof CallerInfo, flag is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v10, v2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4057
    iget-boolean v7, v2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v7, :cond_2

    move v9, v8

    .line 4058
    goto :goto_0

    .line 4063
    .end local v2    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    :cond_2
    new-instance v1, Lcom/mediatek/phone/BlackListManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/mediatek/phone/BlackListManager;-><init>(Landroid/content/Context;)V

    .line 4064
    .local v1, "bm":Lcom/mediatek/phone/BlackListManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4065
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4067
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_1
    invoke-virtual {v1, v0, v7}, Lcom/mediatek/phone/BlackListManager;->shouldBlock(Ljava/lang/String;I)Z

    move-result v5

    .line 4072
    .local v5, "isInBlackList":Z
    const/4 v4, 0x0

    .line 4073
    .local v4, "isAutoReject":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v7, v0}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v3

    .line 4074
    .local v3, "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    if-eqz v3, :cond_3

    .line 4075
    iget-boolean v4, v3, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    .line 4077
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the call should be rejected by black list or auto reject: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " / "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4078
    if-nez v5, :cond_4

    if-eqz v4, :cond_0

    :cond_4
    move v9, v8

    .line 4079
    goto :goto_0

    .end local v3    # "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    .end local v4    # "isAutoReject":Z
    .end local v5    # "isInBlackList":Z
    :cond_5
    move v7, v9

    .line 4067
    goto :goto_1
.end method

.method static showSelectCallDialog(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "holdList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+showSelectCallDialog, holdList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5392
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 5393
    .local v3, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 5394
    .local v2, "callSelectDialog":Lmiui/app/AlertDialog;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5395
    :cond_0
    new-instance v5, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v5, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 5399
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    new-instance v1, Lcom/mediatek/phone/CallPickerAdapter;

    invoke-direct {v1, v3, p0}, Lcom/mediatek/phone/CallPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 5400
    .local v1, "callPickerAdapter":Lcom/mediatek/phone/CallPickerAdapter;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v9, v4, :cond_1

    .line 5401
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/mediatek/phone/CallPickerAdapter;->setOperatorName(Ljava/lang/String;Ljava/lang/String;)V

    .line 5403
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getOperatorColorByCall(Lcom/android/internal/telephony/Call;)I

    move-result v5

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getOperatorColorByCall(Lcom/android/internal/telephony/Call;)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lcom/mediatek/phone/CallPickerAdapter;->setOperatorColor(II)V

    .line 5405
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->getCallInfoName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getCallInfoName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mediatek/phone/CallPickerAdapter;->setCallerInfoName(Ljava/lang/String;Ljava/lang/String;)V

    .line 5408
    const/4 v4, -0x1

    new-instance v5, Lcom/android/phone/PhoneUtils$5;

    invoke-direct {v5}, Lcom/android/phone/PhoneUtils$5;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b010b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 5444
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    .line 5445
    invoke-virtual {v2}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 5447
    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    .line 5450
    .end local v0    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v1    # "callPickerAdapter":Lcom/mediatek/phone/CallPickerAdapter;
    :cond_1
    return-void
.end method

.method public static specialNumberTransfer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 4121
    if-nez p0, :cond_0

    .line 4122
    const/4 p0, 0x0

    .line 4127
    :goto_0
    return-object p0

    .line 4124
    :cond_0
    const/16 v0, 0x70

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x77

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 4125
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4126
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4127
    goto :goto_0
.end method

.method public static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .param p2, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 1887
    const/4 v0, 0x0

    .line 1888
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1889
    .local v1, "phoneType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1890
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1898
    :goto_0
    invoke-static {p0, v0, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    return-object v2

    .line 1891
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1893
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1895
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .param p2, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;
    .param p4, "needClearUserData"    # Z

    .prologue
    .line 3650
    const/4 v0, 0x0

    .line 3651
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3652
    .local v1, "phoneType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3653
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3661
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 3662
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 3665
    :cond_0
    invoke-static {p0, v0, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    return-object v2

    .line 3654
    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 3656
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 3658
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 1903
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    return-object v0
.end method

.method public static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;
    .param p4, "info"    # Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    .prologue
    .line 1914
    if-nez p1, :cond_0

    .line 1916
    new-instance v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1917
    .local v16, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-object/from16 v17, v16

    .line 2165
    .end local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local v17, "cit":Ljava/lang/Object;
    :goto_0
    return-object v17

    .line 1921
    .end local v17    # "cit":Ljava/lang/Object;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v8, 0x1

    .line 1923
    .local v8, "isSipConn":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v19

    .line 1960
    .local v19, "userDataObject":Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getSlotNotIdle(Lcom/android/internal/telephony/Phone;)I

    move-result v7

    .line 1961
    .local v7, "slotId":I
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetCallerInfo slotId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 1968
    new-instance v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1969
    .restart local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1970
    const/4 v3, -0x1

    move-object/from16 v2, v19

    check-cast v2, Landroid/net/Uri;

    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v2, v5, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1972
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    const/4 v3, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1973
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1975
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query based on Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .end local v19    # "userDataObject":Ljava/lang/Object;
    :goto_2
    move-object/from16 v17, v16

    .line 2165
    .restart local v17    # "cit":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1921
    .end local v7    # "slotId":I
    .end local v8    # "isSipConn":Z
    .end local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v17    # "cit":Ljava/lang/Object;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1979
    .restart local v7    # "slotId":I
    .restart local v8    # "isSipConn":Z
    .restart local v19    # "userDataObject":Ljava/lang/Object;
    :cond_2
    if-nez v19, :cond_6

    .line 1982
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1983
    .local v4, "number":Ljava/lang/String;
    if-eqz p4, :cond_3

    sget-object v2, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-object/from16 v0, p4

    if-eq v0, v2, :cond_3

    .line 1986
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    .line 1990
    :cond_3
    const-string v2, "PhoneUtils.startGetCallerInfo: new query for phone number..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- number (address): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1994
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    .line 1995
    .local v18, "phoneType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- phoneType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1996
    packed-switch v18, :pswitch_data_0

    .line 2001
    const-string v2, "  ==> Unknown phone type"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2005
    :goto_3
    new-instance v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2006
    .restart local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2010
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2011
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2013
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2014
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: CNAP Info from FW(1): name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2024
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2027
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2030
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2034
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_4

    .line 2035
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2059
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query based on number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1997
    .end local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_0
    const-string v2, "  ==> PHONE_TYPE_NONE"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1998
    :pswitch_1
    const-string v2, "  ==> PHONE_TYPE_GSM"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1999
    :pswitch_2
    const-string v2, "  ==> PHONE_TYPE_CDMA"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2000
    :pswitch_3
    const-string v2, "  ==> PHONE_TYPE_SIP"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2037
    .restart local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_4
    const-string v2, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2042
    const/4 v2, -0x1

    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-static/range {v2 .. v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->startQueryGemini(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;IZ)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2046
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    const/4 v3, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2047
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_4

    .line 2055
    :cond_5
    const-string v2, "startGetCallerInfo: No query to start, send trivial reply."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2056
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_4

    .line 2065
    .end local v4    # "number":Ljava/lang/String;
    .end local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v18    # "phoneType":I
    :cond_6
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_c

    move-object/from16 v16, v19

    .line 2069
    check-cast v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 2072
    .restart local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v2, :cond_7

    .line 2073
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    const/4 v3, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query already running, adding listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2079
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 2080
    .local v11, "updatedNumber":Ljava/lang/String;
    if-eqz p4, :cond_8

    .line 2083
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    .line 2086
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: updatedNumber initially = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2089
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2091
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2093
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2094
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2095
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2097
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move-object/from16 v0, p0

    invoke-static {v0, v2, v11, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2100
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v11, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: updatedNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: CNAP Info from FW(2): name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2115
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_9

    .line 2116
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_2

    .line 2122
    :cond_9
    const/4 v9, -0x1

    sget-object v12, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v10, p0

    move-object/from16 v13, p1

    move v14, v7

    move v15, v8

    invoke-static/range {v9 .. v15}, Lcom/mediatek/phone/gemini/GeminiUtils;->startQueryGemini(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;IZ)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2125
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    const/4 v3, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2126
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_2

    .line 2129
    :cond_a
    const-string v2, "startGetCallerInfo: No query to attach to, send trivial reply."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2130
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v2, :cond_b

    .line 2131
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2134
    :cond_b
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2136
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2137
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2138
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: CNAP Info from FW(3): name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2147
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_2

    .line 2157
    .end local v11    # "updatedNumber":Ljava/lang/String;
    .end local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_c
    new-instance v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2158
    .restart local v16    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    check-cast v19, Lcom/android/internal/telephony/CallerInfo;

    .end local v19    # "userDataObject":Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2159
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2160
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2162
    const-string v2, "startGetCallerInfo: query already done, returning CallerInfo"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> cit.currentInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1996
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2364
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2367
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2368
    const-string v4, "PhoneUtils"

    const-string v5, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2399
    :goto_0
    return v3

    .line 2377
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2378
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2382
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2383
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2388
    const-string v5, "add_call_mode"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2390
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2399
    goto :goto_0

    .line 2391
    :catch_0
    move-exception v1

    .line 2395
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "PhoneUtils"

    const-string v5, "Activity for adding calls isn\'t found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static swapCallsByCondition()V
    .locals 6

    .prologue
    .line 5524
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5525
    .local v0, "currentTime":J
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/android/phone/PhoneUtils;->mLastClickActionTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 5526
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalSwapCalls()V

    .line 5527
    sput-wide v0, Lcom/android/phone/PhoneUtils;->mLastClickActionTime:J

    .line 5529
    const-string v2, "Respond the swap click action."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5536
    :goto_0
    return-void

    .line 5533
    :cond_0
    const-string v2, "Ignore the swap click action."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p0, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1080
    const-string v3, "switchHoldingAndActive()..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1084
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1085
    const-string v3, "switchHoldingAndActive(), there has a video call and can not do switch with this."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1113
    :goto_0
    return-void

    .line 1092
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v1, v3, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 1093
    .local v1, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isMultiplePhoneActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1095
    const-string v3, "switchHoldingAndActive(), sPhoneSwapStatus set true!"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1096
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sPhoneSwapStatus:Z

    .line 1101
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1102
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1104
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1109
    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1110
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v2

    .line 1111
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchHoldingAndActive: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1107
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    .restart local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static switchHoldingAndActiveForDualTalk(Z)V
    .locals 4
    .param p0, "hasActiveCall"    # Z

    .prologue
    .line 5347
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->isMultiplePhoneActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->hasActiveCdmaPhone()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5350
    if-eqz p0, :cond_1

    .line 5351
    const-string v3, "switchHoldingAndActiveForDualTalk: has active call."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5352
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 5354
    .local v2, "fgCall":Lcom/android/internal/telephony/Call;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5368
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-void

    .line 5355
    .restart local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v1

    .line 5356
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "switchHoldingAndActiveForDualTalk: CallStateException."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5359
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v3, "switchHoldingAndActiveForDualTalk: has two background calls"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 5360
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 5362
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5363
    :catch_1
    move-exception v1

    .line 5364
    .restart local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "switchHoldingAndActiveForDualTalk: CallStateException."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1038
    if-nez p0, :cond_0

    .line 1039
    const-string p0, ""

    .line 1043
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static turnOnNoiseSuppression(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z
    .param p2, "store"    # Z

    .prologue
    .line 2463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnNoiseSuppression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2464
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2466
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2483
    :cond_0
    :goto_0
    return-void

    .line 2470
    :cond_1
    if-eqz p1, :cond_2

    .line 2471
    const-string v1, "noise_suppression=auto"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2477
    :goto_1
    if-eqz p2, :cond_0

    .line 2478
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    goto :goto_0

    .line 2473
    :cond_2
    const-string v1, "noise_suppression=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z
    .param p2, "store"    # Z

    .prologue
    .line 2410
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 2411
    return-void
.end method

.method public static turnOnSpeaker(Landroid/content/Context;ZZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z
    .param p2, "store"    # Z
    .param p3, "isUpdateNotification"    # Z

    .prologue
    .line 2414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnSpeaker(flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", store="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2415
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2417
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2418
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2421
    if-eqz p2, :cond_0

    .line 2422
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 2427
    :cond_0
    if-eqz p3, :cond_1

    .line 2429
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, p1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 2436
    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 2438
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 2439
    return-void
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 788
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 786
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/CallModeler;->setCdmaOutgoing3WayCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method public static updateRepeatedBlockedCall(Ljava/lang/String;I)V
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "blockType"    # I

    .prologue
    .line 5852
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 5860
    :goto_0
    return-void

    .line 5858
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->REPEATED_BLOCKED_CALLS:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5859
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cleanOutOfDatedBlockedCall()V

    goto :goto_0
.end method

.method public static updateRepeatedCall(Ljava/lang/String;)V
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 5777
    sget-object v0, Lcom/android/phone/PhoneUtils;->REPEATED_CALLS:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5778
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cleanOutOfDatedCall()V

    .line 5779
    return-void
.end method

.method public static updateSpeaker()V
    .locals 10

    .prologue
    .line 5623
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    .line 5624
    .local v2, "callManager":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    .line 5625
    .local v3, "hasRingingCall":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 5626
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    if-eqz v3, :cond_0

    .line 5627
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 5628
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 5629
    .local v6, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    .line 5630
    .local v4, "isRealIncomingCall":Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    .line 5631
    .local v7, "speakerActivated":Z
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v1

    .line 5632
    .local v1, "btManager":Lcom/android/phone/BluetoothManager;
    if-eqz v4, :cond_0

    if-nez v7, :cond_0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5636
    const-string v8, "PhoneUtils"

    const-string v9, "Forcing speaker off due to new incoming call..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5640
    .end local v1    # "btManager":Lcom/android/phone/BluetoothManager;
    .end local v4    # "isRealIncomingCall":Z
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "ringingCall":Lcom/android/internal/telephony/Call;
    .end local v7    # "speakerActivated":Z
    :cond_0
    return-void
.end method

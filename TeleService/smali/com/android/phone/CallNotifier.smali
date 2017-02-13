.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$5;,
        Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;,
        Lcom/android/phone/CallNotifier$GeminiPhoneStateListener;,
        Lcom/android/phone/CallNotifier$CustomInfo;,
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final BRACELET_ACTION_INCOMINGCALL:Ljava/lang/String; = "miui.phone.ACTION_ALARM"

.field private static final BRACELET_ACTION_PERMISSION:Ljava/lang/String; = "miui.permission.BLE_IMMEDIATE_ALERT"

.field private static final BRACELET_EXTRA_CONTACT:Ljava/lang/String; = "contact"

.field private static final BRACELET_EXTRA_NUMBER:Ljava/lang/String; = "number"

.field private static final BRACELET_EXTRA_YELLOWPAGE_NAME:Ljava/lang/String; = "yellow_page"

.field private static final BRACELET_EXTRA_YELLOWPAGE_TAG:Ljava/lang/String; = "tag"

.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

.field private static final CALLWAITING_ADDCALL_DISABLE_TIME:I = 0x7530

.field private static final CALLWAITING_ADDCALL_DISABLE_TIMEOUT:I = 0x17

.field private static final CALLWAITING_CALLERINFO_DISPLAY_DONE:I = 0x16

.field private static final CALLWAITING_CALLERINFO_DISPLAY_TIME:I = 0x4e20

.field public static final CALL_DURATION_THRESHOLD_FOR_CALL_HISTORY:I = 0x2710

.field public static final CALL_TYPE_NONE:I = 0x0

.field public static final CALL_TYPE_SIP:I = -0x2

.field private static final CDMA_CALL_WAITING_REJECT:I = 0x1a

.field private static final CDMA_PHONE_RING_DELAY:I = 0x2b

.field private static final CRESCENDO_RINGER_TIME:I = 0x4

.field private static final CRESCENDO_RINGER_TIME_WITH_HEADSET:I = 0xc

.field private static final DBG:Z = true

.field private static final DELAY_AUTO_ANSWER:I = 0x7d

.field private static final DISPLAYINFO_NOTIFICATION_DONE:I = 0x18

.field private static final DISPLAYINFO_NOTIFICATION_TIME:I = 0x7d0

.field private static final DISPLAY_BUSY_MESSAGE:I = 0x32

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_OFF:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final EVENT_AUTO_ANSWER_CALL:I = 0x3ea

.field private static final EVENT_CIPHER_INDICATION:I = 0x3c

.field private static final EVENT_HARD_REDIAL:I = 0x3e9

.field private static final EVENT_OPEN_SMART_ANTISPAM:I = 0x3ec

.field private static final EVENT_REMIND_USER_SUSPECT_CALL:I = 0x3ed

.field private static final EVENT_SET_RINGER_VOLUME:I = 0x3eb

.field private static final EVENT_SIMINFO_CHANGED:I = 0x7d1

.field private static final EVENT_START_CALL_RECORD:I = 0x3ee

.field private static final EVENT_VOICE_REPORT:I = 0x3ef

.field private static final FAKE_PHONE_INCOMING_RING:I = 0x2a

.field private static final FAKE_SIP_PHONE_INCOMING_RING_DELAY:I = 0x7d0

.field private static final HARD_REDIAL_DELAY:I = 0x3a98

.field private static final LAST_ANTISPAM_NOTIFICATION_TIME_KEY:Ljava/lang/String; = "last_antispam_notification_time"

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field private static final MO_CALL_VIBRATE_TIME:I = 0x12c

.field private static final PHONE_MWI_CHANGED:I = 0x15

.field private static final PHONE_MWI_CHANGED2:I = 0x79

.field private static final PHONE_MWI_CHANGED3:I = 0xdd

.field private static final PHONE_MWI_CHANGED4:I = 0x141

.field private static final PHONE_MWI_CHANGED_GEMINI:[I

.field private static final PHONE_STATE_LISTENER_EVENT:I = 0xd

.field private static final PHONE_WAITING_DISCONNECT_STOP_TONE_PLAYER:I = 0x12

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1f4

.field private static final SPECIAL_SP_NUMBER:Ljava/lang/String; = "95105105"

.field private static final TONE_RELATIVE_VOLUME_SIGNALINFO:I = 0x50

.field private static final UPDATE_IN_CALL_NOTIFICATION:I = 0x1b

.field private static final VDBG:Z = true

.field private static final VOICE_REPORT_DELAY:I = 0x1388

.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field private isQueryInProcess:Z

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mAsyncResultForCdmaCallWaiting:Landroid/os/AsyncResult;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field private mCallModeler:Lcom/android/phone/CallModeler;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCfiStatus:[Z

.field private mCurrentEmergencyToneState:I

.field mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mExtension:Lcom/mediatek/phone/ext/CallNotifierExtension;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field protected mIsRedialCall:Z

.field private mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

.field private mPreviousBgCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

.field private mProfileMaqnager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mRedialTimes:I

.field private mRinger:Lcom/android/phone/Ringer;

.field private mRingerVolume:I

.field private mRingerVolumeControlling:Z

.field private mSensorEventListener:Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;

.field private mShouldSkipRing:Z

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mVoicePrivacyState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3515
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallNotifier;->PHONE_MWI_CHANGED_GEMINI:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x15
        0x79
        0xdd
        0x141
    .end array-data
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;Lcom/android/phone/CallModeler;)V
    .locals 4
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "ringer"    # Lcom/android/phone/Ringer;
    .param p4, "callLogger"    # Lcom/android/phone/CallLogger;
    .param p5, "callStateMonitor"    # Lcom/android/phone/CallStateMonitor;
    .param p6, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;
    .param p7, "callModeler"    # Lcom/android/phone/CallModeler;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 180
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 187
    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 244
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 245
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 249
    iput v2, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 265
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    .line 267
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mPreviousBgCallState:Lcom/android/internal/telephony/Call$State;

    .line 271
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    .line 272
    iput v2, p0, Lcom/android/phone/CallNotifier;->mRingerVolume:I

    .line 274
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 275
    iput v2, p0, Lcom/android/phone/CallNotifier;->mRedialTimes:I

    .line 2778
    new-instance v1, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2896
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3154
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 3180
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3520
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    .line 3522
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCfiStatus:[Z

    .line 3915
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mShouldSkipRing:Z

    .line 4248
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->isQueryInProcess:Z

    .line 299
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 300
    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 301
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 302
    iput-object p6, p0, Lcom/android/phone/CallNotifier;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 303
    iput-object p7, p0, Lcom/android/phone/CallNotifier;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 305
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 307
    invoke-virtual {p5, p0}, Lcom/android/phone/CallStateMonitor;->addListener(Landroid/os/Handler;)V

    .line 309
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 311
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 312
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 313
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->listenPhoneState()V

    .line 330
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->initCallNotifierMtk()V

    .line 333
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->initTts()V

    .line 334
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/CallNotifier;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/CallNotifier;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCfiStatus:[Z

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CallNotifier;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/CallNotifier;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/CallNotifier;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/CallNotifier;)Lcom/android/phone/Ringer;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->decrescendoRingerVolume()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->isQueryInProcess:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/CallNotifier;Landroid/content/Intent;Lmiui/yellowpage/YellowPagePhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lmiui/yellowpage/YellowPagePhone;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->notifyToMiband(Landroid/content/Intent;Lmiui/yellowpage/YellowPagePhone;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    return-void
.end method

.method private applyAutoAnswerCall()V
    .locals 6

    .prologue
    .line 3865
    const-string v3, "applyAutoAnswerCall~~"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3872
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v4, "com.mediatek.engineermode"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneGlobals;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 3874
    .local v1, "friendContext":Landroid/content/Context;
    const-string v3, "AutoAnswer"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3877
    .local v2, "sh":Landroid/content/SharedPreferences;
    const-string v3, "flag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3878
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v3, :cond_0

    .line 3879
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3885
    .end local v1    # "friendContext":Landroid/content/Context;
    .end local v2    # "sh":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 3882
    :catch_0
    move-exception v0

    .line 3883
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private autoVTVoiceAnswerCallIfNeed(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .param p1, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 2960
    return-void
.end method

.method private checkAndTriggerRingTone()V
    .locals 8

    .prologue
    .line 3328
    const-string v6, "checkAndTriggerRingTone"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3329
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3330
    :cond_0
    const-string v6, "checkAndTriggerRingTone:  return directly"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3360
    :cond_1
    :goto_0
    return-void

    .line 3333
    :cond_2
    const-string v6, "trigger the ringtone!"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3334
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 3335
    .local v4, "ringCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3337
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3338
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 3341
    const/4 v2, 0x0

    .line 3342
    .local v2, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 3343
    .local v3, "obj":Ljava/lang/Object;
    instance-of v6, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v6, :cond_4

    .line 3344
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3    # "obj":Ljava/lang/Object;
    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3349
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    iget-object v6, v2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v6, :cond_5

    .line 3350
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v7, v2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3358
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 3345
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v6, v3, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_3

    move-object v2, v3

    .line 3346
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 3353
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v5

    .line 3354
    .local v5, "slotId":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-static {v6, v5}, Lmiui/util/SimRingtoneUtils;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 3355
    .local v1, "defaultRingtoneUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method private checkVoiceReport()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4034
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voiceassist_report_method"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4035
    .local v1, "method":I
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voiceassist_phone_report"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4036
    .local v2, "sr":I
    if-eq v1, v7, :cond_0

    if-gtz v2, :cond_1

    .line 4045
    :cond_0
    :goto_0
    return v3

    .line 4039
    :cond_1
    if-nez v1, :cond_2

    .line 4040
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4041
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_2
    move v3, v4

    .line 4045
    goto :goto_0
.end method

.method private clearVTRelatedIfNeed(Lcom/android/internal/telephony/Connection;I)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "simId"    # I

    .prologue
    .line 3054
    return-void
.end method

.method private closeVTManager()V
    .locals 3

    .prologue
    .line 3061
    const-string v0, "closeVTManager()!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3062
    const-string v0, "- call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3065
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->onDisconnected()V

    .line 3067
    const-string v0, "- finish call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3071
    const-string v0, "- set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3073
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTClose()V

    .line 3075
    const-string v0, "- finish set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3078
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    if-eqz v0, :cond_0

    .line 3079
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 3080
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 3082
    :cond_0
    return-void
.end method

.method private createCustomInfo(Lcom/android/internal/telephony/Connection;J)Lcom/android/phone/CallNotifier$CustomInfo;
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "date"    # J

    .prologue
    const/4 v1, 0x0

    .line 2921
    new-instance v0, Lcom/android/phone/CallNotifier$CustomInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CallNotifier$CustomInfo;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V

    .line 2922
    .local v0, "customInfo":Lcom/android/phone/CallNotifier$CustomInfo;
    iput-wide p2, v0, Lcom/android/phone/CallNotifier$CustomInfo;->date:J

    .line 2923
    if-eqz p1, :cond_1

    .line 2924
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, v0, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    .line 2928
    :goto_0
    return-object v0

    .line 2926
    :cond_1
    iput v1, v0, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    goto :goto_0
.end method

.method private createSignalInfoToneGenerator()V
    .locals 4

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 343
    const-string v1, "The phone type is not cdma, so we do nothing!"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 349
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 351
    const-string v1, "CallNotifier"

    const-string v2, "CallNotifier: mSignalInfoToneGenerator created when toneplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string v1, "CallNotifier"

    const-string v2, "mSignalInfoToneGenerator created already, hence skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private crescendoRingerVolume()V
    .locals 9

    .prologue
    const/16 v8, 0x3eb

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x2

    .line 3965
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 3986
    :cond_0
    return-void

    .line 3970
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    if-nez v3, :cond_2

    .line 3971
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallNotifier;->mRingerVolume:I

    .line 3972
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    .line 3976
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3978
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0xc

    .line 3980
    .local v2, "time":I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 3981
    .local v1, "maxVolume":I
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3982
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v2, :cond_0

    .line 3983
    mul-int v3, v1, v0

    div-int/2addr v3, v2

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v8, v3, v7}, Lcom/android/phone/CallNotifier;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3978
    .end local v0    # "i":I
    .end local v1    # "maxVolume":I
    .end local v2    # "time":I
    :cond_3
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private crescendoRingerVolumeDelayed()V
    .locals 7

    .prologue
    const/16 v6, 0x3eb

    const/4 v4, 0x2

    .line 3989
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 4009
    :cond_0
    return-void

    .line 3994
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    if-nez v3, :cond_2

    .line 3995
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallNotifier;->mRingerVolume:I

    .line 3996
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    .line 4000
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 4003
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 4004
    .local v1, "maxVolume":I
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 4005
    .local v2, "volume":I
    const/16 v0, 0x7530

    .line 4006
    .local v0, "delayTime":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 4007
    const/4 v3, 0x0

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/phone/CallNotifier;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4006
    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v0, v0, 0x1388

    goto :goto_0
.end method

.method private decrescendoRingerVolume()V
    .locals 7

    .prologue
    const/16 v6, 0x3eb

    const/4 v5, 0x2

    .line 4012
    iget-boolean v4, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    if-nez v4, :cond_0

    .line 4013
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/CallNotifier;->mRingerVolume:I

    .line 4014
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    .line 4017
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 4018
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    div-int/lit8 v2, v4, 0x7

    .line 4019
    .local v2, "spanVolume":I
    iget v4, p0, Lcom/android/phone/CallNotifier;->mRingerVolume:I

    add-int/lit8 v3, v4, -0x1

    .local v3, "volume":I
    const/4 v0, 0x0

    .local v0, "delayTime":I
    :goto_0
    if-lez v3, :cond_1

    iget v4, p0, Lcom/android/phone/CallNotifier;->mRingerVolume:I

    add-int/lit8 v4, v4, -0x7

    if-lt v3, v4, :cond_1

    .line 4021
    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4022
    .local v1, "message":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 4023
    int-to-long v4, v0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4020
    sub-int/2addr v3, v2

    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    .line 4025
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private delayedVoiceReport(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 4029
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/CallNotifier;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4030
    .local v0, "m":Landroid/os/Message;
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4031
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 2880
    const-wide/16 v0, 0x0

    .line 2881
    .local v0, "minutes":J
    const-wide/16 v2, 0x0

    .line 2883
    .local v2, "seconds":J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    .line 2884
    div-long v0, p1, v5

    .line 2885
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 2887
    :cond_0
    move-wide v2, p1

    .line 2889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v6, 0x7f0b02c8

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v6, 0x7f0b007b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getShouldSendToVoiceMail(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 3
    .param p1, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 3184
    const/4 v0, 0x0

    .line 3185
    .local v0, "bIsRejected":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3186
    .local v1, "ringCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 3187
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->shouldAutoReject(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    .line 3189
    :cond_0
    return v0
.end method

.method private handleMessageMTK(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessageMTK, msg = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3379
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    move v5, v6

    .line 3468
    :goto_0
    return v5

    .line 3381
    :sswitch_0
    const-string v5, " - handleMessage : PHONE_VT_RING_INFO for video call ! "

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3382
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTRinging()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v5, :cond_2

    .line 3383
    const-string v5, "RINGING... (PHONE_VT_RING_INFO event)"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3384
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "device_provisioned"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v7

    .line 3386
    .local v1, "provisioned2":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 3387
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->ring()V

    .end local v1    # "provisioned2":Z
    :cond_0
    :goto_2
    :sswitch_1
    move v5, v7

    .line 3468
    goto :goto_0

    :cond_1
    move v1, v6

    .line 3384
    goto :goto_1

    .line 3390
    :cond_2
    const-string v5, "RING before NEW_RING, skipping"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3396
    :sswitch_2
    const-string v5, " - handleMessage : PHONE_VT_STATUS_INFO for video call ! "

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3398
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lcom/mediatek/phone/vt/VTManagerWrapper;->handleVTStatusInfo(Landroid/os/AsyncResult;Lcom/android/internal/telephony/PhoneConstants$State;)V

    goto :goto_2

    .line 3403
    :sswitch_3
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GCapabilitySIM()I

    move-result v4

    .line 3404
    .local v4, "slotId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - handleMessage : PHONE_WAITING_DISCONNECT ! simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3405
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5, v4}, Lcom/android/phone/CallNotifier;->onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V

    goto :goto_2

    .line 3409
    .end local v4    # "slotId":I
    :sswitch_4
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v5, :cond_0

    .line 3410
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 3411
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_2

    .line 3425
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->checkAndTriggerRingTone()V

    goto :goto_2

    .line 3429
    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3431
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_2

    .line 3433
    :cond_3
    const-string v5, "skip CDMA_PHONE_RING_DELAY"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3438
    :sswitch_7
    const/4 v3, 0x0

    .local v3, "slot":I
    :goto_3
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCfiStatus:[Z

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 3439
    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->shouldNotifyCfiChange(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3440
    invoke-direct {p0, v7, v3}, Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V

    .line 3438
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3447
    .end local v3    # "slot":I
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3448
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_5

    .line 3450
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v2, v5

    check-cast v2, [I

    .line 3451
    .local v2, "result":[I
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NotificationMgr;->updateCipherIndicationNotification(I)V

    goto/16 :goto_2

    .line 3453
    .end local v2    # "result":[I
    :cond_5
    const-string v5, "CallNotifier"

    const-string v6, "[handleMessage], the msg.obj is null!"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3460
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->applyAutoAnswerCall()V

    goto/16 :goto_2

    .line 3379
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_3
        0x12 -> :sswitch_4
        0x2a -> :sswitch_5
        0x2b -> :sswitch_6
        0x32 -> :sswitch_1
        0x3c -> :sswitch_8
        0x7d -> :sswitch_9
        0x7d1 -> :sswitch_7
    .end sparse-switch
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 759
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v6, :cond_1

    .line 763
    const-string v5, "CallNotifier"

    const-string v6, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    :goto_0
    return v4

    .line 770
    :cond_1
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 771
    const-string v4, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move v4, v5

    .line 772
    goto :goto_0

    .line 776
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    .line 778
    .local v2, "provisioned":Z
    :goto_1
    if-nez v2, :cond_4

    .line 779
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: not provisioned"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "provisioned":Z
    :cond_3
    move v2, v5

    .line 776
    goto :goto_1

    .line 784
    .restart local v2    # "provisioned":Z
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 785
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_5

    move v0, v4

    .line 787
    .local v0, "activateState":Z
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_6

    move v1, v4

    .line 789
    .local v1, "dialogState":Z
    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 791
    .local v3, "spcState":Z
    if-eqz v3, :cond_7

    .line 792
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: OTA call is active"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "activateState":Z
    .end local v1    # "dialogState":Z
    .end local v3    # "spcState":Z
    :cond_5
    move v0, v5

    .line 785
    goto :goto_2

    .restart local v0    # "activateState":Z
    :cond_6
    move v1, v5

    .line 787
    goto :goto_3

    .line 794
    .restart local v1    # "dialogState":Z
    .restart local v3    # "spcState":Z
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_a

    .line 799
    :cond_8
    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->dismissOtaDialogs()V

    .line 800
    :cond_9
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    move v4, v5

    .line 801
    goto :goto_0

    .line 806
    .end local v0    # "activateState":Z
    .end local v1    # "dialogState":Z
    .end local v3    # "spcState":Z
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->ignoreRingCallRefToAutoReject()Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 812
    goto :goto_0
.end method

.method private ignoreRingCallRefToAutoReject()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3203
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3204
    .local v1, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3205
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->shouldAutoReject(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3206
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 3207
    .local v2, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 3208
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 3211
    .end local v2    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;Lcom/android/phone/CallModeler;)Lcom/android/phone/CallNotifier;
    .locals 9
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ringer"    # Lcom/android/phone/Ringer;
    .param p3, "callLogger"    # Lcom/android/phone/CallLogger;
    .param p4, "callStateMonitor"    # Lcom/android/phone/CallStateMonitor;
    .param p5, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;
    .param p6, "callModeler"    # Lcom/android/phone/CallModeler;

    .prologue
    .line 284
    const-class v8, Lcom/android/phone/CallNotifier;

    monitor-enter v8

    .line 285
    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/android/phone/CallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;Lcom/android/phone/CallModeler;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 291
    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v8

    return-object v0

    .line 289
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initCallNotifierMtk()V
    .locals 3

    .prologue
    .line 2853
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v0, :cond_0

    .line 2854
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 2859
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2870
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallNotifierExtension()Lcom/mediatek/phone/ext/CallNotifierExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mExtension:Lcom/mediatek/phone/ext/CallNotifierExtension;

    .line 2874
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0}, Lcom/android/phone/CallTime;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallTime:Lcom/android/phone/CallTime;

    .line 2876
    return-void
.end method

.method private initTts()V
    .locals 3

    .prologue
    .line 4094
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 4098
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4099
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 4100
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 4101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 4103
    :cond_2
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 4131
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/phone/CallNotifier$3;

    invoke-direct {v1, p0}, Lcom/android/phone/CallNotifier$3;-><init>(Lcom/android/phone/CallNotifier;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 4148
    :cond_3
    return-void
.end method

.method private isIncomingMuteOrVibrate()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3501
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_1

    .line 3506
    :cond_0
    :goto_0
    return v0

    .line 3504
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIncomingMuteOrVibrate(), Audio manager ringer mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIncomingMuteOrVibrate(), stream volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3506
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isNewRingConnectionAllowedForDualTalk(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p1, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3259
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3260
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v1, :cond_0

    .line 3261
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 3264
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/DualTalkUtils;->isAllowedIncomingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3265
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/DualTalkUtils;->switchPhoneByNeededForRing(Lcom/android/internal/telephony/Phone;)V

    .line 3275
    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3268
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3272
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3269
    :catch_0
    move-exception v0

    .line 3270
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private listenPhoneState()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x0

    .line 3525
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 3526
    .local v1, "geminiSlots":[I
    array-length v0, v1

    .line 3527
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCfiStatus:[Z

    if-nez v3, :cond_0

    .line 3528
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCfiStatus:[Z

    .line 3531
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3532
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    if-nez v3, :cond_1

    .line 3533
    new-array v3, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    .line 3535
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 3536
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    .line 3537
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    new-instance v4, Lcom/android/phone/CallNotifier$GeminiPhoneStateListener;

    aget v5, v1, v2

    invoke-direct {v4, p0, v5}, Lcom/android/phone/CallNotifier$GeminiPhoneStateListener;-><init>(Lcom/android/phone/CallNotifier;I)V

    aput-object v4, v3, v2

    .line 3539
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCfiStatus:[Z

    aput-boolean v6, v3, v2

    .line 3540
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    aget v4, v1, v2

    invoke-static {v3, v7, v4}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 3535
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3543
    .end local v2    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCfiStatus:[Z

    aput-boolean v6, v3, v6

    .line 3544
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    if-nez v3, :cond_4

    .line 3545
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    .line 3546
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    new-instance v4, Lcom/android/phone/CallNotifier$GeminiPhoneStateListener;

    aget v5, v1, v6

    invoke-direct {v4, p0, v5}, Lcom/android/phone/CallNotifier$GeminiPhoneStateListener;-><init>(Lcom/android/phone/CallNotifier;I)V

    aput-object v4, v3, v6

    .line 3548
    :cond_4
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v6

    const/4 v4, -0x1

    invoke-static {v3, v7, v4}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 3550
    :cond_5
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2821
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    return-void
.end method

.method private notifyIncomingCallToBracelet(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const/4 v2, 0x0

    .line 4251
    new-instance v0, Landroid/content/Intent;

    const-string v3, "miui.phone.ACTION_ALARM"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4252
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 4253
    .local v1, "number":Ljava/lang/String;
    const-string v3, "number"

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4254
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4255
    const-string v3, "contact"

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4258
    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->isQueryInProcess:Z

    if-nez v3, :cond_1

    .line 4259
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->isQueryInProcess:Z

    .line 4260
    new-instance v3, Lcom/android/phone/CallNotifier$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/phone/CallNotifier$4;-><init>(Lcom/android/phone/CallNotifier;Ljava/lang/String;Landroid/content/Intent;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v2}, Lcom/android/phone/CallNotifier$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4282
    :goto_0
    return-void

    .line 4279
    :cond_1
    const-string v3, "CallNotifier"

    const-string v4, "The AsyncTask is in process, not query yellow page again!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->notifyToMiband(Landroid/content/Intent;Lmiui/yellowpage/YellowPagePhone;)V

    goto :goto_0
.end method

.method private notifyToMiband(Landroid/content/Intent;Lmiui/yellowpage/YellowPagePhone;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "yellowPagePhone"    # Lmiui/yellowpage/YellowPagePhone;

    .prologue
    .line 4285
    if-eqz p2, :cond_0

    .line 4286
    const-string v0, "tag"

    invoke-virtual {p2}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4287
    const-string v0, "yellow_page"

    invoke-virtual {p2}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v1, "miui.permission.BLE_IMMEDIATE_ALERT"

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4291
    const-string v0, "CallNotifier"

    const-string v1, "notifyIncomingCallToBracelet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;I)V
    .locals 11
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "blockType"    # I

    .prologue
    const/16 v10, 0x17

    const/16 v9, 0x16

    const/4 v8, 0x0

    .line 2446
    invoke-virtual {p0, v9}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2447
    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2451
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v6, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2455
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2456
    const-wide/16 v6, 0x4e20

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2460
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 2463
    const-wide/16 v6, 0x7530

    invoke-virtual {p0, v10, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2467
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2468
    .local v0, "infoCW":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 2469
    .local v1, "isPresent":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2470
    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 2471
    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 2472
    .local v5, "uSignalType":I
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 2473
    .local v3, "uAlertPitch":I
    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 2474
    .local v4, "uSignal":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2477
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 2481
    .local v2, "toneID":I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2484
    .end local v2    # "toneID":I
    .end local v3    # "uAlertPitch":I
    .end local v4    # "uSignal":I
    .end local v5    # "uSignalType":I
    :cond_0
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v6, v0, p2}, Lcom/android/phone/CallModeler;->onCdmaCallWaiting(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;I)V

    .line 2485
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 2506
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 2509
    .local v5, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    .line 2511
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2513
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 2514
    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v8, :cond_3

    move v1, v6

    .line 2520
    .local v1, "callLogType":I
    :goto_0
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v8, v7}, Lcom/android/phone/CallLogger;->setCdmaCallWaitingReject(Z)V

    .line 2521
    const/4 v2, -0x1

    .line 2522
    .local v2, "cdmaSlot":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2523
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotByPhoneType(I)I

    move-result v2

    .line 2525
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;II)V

    .line 2527
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 2528
    .local v3, "date":J
    if-ne v1, v6, :cond_4

    .line 2530
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 2537
    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 2541
    .end local v1    # "callLogType":I
    .end local v2    # "cdmaSlot":I
    .end local v3    # "date":J
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2546
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v6}, Lcom/android/phone/CallModeler;->onCdmaCallWaitingReject()V

    .line 2547
    return-void

    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_3
    move v1, v7

    .line 2514
    goto :goto_0

    .line 2533
    .restart local v1    # "callLogType":I
    .restart local v2    # "cdmaSlot":I
    .restart local v3    # "date":J
    :cond_4
    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_1
.end method

.method private onCfiChanged(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "simId"    # I

    .prologue
    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "simId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NotificationMgr;->updateCfi(ZI)V

    .line 1899
    return-void
.end method

.method private onCustomRingQueryComplete(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v5, 0x0

    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, "isQueryExecutionTimeExpired":Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 908
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 909
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 910
    const/4 v0, 0x1

    .line 912
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    if-eqz v0, :cond_1

    .line 916
    const-string v2, "CallNotifier"

    const-string v3, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const v2, 0x112a0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 932
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_3

    .line 933
    const-string v2, "CallNotifier"

    const-string v3, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_2
    :goto_0
    return-void

    .line 912
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 941
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 944
    .local v1, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 945
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->ringAndNotifyOfIncomingCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method private onCustomRingtoneQueryTimeout(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1376
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; look up local fallback cache."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    if-eqz p1, :cond_1

    .line 1382
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 1384
    .local v0, "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    if-eqz v0, :cond_2

    .line 1385
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-eqz v1, :cond_0

    .line 1386
    const-string v1, "send to voicemail flag detected (in fallback cache). hanging up."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1387
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1410
    .end local v0    # "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    :goto_0
    return-void

    .line 1394
    .restart local v0    # "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_0
    iget-object v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom ringtone found (in fallback cache), setting up ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1397
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1409
    .end local v0    # "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 1405
    .restart local v0    # "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_2
    const-string v1, "Failed to find fallback cache. Use default ringer tone."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDisconnect(Landroid/os/AsyncResult;I)V
    .locals 27
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    .line 1416
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onDisconnect(), slotId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1418
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onDisconnect()...  CallManager state: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v21

    .line 1423
    .local v21, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v24, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 1424
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1426
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mShouldSkipRing:Z

    .line 1427
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1436
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->removeCipherIndicationIfNeeded(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1439
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1440
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 1442
    .local v9, "c":Lcom/android/internal/telephony/Connection;
    if-nez v9, :cond_1b

    sget-object v14, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1446
    .local v14, "disconnectCause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_1
    if-eqz v9, :cond_1c

    .line 1454
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_3

    .line 1455
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1456
    .local v10, "call":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousBgCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 1458
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 1462
    .end local v10    # "call":Lcom/android/internal/telephony/Call;
    :cond_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onDisconnect: cause = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", incoming = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", date = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", number = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1474
    :goto_2
    const/4 v5, 0x0

    .line 1475
    .local v5, "autoretrySetting":I
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "call_auto_retry"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1481
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1483
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1488
    const/16 v24, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1489
    const/16 v24, 0x17

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1494
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/android/phone/CallNotifier;->clearVTRelatedIfNeed(Lcom/android/internal/telephony/Connection;I)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .line 1511
    .local v20, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 1512
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 1515
    const-string v24, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1533
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1535
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1539
    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1540
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    .line 1541
    .local v18, "number":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1542
    const-string v24, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->handleOtaspDisconnect()V

    .line 1549
    .end local v18    # "number":Ljava/lang/String;
    :cond_8
    const/16 v23, 0x0

    .line 1552
    .local v23, "toneToPlay":I
    if-eqz v9, :cond_9

    .line 1553
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v11

    .line 1554
    .local v11, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_1f

    .line 1555
    const-string v24, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1556
    const/16 v23, 0x2

    .line 1612
    .end local v11    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_9
    :goto_4
    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_b

    if-eqz v9, :cond_b

    .line 1615
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v11

    .line 1621
    .restart local v11    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_a

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_a

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_b

    .line 1625
    :cond_a
    const-string v24, "- need to play CALL_ENDED tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1626
    const/16 v23, 0x4

    .line 1627
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1633
    .end local v11    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 1634
    .local v15, "fg":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 1635
    .local v8, "bg":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 1636
    .local v7, "bFg":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1637
    .local v6, "bBg":Lcom/android/internal/telephony/Call;
    sget-object v24, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1639
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1645
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1646
    if-nez v23, :cond_d

    .line 1647
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateSpeaker()V

    .line 1657
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isOnlyRingingCallExist()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1661
    :cond_e
    if-nez v23, :cond_f

    .line 1662
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1665
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1668
    :cond_10
    if-eqz v9, :cond_19

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v9, v1}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;I)V

    .line 1674
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    .line 1675
    .restart local v18    # "number":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    .line 1676
    .local v19, "phone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v16

    .line 1678
    .local v16, "isEmergencyNumber":Z
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 1679
    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object/from16 v24, v0

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$100(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1687
    :cond_11
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v12

    .line 1688
    .local v12, "date":J
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v11

    .line 1689
    .restart local v11    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v24

    if-eqz v24, :cond_2b

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_2b

    const/16 v17, 0x1

    .line 1691
    .local v17, "missedCall":Z
    :goto_5
    if-eqz v17, :cond_12

    .line 1695
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12, v13}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1701
    :cond_12
    if-eqz v23, :cond_13

    .line 1702
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "- starting post-disconnect tone ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1706
    new-instance v24, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1721
    :cond_13
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_14

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v14, v0, :cond_15

    .line 1723
    :cond_14
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 1726
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v24

    if-eqz v24, :cond_2e

    if-nez v16, :cond_2e

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_2e

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_2e

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_2e

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "button_auto_redial"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_2d

    .line 1733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    move/from16 v24, v0

    if-nez v24, :cond_16

    .line 1734
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialTimes:I

    .line 1735
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 1738
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mRedialTimes:I

    move/from16 v24, v0

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2c

    .line 1739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mRedialTimes:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialTimes:I

    .line 1740
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/android/phone/PhoneUtils;->replaceCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)I

    .line 1752
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_18

    :cond_17
    if-nez v16, :cond_18

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_18

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_18

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_18

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_18

    .line 1759
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    move/from16 v24, v0

    if-nez v24, :cond_30

    .line 1760
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_2f

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v22

    .line 1765
    .local v22, "status":I
    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 1766
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1783
    .end local v22    # "status":I
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 1784
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v14, v0, :cond_31

    .line 1785
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->updateRepeatedCall(Ljava/lang/String;)V

    .line 1793
    .end local v11    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v12    # "date":J
    .end local v16    # "isEmergencyNumber":Z
    .end local v17    # "missedCall":Z
    .end local v18    # "number":Ljava/lang/String;
    .end local v19    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mExtension:Lcom/mediatek/phone/ext/CallNotifierExtension;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/mediatek/phone/ext/CallNotifierExtension;->onDisconnect(Lcom/android/internal/telephony/Connection;)Z

    .line 1794
    return-void

    .line 1428
    .end local v5    # "autoretrySetting":I
    .end local v6    # "bBg":Lcom/android/internal/telephony/Call;
    .end local v7    # "bFg":Lcom/android/internal/telephony/Call;
    .end local v8    # "bg":Lcom/android/internal/telephony/Call;
    .end local v9    # "c":Lcom/android/internal/telephony/Connection;
    .end local v14    # "disconnectCause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v15    # "fg":Lcom/android/internal/telephony/Call;
    .end local v20    # "ringingCall":Lcom/android/internal/telephony/Call;
    .end local v23    # "toneToPlay":I
    :cond_1a
    sget-object v24, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 1429
    const-string v24, "state == PhoneConstants.State.RINGING"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1430
    const/16 v24, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1431
    const/16 v24, 0x2a

    const-wide/16 v25, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1442
    .restart local v9    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1b
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v14

    goto/16 :goto_1

    .line 1467
    .restart local v14    # "disconnectCause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1c
    const-string v24, "CallNotifier"

    const-string v25, "onDisconnect: null connection"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1518
    .restart local v5    # "autoretrySetting":I
    .restart local v20    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_1d
    const-string v24, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_3

    .line 1522
    :cond_1e
    const-string v24, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1525
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v24

    if-eqz v24, :cond_6

    sget-object v24, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->switchRingToneByNeeded(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 1560
    .restart local v11    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v23    # "toneToPlay":I
    :cond_1f
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_20

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_20

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_21

    .line 1564
    :cond_20
    const-string v24, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1565
    const/16 v23, 0x3

    goto/16 :goto_4

    .line 1566
    :cond_21
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_22

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->isOtaCallInActiveState()Z

    move-result v24

    if-eqz v24, :cond_23

    .line 1569
    const-string v24, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1570
    const/16 v23, 0xb

    goto/16 :goto_4

    .line 1571
    :cond_23
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_24

    .line 1572
    const-string v24, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1573
    const/16 v23, 0x6

    goto/16 :goto_4

    .line 1574
    :cond_24
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_25

    .line 1575
    const-string v24, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1576
    const/16 v23, 0x7

    goto/16 :goto_4

    .line 1577
    :cond_25
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_26

    .line 1578
    const-string v24, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1579
    const/16 v23, 0x8

    goto/16 :goto_4

    .line 1580
    :cond_26
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_27

    .line 1581
    const-string v24, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1582
    const/16 v23, 0x9

    goto/16 :goto_4

    .line 1586
    :cond_27
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_28

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_28

    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_29

    .line 1590
    :cond_28
    const-string v24, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1591
    const/16 v23, 0xd

    goto/16 :goto_4

    .line 1592
    :cond_29
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_2a

    .line 1593
    const-string v24, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1594
    const/16 v23, 0x4

    goto/16 :goto_4

    .line 1596
    :cond_2a
    sget-object v24, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    if-ne v11, v0, :cond_9

    .line 1599
    const-string v24, "cause is FDN_BLOCKED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1689
    .restart local v6    # "bBg":Lcom/android/internal/telephony/Call;
    .restart local v7    # "bFg":Lcom/android/internal/telephony/Call;
    .restart local v8    # "bg":Lcom/android/internal/telephony/Call;
    .restart local v12    # "date":J
    .restart local v15    # "fg":Lcom/android/internal/telephony/Call;
    .restart local v16    # "isEmergencyNumber":Z
    .restart local v18    # "number":Ljava/lang/String;
    .restart local v19    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2b
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1742
    .restart local v17    # "missedCall":Z
    :cond_2c
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    goto/16 :goto_6

    .line 1745
    :cond_2d
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    goto/16 :goto_6

    .line 1748
    :cond_2e
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    goto/16 :goto_6

    .line 1769
    :cond_2f
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_7

    .line 1772
    :cond_30
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_7

    .line 1787
    :cond_31
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->resetRepeatedCall(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private onDisconnectForVTWaiting(Landroid/os/AsyncResult;I)V
    .locals 10
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    const/4 v9, 0x1

    .line 3103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDisconnectForVTWaiting()... , slot id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3105
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3107
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_2

    .line 3108
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v7, v0, p2}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;I)V

    .line 3109
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    .line 3110
    .local v1, "date":J
    const/4 v5, 0x0

    .line 3111
    .local v5, "isSipCall":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 3112
    const/4 v5, 0x1

    .line 3114
    :cond_0
    if-nez v5, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->shouldAutoReject(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3115
    const-wide/16 v3, 0xbb8

    .line 3116
    .local v3, "delayMillis":J
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 3117
    .local v6, "message":Landroid/os/Message;
    const/16 v7, 0x12

    iput v7, v6, Landroid/os/Message;->what:I

    .line 3118
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v7, :cond_1

    .line 3119
    new-instance v7, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v7, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3120
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mVideoOrVoiceCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 3123
    :cond_1
    invoke-virtual {p0, v6, v3, v4}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3124
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3125
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0079

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 3132
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 3136
    .end local v1    # "date":J
    .end local v3    # "delayMillis":J
    .end local v5    # "isSipCall":Z
    .end local v6    # "message":Landroid/os/Message;
    :cond_2
    return-void

    .line 3128
    .restart local v1    # "date":J
    .restart local v3    # "delayMillis":J
    .restart local v5    # "isSipCall":Z
    .restart local v6    # "message":Landroid/os/Message;
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b007a

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 2343
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 2345
    .local v1, "displayInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v1, :cond_0

    .line 2346
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 2347
    .local v0, "displayInfo":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2348
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 2351
    const/16 v2, 0x18

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2354
    .end local v0    # "displayInfo":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onMwiChanged(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "simId"    # I

    .prologue
    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "simid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1850
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_0

    .line 1856
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :goto_0
    return-void

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NotificationMgr;->updateMwi(ZI)V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v6, 0x1

    .line 608
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 609
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewRingingConnection(): state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", conn = { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 611
    .local v2, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 614
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 739
    :goto_0
    return-void

    .line 624
    :cond_0
    if-nez v0, :cond_1

    .line 625
    const-string v4, "CallNotifier"

    const-string v5, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v4

    if-nez v4, :cond_2

    .line 631
    const-string v4, "CallNotifier"

    const-string v5, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->isNewRingConnectionAllowedForDualTalk(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 642
    const-string v4, "onNewRingingConnection(): isNewRingConnectionAllowedForDualTalk false, return"

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 650
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 652
    .local v3, "state":Lcom/android/internal/telephony/Call$State;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- connection is ringing!  state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 690
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 692
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 700
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->isIncomingMuteOrVibrate()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 701
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->playCallWaitingTone()V

    .line 708
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 715
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 728
    const/16 v4, 0x7d

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 733
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->autoVTVoiceAnswerCallIfNeed(Lcom/android/internal/telephony/Call;)V

    .line 737
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->initTts()V

    .line 738
    const-string v4, "- onNewRingingConnection() done."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_5
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mShouldSkipRing:Z

    goto :goto_1
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 1044
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mExtension:Lcom/mediatek/phone/ext/CallNotifierExtension;

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v12, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/mediatek/phone/ext/CallNotifierExtension;->onPhoneStateChanged(Lcom/android/internal/telephony/CallManager;Landroid/content/Context;)V

    .line 1048
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    .line 1049
    .local v7, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    .line 1050
    .local v8, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPhoneStateChanged: state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1053
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 1054
    .local v6, "foreCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1057
    .local v0, "backCallState":Lcom/android/internal/telephony/Call$State;
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->updateDualTalkState()V

    .line 1061
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/Vibrator;

    if-nez v10, :cond_0

    .line 1062
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "vibrator"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/Vibrator;

    .line 1067
    :cond_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v10, :cond_2

    .line 1069
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1070
    .local v2, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    .line 1071
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 1073
    :cond_1
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    if-eqz v10, :cond_2

    .line 1074
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v11, 0xa

    invoke-direct {v10, p0, v11}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1075
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 1079
    .end local v2    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v11, :cond_3

    .line 1081
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v10, :cond_3

    .line 1082
    const/16 v10, 0x3ef

    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1084
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :cond_3
    :goto_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v11, v10, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v10, :cond_12

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 1097
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1098
    .local v5, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 1099
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_6

    .line 1102
    :cond_4
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v10, :cond_5

    .line 1103
    const/16 v9, 0xa

    .line 1104
    .local v9, "toneToPlay":I
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v10, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1107
    .end local v9    # "toneToPlay":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1109
    :cond_6
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1116
    :cond_7
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10, v8}, Lcom/android/phone/PhoneGlobals;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1124
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v10}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 1133
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v10, :cond_14

    .line 1135
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v10, :cond_8

    .line 1136
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1137
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1141
    :cond_8
    const/4 v10, 0x2

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1143
    const-string v10, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1155
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1156
    .local v3, "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getMode()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_13

    .line 1157
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1172
    :cond_9
    :goto_2
    const-string v10, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1173
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v10}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1184
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_a
    :goto_3
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_d

    .line 1185
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1186
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v10, v11}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1188
    const-string v10, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1189
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1190
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v10, :cond_b

    .line 1191
    new-instance v10, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v10, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1194
    :cond_b
    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v10, :cond_c

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v10, :cond_16

    .line 1195
    :cond_c
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_tone"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1198
    iget v10, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v10, :cond_d

    iget v10, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v10, :cond_d

    .line 1200
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v10, :cond_d

    .line 1201
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$000(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1214
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_d
    :goto_4
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_e

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_f

    .line 1216
    :cond_e
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1217
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v10

    if-nez v10, :cond_f

    .line 1220
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v10, :cond_f

    .line 1221
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1222
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1228
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_f
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->vibrateWhenMOConnected()V

    .line 1232
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->updateReminder()V

    .line 1236
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousBgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->callCommandService:Lcom/android/phone/CallCommandService;

    invoke-virtual {v10}, Lcom/android/phone/CallCommandService;->isCallRecording()Z

    move-result v10

    if-nez v10, :cond_11

    :cond_10
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_11

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v10, :cond_11

    .line 1241
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->callCommandService:Lcom/android/phone/CallCommandService;

    invoke-virtual {v10}, Lcom/android/phone/CallCommandService;->getRecordableConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1242
    .restart local v1    # "c":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_11

    .line 1243
    const/16 v10, 0x3ee

    invoke-virtual {p0, v10, v1}, Lcom/android/phone/CallNotifier;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x1f4

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1247
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    :cond_11
    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    .line 1248
    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousBgCallState:Lcom/android/internal/telephony/Call$State;

    .line 1250
    return-void

    .line 1085
    .end local v5    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v4

    .line 1086
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 1094
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1158
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    .restart local v5    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_13
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v10, :cond_9

    const-string v10, "TTY"

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1159
    invoke-static {}, Lcom/android/phone/PhoneUtils;->openTTY()V

    goto/16 :goto_2

    .line 1174
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_14
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v10, :cond_a

    .line 1176
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->isIncomingMuteOrVibrate()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1179
    :cond_15
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->playCallWaitingTone()V

    goto/16 :goto_3

    .line 1204
    .restart local v1    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_16
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v10, :cond_d

    .line 1205
    iget v10, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v10, :cond_d

    .line 1206
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v10, :cond_d

    .line 1207
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$100(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto/16 :goto_4
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 2815
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2816
    .local v0, "muteState":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2817
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2818
    return-void

    .line 2816
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 2791
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2793
    .local v0, "playTone":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2798
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_0

    .line 2800
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2801
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2809
    :cond_0
    :goto_0
    return-void

    .line 2804
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 2805
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2806
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 2396
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v6, :cond_1

    .line 2397
    const-string v6, "CallNotifier"

    const-string v7, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_0
    :goto_0
    return-void

    .line 2401
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2404
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 2407
    :cond_2
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v1, v6

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 2409
    .local v1, "signalInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    .line 2410
    iget-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 2411
    .local v0, "isPresent":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2412
    if-eqz v0, :cond_0

    .line 2413
    iget v5, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 2414
    .local v5, "uSignalType":I
    iget v3, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 2415
    .local v3, "uAlertPitch":I
    iget v4, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 2417
    .local v4, "uSignal":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2420
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 2424
    .local v2, "toneID":I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 952
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 953
    const-string v1, "unknown connection appeared..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 955
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 957
    :cond_0
    return-void
.end method

.method private playCallWaitingTone()V
    .locals 2

    .prologue
    .line 3489
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_0

    .line 3490
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3491
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 3492
    const-string v0, "Start waiting tone."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3494
    :cond_0
    return-void
.end method

.method private pushVTSettingParams(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 3889
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3890
    :cond_0
    const-string v0, "connection or call is null in pushVTSettingParams()... just return."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3891
    return-void
.end method

.method private redialAsECC(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 3920
    const-string v2, "redial as ECC~~"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3921
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p2, p1, v3, v4}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v1

    .line 3923
    .local v1, "redialStatus":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3925
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v0

    .line 3926
    .local v0, "callModeler":Lcom/android/phone/CallModeler;
    if-eqz v0, :cond_0

    .line 3927
    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->markDialingCallAsECC()V

    .line 3928
    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->updateCalls()V

    .line 3931
    .end local v0    # "callModeler":Lcom/android/phone/CallModeler;
    :cond_0
    return-void
.end method

.method private removeCipherIndicationIfNeeded(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 8
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3709
    const/4 v2, 0x1

    .line 3710
    .local v2, "isNeededRemoveCI":Z
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v5, :cond_3

    .line 3711
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3712
    .local v0, "bgPhone":Lcom/android/internal/telephony/Phone;
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3713
    .local v1, "fgPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 3714
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v7, :cond_6

    :cond_0
    move v2, v4

    .line 3717
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 3718
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v7, :cond_7

    :cond_2
    move v2, v4

    .line 3722
    .end local v0    # "bgPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_1
    const-string v3, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[removeCipherIndicationIfNeeded], isNeededRemoveCI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v3, :cond_4

    if-eqz v2, :cond_5

    .line 3725
    :cond_4
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->removeCipherIndicationNotification()V

    .line 3727
    :cond_5
    return-void

    .restart local v0    # "bgPhone":Lcom/android/internal/telephony/Phone;
    .restart local v1    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_6
    move v2, v3

    .line 3714
    goto :goto_0

    :cond_7
    move v2, v3

    .line 3718
    goto :goto_1
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 1823
    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1825
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 1832
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1834
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1837
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1838
    return-void
.end method

.method private resetRingerVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3956
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    if-eqz v0, :cond_0

    .line 3958
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3959
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/CallNotifier;->mRingerVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3960
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mRingerVolumeControlling:Z

    .line 3962
    :cond_0
    return-void
.end method

.method private ringAndNotifyOfIncomingCall(Lcom/android/internal/telephony/Connection;)V
    .locals 13
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    .line 966
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAsyncResultForCdmaCallWaiting:Landroid/os/AsyncResult;

    .line 967
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v9, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 969
    .local v2, "ci":Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 970
    .local v1, "blockType":I
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getNumber(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 972
    .local v7, "number":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v9, v7}, Lcom/android/phone/PhoneUtils;->isRepeatedCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 973
    .local v5, "isRepeated":Z
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v9, v7}, Lcom/android/phone/PhoneUtils;->isRepeatedBlockedCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 975
    .local v6, "isRepeatedBlocked":Z
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isForwardCall()Z

    move-result v10

    invoke-static {v9, v7, v10, v5, v6}, Lmiui/provider/ExtraTelephony;->getCallBlockType(Landroid/content/Context;Ljava/lang/String;ZZZ)I

    move-result v1

    .line 977
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setFirewallCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .end local v5    # "isRepeated":Z
    .end local v6    # "isRepeatedBlocked":Z
    :goto_0
    const/4 v9, 0x3

    if-lt v1, v9, :cond_0

    .line 984
    const-string v8, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reject incoming call with block type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1032
    :goto_1
    return-void

    .line 978
    :catch_0
    move-exception v3

    .line 979
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 989
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 991
    const/4 v4, 0x0

    .line 992
    .local v4, "isAntiStranger":Z
    if-eq v1, v8, :cond_1

    if-eq v1, v12, :cond_1

    .line 1000
    iget-boolean v9, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "button_enable_antispam_strange"

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v11}, Lcom/android/phone/TelephonyCapabilities;->supportsDefaultAntiStrange(Landroid/content/Context;)Z

    move-result v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    move v4, v8

    .line 1003
    :goto_2
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v9, v4}, Lcom/android/phone/Ringer;->setAntiStranger(Z)V

    .line 1005
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->ringForSipOrCdma()V

    .line 1007
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->startAutoAnswer()V

    .line 1008
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->notifyIncomingCallToBracelet(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1012
    :cond_1
    if-nez v4, :cond_2

    .line 1013
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->crescendoRingerVolume()V

    .line 1015
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->startSensor()V

    .line 1024
    .end local v4    # "isAntiStranger":Z
    :cond_3
    :goto_3
    if-eq v1, v8, :cond_4

    if-eq v1, v12, :cond_4

    .line 1026
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->delayedVoiceReport(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1029
    :cond_4
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v8, p1, v1}, Lcom/android/phone/CallModeler;->onNewRingingConnection(Lcom/android/internal/telephony/Connection;I)Lcom/android/services/telephony/common/Call;

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->pushVTSettingParams(Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 1000
    .restart local v4    # "isAntiStranger":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1018
    .end local v4    # "isAntiStranger":Z
    :cond_6
    const-string v9, "- starting call waiting tone..."

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1019
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v9, :cond_3

    .line 1020
    new-instance v9, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v9, p0, v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1021
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    goto :goto_3
.end method

.method private ringForSipOrCdma()V
    .locals 3

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3144
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 3148
    :cond_0
    :goto_0
    return-void

    .line 3145
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3146
    const/16 v0, 0x2b

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setDefaultRingtoneUri(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 3645
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 3646
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3647
    .local v2, "ringCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    .line 3648
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v3, v1}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 3649
    .local v0, "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before query; custom ringtone found in CallerInfoCache for call( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ), setting up ringer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3652
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v4, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3661
    .end local v0    # "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    :goto_0
    return-void

    .line 3654
    .restart local v0    # "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_0
    const-string v3, "Before query; custom ringtone not found in CallerInfoCache. Use default ringer tone."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3655
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {p0, v2}, Lcom/android/phone/CallNotifier;->getDefaultRingtoneUri(Lcom/android/internal/telephony/Call;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 3658
    .end local v0    # "entry":Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_1
    const-string v3, "Before query; c.getAddress() is null. Use default ringer tone."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3659
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {p0, v2}, Lcom/android/phone/CallNotifier;->getDefaultRingtoneUri(Lcom/android/internal/telephony/Call;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private shouldNotifyCfiChange(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCfiStatus:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {p1, v0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAutoAnswer()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 2654
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2655
    .local v4, "fgCall":Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2656
    .local v2, "bgCall":Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2659
    .local v7, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2701
    :cond_2
    :goto_0
    return-void

    .line 2666
    :cond_3
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2667
    .local v6, "pref":Landroid/content/SharedPreferences;
    const-string v10, "button_auto_answer"

    invoke-interface {v6, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2668
    const-string v10, "button_auto_answer_scenario"

    invoke-interface {v6, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2670
    .local v8, "scenario":I
    sget v0, Lcom/android/services/telephony/common/AudioMode;->ALL_MODES:I

    .line 2671
    .local v0, "audioMode":I
    packed-switch v8, :pswitch_data_0

    .line 2690
    const/4 v1, 0x1

    .line 2694
    .local v1, "autoAnswer":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 2695
    const-string v10, "button_auto_answer_delay"

    const-string v11, "3"

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2696
    .local v3, "delay":I
    const/16 v10, 0x3ea

    invoke-static {p0, v10, v0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    .line 2697
    .local v5, "msg":Landroid/os/Message;
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2698
    mul-int/lit16 v9, v3, 0x3e8

    int-to-long v9, v9

    invoke-virtual {p0, v5, v9, v10}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2673
    .end local v1    # "autoAnswer":Z
    .end local v3    # "delay":I
    .end local v5    # "msg":Landroid/os/Message;
    :pswitch_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2675
    .restart local v1    # "autoAnswer":Z
    :goto_2
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    .line 2676
    goto :goto_1

    .end local v1    # "autoAnswer":Z
    :cond_4
    move v1, v9

    .line 2673
    goto :goto_2

    .line 2678
    :pswitch_1
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2680
    .restart local v1    # "autoAnswer":Z
    :goto_3
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    .line 2681
    goto :goto_1

    .end local v1    # "autoAnswer":Z
    :cond_5
    move v1, v9

    .line 2678
    goto :goto_3

    .line 2683
    :pswitch_2
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2685
    .restart local v1    # "autoAnswer":Z
    :cond_6
    :goto_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_8

    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    .line 2688
    :goto_5
    goto :goto_1

    .end local v1    # "autoAnswer":Z
    :cond_7
    move v1, v9

    .line 2683
    goto :goto_4

    .line 2685
    .restart local v1    # "autoAnswer":Z
    :cond_8
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    goto :goto_5

    .line 2671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v6, 0x0

    .line 830
    const/4 v2, 0x0

    .line 831
    .local v2, "shouldStartQuery":Z
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 832
    :try_start_0
    iget v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v4, :cond_0

    .line 833
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 834
    const/4 v2, 0x1

    .line 836
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    if-eqz v2, :cond_2

    .line 852
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    .line 853
    .local v3, "slotId":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-static {v4, v3}, Lmiui/util/SimRingtoneUtils;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 854
    .local v1, "defaultRingtoneUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4, v1}, Lcom/android/phone/Ringer;->setDefaultRingtoneUri(Landroid/net/Uri;)V

    .line 857
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v4, p1, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 862
    .local v0, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v4, :cond_1

    .line 863
    const-string v4, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 864
    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v6, p1, v4}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 886
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v1    # "defaultRingtoneUri":Landroid/net/Uri;
    .end local v3    # "slotId":I
    :goto_0
    return-void

    .line 836
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 866
    .restart local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v1    # "defaultRingtoneUri":Landroid/net/Uri;
    .restart local v3    # "slotId":I
    :cond_1
    const-string v4, "- Starting query, posting timeout message."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 870
    const/16 v4, 0x64

    invoke-static {p0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 880
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v1    # "defaultRingtoneUri":Landroid/net/Uri;
    .end local v3    # "slotId":I
    :cond_2
    const v4, 0x112a1

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 882
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->ringAndNotifyOfIncomingCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method private startSensor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3936
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3937
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "button_turnover_mute"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3938
    .local v2, "turnoverMuteEnable":Z
    const-string v3, "button_handon_ringer"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3940
    .local v0, "handonRingerEnable":Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 3941
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mSensorEventListener:Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;

    if-nez v3, :cond_1

    .line 3942
    new-instance v3, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mSensorEventListener:Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;

    .line 3945
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mSensorEventListener:Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;

    invoke-virtual {v3, v2, v0}, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->start(ZZ)V

    .line 3947
    :cond_2
    return-void
.end method

.method private stopSensor()V
    .locals 1

    .prologue
    .line 3950
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSensorEventListener:Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;

    if-eqz v0, :cond_0

    .line 3951
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSensorEventListener:Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->stop()V

    .line 3953
    :cond_0
    return-void
.end method

.method private switchRingtoneForDualTalk(Lcom/android/phone/Ringer;)V
    .locals 9
    .param p1, "ringer"    # Lcom/android/phone/Ringer;

    .prologue
    .line 3290
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3291
    move-object v6, p1

    .line 3292
    .local v6, "r":Lcom/android/phone/Ringer;
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 3293
    .local v4, "foregroundRingCall":Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v7}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3294
    .local v1, "backgroundRingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 3295
    .local v3, "foregroundInfo":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3297
    .local v0, "backgroundInfo":Lcom/android/internal/telephony/CallerInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "foregorund calller info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3298
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "background calller info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3300
    const/4 v5, 0x0

    .line 3304
    .local v5, "foregroundUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 3305
    iget-object v5, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 3307
    :cond_0
    if-nez v5, :cond_1

    .line 3308
    invoke-virtual {p0, v4}, Lcom/android/phone/CallNotifier;->getDefaultRingtoneUri(Lcom/android/internal/telephony/Call;)Landroid/net/Uri;

    move-result-object v5

    .line 3310
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    iget-object v2, v7, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 3313
    .local v2, "backgroundUri":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 3314
    invoke-virtual {p0, v1}, Lcom/android/phone/CallNotifier;->getDefaultRingtoneUri(Lcom/android/internal/telephony/Call;)Landroid/net/Uri;

    move-result-object v2

    .line 3317
    :cond_2
    invoke-virtual {v6}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3318
    invoke-virtual {v6}, Lcom/android/phone/Ringer;->stopRing()V

    .line 3319
    invoke-virtual {v6, v5}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3321
    invoke-virtual {v6}, Lcom/android/phone/Ringer;->ring()V

    .line 3325
    .end local v0    # "backgroundInfo":Lcom/android/internal/telephony/CallerInfo;
    .end local v1    # "backgroundRingCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "backgroundUri":Landroid/net/Uri;
    .end local v3    # "foregroundInfo":Lcom/android/internal/telephony/CallerInfo;
    .end local v4    # "foregroundRingCall":Lcom/android/internal/telephony/Call;
    .end local v5    # "foregroundUri":Landroid/net/Uri;
    .end local v6    # "r":Lcom/android/phone/Ringer;
    :cond_3
    return-void
.end method

.method private updateDualTalkState()V
    .locals 1

    .prologue
    .line 3250
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3251
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v0, :cond_0

    .line 3252
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 3254
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->updateState()V

    .line 3256
    :cond_1
    return-void
.end method

.method private vibrateWhenConnectOrDisconnect()V
    .locals 4

    .prologue
    .line 1809
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_connect_disconnect_vibrate"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1813
    .local v0, "vibrateDuration":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mVibrator:Landroid/os/Vibrator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1816
    :cond_0
    return-void
.end method

.method private vibrateWhenMOConnected()V
    .locals 3

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 3167
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged mCM.getActiveFgCallState()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged mPreviousCallState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before set value, mPreviousCallState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 3174
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end after set value, mPreviousCallState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    return-void
.end method

.method private voiceReport(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const v7, 0x7f0b04ab

    const/4 v8, 0x0

    .line 4049
    const-string v5, "start to voice report"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4050
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4091
    :cond_0
    :goto_0
    return-void

    .line 4054
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->checkVoiceReport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4058
    const-string v3, ""

    .line 4059
    .local v3, "num":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4060
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 4062
    :cond_2
    const-string v1, ""

    .line 4063
    .local v1, "content":Ljava/lang/String;
    const/16 v0, 0x30

    .line 4064
    .local v0, "contactMark":C
    iget-boolean v5, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v5, :cond_3

    .line 4065
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4067
    const/16 v0, 0x31

    .line 4073
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4074
    .local v4, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "utteranceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "__"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4075
    const-string v5, "streamType"

    const-string v6, "2"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4076
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_0

    .line 4078
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 4079
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 4080
    const-string v5, "speak error"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4081
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->initTts()V

    .line 4082
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 4083
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->restartRinger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4085
    :catch_0
    move-exception v2

    .line 4086
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "CallNotifier"

    const-string v6, "Tts service error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4087
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 4088
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->restartRinger()V

    goto/16 :goto_0

    .line 4069
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v7, 0x7f0b04ac

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private wakeUpScreenForDisconnect(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3472
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 3473
    .local v2, "r":Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3474
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3475
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->shouldAutoReject(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3478
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 3480
    :cond_1
    return-void
.end method


# virtual methods
.method public autoVTVoiceAnswerCall(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .param p1, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 2966
    const-string v5, "autointernalAnswerCall()..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2967
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 2969
    .local v2, "hasRingingCall":Z
    if-eqz v2, :cond_0

    .line 2970
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 2971
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2972
    .local v4, "phoneType":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 2977
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 2978
    .local v0, "hasActiveCall":Z
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 2988
    .local v1, "hasHoldingCall":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2989
    const-string v5, "autointernalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2996
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2997
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkAnswerCase()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v5}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3018
    .end local v0    # "hasActiveCall":Z
    .end local v1    # "hasHoldingCall":Z
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneType":I
    :cond_0
    :goto_0
    return-void

    .line 3002
    .restart local v0    # "hasActiveCall":Z
    .restart local v1    # "hasHoldingCall":Z
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "phoneType":I
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3010
    :cond_2
    const-string v5, "autointernalAnswerCall: answering..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3011
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3015
    .end local v0    # "hasActiveCall":Z
    .end local v1    # "hasHoldingCall":Z
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDefaultRingtoneUri(Lcom/android/internal/telephony/Call;)Landroid/net/Uri;
    .locals 5
    .param p1, "ringCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3609
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 3610
    .local v0, "customRingtoneUri":Landroid/net/Uri;
    if-nez p1, :cond_0

    .line 3635
    :goto_0
    return-object v0

    .line 3614
    :cond_0
    const-wide/16 v1, -0x1

    .line 3615
    .local v1, "simInfoId":J
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3616
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    iget-wide v1, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 3618
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultRingtoneUri: ringCall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; simInfoId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Phone type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultRingtoneUri: customRingtoneUri is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIsCdmaRedialCall()Z
    .locals 1

    .prologue
    .line 2571
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getIsRedialCall()Z
    .locals 1

    .prologue
    .line 1805
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getRedialTimes()I
    .locals 1

    .prologue
    .line 1798
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/CallNotifier;->mRedialTimes:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 2560
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 365
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessageMTK(Landroid/os/Message;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 584
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 370
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 406
    :sswitch_1
    const-string v8, "CallNotifier Phone state change"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 407
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 372
    :sswitch_2
    const-string v8, "RINGING... (new)"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 373
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 374
    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto :goto_0

    .line 378
    :sswitch_3
    const-string v8, "PHONE_INCOMING_RING !"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 381
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    iget-object v8, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 387
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    iget-object v5, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Phone;

    .line 388
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_2

    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v8, :cond_2

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mShouldSkipRing:Z

    if-nez v8, :cond_2

    .line 391
    const-string v8, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getCurrentConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 393
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getFirewallCode()I

    move-result v8

    if-eq v8, v12, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getFirewallCode()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 397
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 400
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_2
    const-string v8, "RING before NEW_RING, skipping"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    :sswitch_4
    const-string v8, "DISCONNECT"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->wakeUpScreenForDisconnect(Landroid/os/Message;)V

    .line 424
    iget v8, p1, Landroid/os/Message;->what:I

    sget-object v9, Lcom/android/phone/CallStateMonitor;->PHONE_DISCONNECT_GEMINI:[I

    invoke-static {v8, v9}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotIdByRegisterEvent(I[I)I

    move-result v3

    .line 425
    .local v3, "disconnectSlotId":I
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8, v3}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 430
    .end local v3    # "disconnectSlotId":I
    :sswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 434
    :sswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->onCustomRingtoneQueryTimeout(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 446
    :sswitch_7
    iget v8, p1, Landroid/os/Message;->what:I

    sget-object v9, Lcom/android/phone/CallNotifier;->PHONE_MWI_CHANGED_GEMINI:[I

    invoke-static {v8, v9}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotIdByRegisterEvent(I[I)I

    move-result v4

    .line 447
    .local v4, "mwiSlotId":I
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8, v4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getMessageWaitingIndicator(Lcom/android/internal/telephony/Phone;I)Z

    move-result v8

    invoke-direct {p0, v8, v4}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V

    goto/16 :goto_0

    .line 452
    .end local v4    # "mwiSlotId":I
    :sswitch_8
    const-string v8, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 453
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mAsyncResultForCdmaCallWaiting:Landroid/os/AsyncResult;

    .line 454
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8, v10}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 458
    :sswitch_9
    const-string v8, "CallNotifier"

    const-string v9, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 463
    :sswitch_a
    const-string v8, "CallNotifier"

    const-string v9, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-boolean v11, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 465
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 469
    :sswitch_b
    const-string v8, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 471
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8, v11}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    goto/16 :goto_0

    .line 475
    :sswitch_c
    const-string v8, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 476
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 480
    :sswitch_d
    const-string v8, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 481
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 485
    :sswitch_e
    const-string v8, "Received Display Info notification done event ..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 490
    :sswitch_f
    const-string v8, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 491
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, p1}, Lcom/android/phone/PhoneGlobals;->handleOtaspEvent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 495
    :sswitch_10
    const-string v8, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 496
    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v8, :cond_0

    .line 497
    const/4 v7, 0x5

    .line 498
    .local v7, "toneToPlay":I
    new-instance v8, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v8, p0, v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 499
    iput-boolean v11, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    goto/16 :goto_0

    .line 504
    .end local v7    # "toneToPlay":I
    :sswitch_11
    const-string v8, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 505
    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v8, :cond_0

    .line 506
    const/4 v7, 0x5

    .line 507
    .restart local v7    # "toneToPlay":I
    new-instance v8, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v8, p0, v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 508
    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    goto/16 :goto_0

    .line 513
    .end local v7    # "toneToPlay":I
    :sswitch_12
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 517
    :sswitch_13
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 521
    :sswitch_14
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/internal/telephony/Call;

    if-eqz v8, :cond_3

    .line 522
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 523
    .local v1, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 524
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 525
    .local v2, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_0

    .line 526
    const/16 v8, 0x3e9

    invoke-virtual {p0, v8, v2}, Lcom/android/phone/CallNotifier;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 527
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 530
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/internal/telephony/Connection;

    if-eqz v8, :cond_0

    .line 531
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/Connection;

    goto/16 :goto_0

    .line 538
    :sswitch_15
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 539
    .local v6, "ringing":Lcom/android/internal/telephony/Call;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    if-ne v6, v8, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 540
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 546
    .end local v6    # "ringing":Lcom/android/internal/telephony/Call;
    :sswitch_16
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMode()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 547
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-gtz v8, :cond_4

    .line 548
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 550
    :cond_4
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v12, v9, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 565
    :sswitch_17
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/internal/telephony/Connection;

    if-eqz v8, :cond_5

    .line 566
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 567
    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_5

    .line 568
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancel call record because of disconnected connection, c="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_5
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-virtual {v8}, Lcom/android/phone/CallRecordingServiceProxy;->startCallRecording()V

    .line 573
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->callCommandService:Lcom/android/phone/CallCommandService;

    invoke-virtual {v8, v10}, Lcom/android/phone/CallCommandService;->setManualFlag(Z)V

    goto/16 :goto_0

    .line 578
    :sswitch_18
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->voiceReport(Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_0

    .line 370
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_3
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x8 -> :sswitch_8
        0x9 -> :sswitch_10
        0xa -> :sswitch_11
        0xb -> :sswitch_12
        0xc -> :sswitch_13
        0x14 -> :sswitch_f
        0x15 -> :sswitch_7
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x18 -> :sswitch_e
        0x1a -> :sswitch_9
        0x64 -> :sswitch_6
        0x67 -> :sswitch_4
        0x79 -> :sswitch_7
        0xcb -> :sswitch_4
        0xdd -> :sswitch_7
        0x12f -> :sswitch_4
        0x141 -> :sswitch_7
        0x3e9 -> :sswitch_14
        0x3ea -> :sswitch_15
        0x3eb -> :sswitch_16
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_0
        0x3ee -> :sswitch_17
        0x3ef -> :sswitch_18
    .end sparse-switch
.end method

.method hasPendingCallerInfoQuery()Z
    .locals 2

    .prologue
    .line 3689
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothAudioConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3760
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_1

    .line 3761
    const-string v3, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHeadset)"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3772
    :cond_0
    :goto_0
    return v2

    .line 3764
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 3766
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3769
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3770
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 3771
    .local v2, "isAudioOn":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isBluetoothAvailable()Z
    .locals 5

    .prologue
    .line 3735
    const-string v3, "isBluetoothAvailable()..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3738
    const/4 v2, 0x0

    .line 3739
    .local v2, "isConnected":Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 3740
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 3742
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3743
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3744
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    .line 3746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - isConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3752
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3753
    return v2
.end method

.method public isForwardCall()Z
    .locals 1

    .prologue
    .line 2837
    const/4 v0, 0x0

    .line 2848
    .local v0, "isForwardCall":Z
    return v0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 14
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 1288
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/phone/CallNotifier$CustomInfo;

    if-eqz v1, :cond_2

    .line 1290
    const-string v1, "CallerInfo query complete, posting missed call notification"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1300
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1301
    .local v5, "photo":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 1302
    .local v6, "photoIcon":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    if-nez v6, :cond_0

    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v1, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1305
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object/from16 v7, p2

    check-cast v7, Lcom/android/phone/CallNotifier$CustomInfo;

    iget-wide v7, v7, Lcom/android/phone/CallNotifier$CustomInfo;->date:J

    check-cast p2, Lcom/android/phone/CallNotifier$CustomInfo;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    invoke-virtual/range {v1 .. v9}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JI)V

    .line 1360
    .end local v5    # "photo":Landroid/graphics/drawable/Drawable;
    .end local v6    # "photoIcon":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 1308
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_1

    move-object/from16 v10, p2

    .line 1309
    check-cast v10, Lcom/android/internal/telephony/Connection;

    .line 1310
    .local v10, "c":Lcom/android/internal/telephony/Connection;
    const-string v1, "CallerInfo query complete (for CallNotifier), updating state for incoming call.."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1314
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1316
    const/4 v11, 0x0

    .line 1317
    .local v11, "isQueryExecutionTimeOK":Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 1318
    :try_start_0
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 1319
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1320
    const/4 v11, 0x1

    .line 1322
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    if-eqz v11, :cond_1

    .line 1327
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v1, :cond_4

    .line 1328
    const-string v1, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 1330
    .local v13, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-ne v1, v10, :cond_4

    .line 1331
    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1322
    .end local v13    # "ringingCall":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1337
    :cond_4
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 1338
    const-string v1, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactRingtoneUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1342
    iget-object v12, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1343
    .local v12, "r":Lcom/android/phone/Ringer;
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v12, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1357
    .end local v12    # "r":Lcom/android/phone/Ringer;
    :cond_5
    :goto_1
    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 1345
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1
.end method

.method public onReceiveVTManagerStartCounter()V
    .locals 5

    .prologue
    .line 3843
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 3844
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3845
    .local v0, "call":Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3846
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3848
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 3849
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3850
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3851
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 3853
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 3858
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    return-void
.end method

.method public onTimeToReminder()V
    .locals 2

    .prologue
    .line 3780
    const/16 v0, 0xf

    .line 3782
    .local v0, "toneToPlay":I
    const-string v1, "- onTimeToReminder ..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3784
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 3785
    return-void
.end method

.method resetAudioState()V
    .locals 3

    .prologue
    .line 3674
    const-string v0, "resetAudioState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3677
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 3678
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 3683
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3684
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3686
    :cond_1
    return-void
.end method

.method public resetBeforeCall()V
    .locals 1

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2900
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mToneThread:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2902
    const-string v0, "resetBeforeCall: notify the tone thread to exit."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2909
    :goto_0
    return-void

    .line 2906
    :cond_0
    const-string v0, "resetBeforeCall: do nothing."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method restartRinger()V
    .locals 3

    .prologue
    .line 1943
    const-string v1, "restartRinger()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1954
    :cond_0
    :goto_0
    return-void

    .line 1946
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1950
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ringingCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1952
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 2495
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 2496
    return-void
.end method

.method sendMwiChangedDelayed(JI)V
    .locals 4
    .param p1, "delayMillis"    # J
    .param p3, "slotId"    # I

    .prologue
    .line 1878
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1879
    .local v1, "message":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p3, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 1880
    .local v0, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMwiChangedDelayed, error slot(): slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1881
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1882
    sget-object v2, Lcom/android/phone/CallNotifier;->PHONE_MWI_CHANGED_GEMINI:[I

    aget v2, v2, v0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1883
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1887
    :goto_0
    return-void

    .line 1885
    :cond_0
    const-string v2, "sendMwiChangedDelayed, error slot"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 9
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "date"    # J

    .prologue
    .line 2586
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->createCustomInfo(Lcom/android/internal/telephony/Connection;J)Lcom/android/phone/CallNotifier$CustomInfo;

    move-result-object v1

    .line 2587
    .local v1, "customInfo":Lcom/android/phone/CallNotifier$CustomInfo;
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v6, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 2590
    .local v2, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v2, :cond_6

    .line 2593
    const-string v6, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2594
    iget-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v6, :cond_3

    .line 2597
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2602
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2603
    .local v4, "name":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2606
    .local v5, "number":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2607
    if-nez v4, :cond_0

    .line 2609
    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2611
    :cond_0
    if-eqz p1, :cond_1

    .line 2612
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2621
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v6, v7, :cond_4

    .line 2622
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v7, 0x7f0b0186

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2633
    :goto_0
    new-instance v3, Lcom/android/phone/NotificationMgr$NotificationInfo;

    invoke-direct {v3}, Lcom/android/phone/NotificationMgr$NotificationInfo;-><init>()V

    .line 2634
    .local v3, "n":Lcom/android/phone/NotificationMgr$NotificationInfo;
    iput-object v4, v3, Lcom/android/phone/NotificationMgr$NotificationInfo;->name:Ljava/lang/String;

    .line 2635
    iput-object v5, v3, Lcom/android/phone/NotificationMgr$NotificationInfo;->number:Ljava/lang/String;

    .line 2636
    iput-wide p2, v3, Lcom/android/phone/NotificationMgr$NotificationInfo;->date:J

    .line 2637
    iget v6, v1, Lcom/android/phone/CallNotifier$CustomInfo;->callVideo:I

    iput v6, v3, Lcom/android/phone/NotificationMgr$NotificationInfo;->callVideo:I

    .line 2638
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/phone/NotificationMgr$NotificationInfo;->slotId:I

    .line 2639
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2640
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v6

    iput v6, v3, Lcom/android/phone/NotificationMgr$NotificationInfo;->slotId:I

    .line 2642
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v6, v3}, Lcom/android/phone/NotificationMgr;->showMissedCallNotification(Lcom/android/phone/NotificationMgr$NotificationInfo;)V

    .line 2650
    .end local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .end local v3    # "n":Lcom/android/phone/NotificationMgr$NotificationInfo;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 2623
    .restart local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    :cond_4
    iget v6, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v6, v7, :cond_5

    .line 2624
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v7, 0x7f0b0185

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2626
    :cond_5
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v7, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v6, v0, v5, v7}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2648
    .end local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    :cond_6
    const-string v6, "CallNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method silenceRinger()V
    .locals 2

    .prologue
    .line 1914
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1915
    const-string v1, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1916
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1918
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 1919
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1920
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1923
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->stopSensor()V

    .line 1924
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetRingerVolume()V

    .line 1926
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 1928
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :cond_1
    :goto_0
    return-void

    .line 1929
    :catch_0
    move-exception v0

    .line 1930
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 2437
    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2438
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2439
    return-void
.end method

.method switchRingToneByNeeded(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "ring"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3220
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3221
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3222
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    if-nez v0, :cond_1

    .line 3247
    .end local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_0
    return-void

    .line 3226
    .restart local v0    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 3228
    .local v1, "custUri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 3229
    const-string v2, "switchRingToneByNeeded: custUri == null"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3232
    invoke-virtual {p0, p1}, Lcom/android/phone/CallNotifier;->getDefaultRingtoneUri(Lcom/android/internal/telephony/Call;)Landroid/net/Uri;

    move-result-object v1

    .line 3234
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchRingToneByNeeded: ring call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchRingToneByNeeded: new ringUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchRingToneByNeeded: old ringUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->getCustomRingToneUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3238
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->getCustomRingToneUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3239
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 3240
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3242
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 3244
    const-string v2, "switchRingToneByNeeded: stop and start new ring!"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchRingtoneForDualTalk()V
    .locals 1

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->switchRingtoneForDualTalk(Lcom/android/phone/Ringer;)V

    .line 3283
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1253
    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v0, :cond_0

    .line 1257
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1264
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 1268
    :cond_1
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1271
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1274
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 1275
    return-void
.end method

.method public updateReminder()V
    .locals 6

    .prologue
    .line 3788
    const/4 v0, 0x0

    .line 3789
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3790
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3794
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3795
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3797
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3803
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3804
    .local v1, "state":Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateReminder, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3805
    sget-object v2, Lcom/android/phone/CallNotifier$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3834
    const-string v2, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReminder: unexpected call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    :cond_1
    :goto_2
    return-void

    .line 3792
    .end local v1    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 3799
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    .line 3809
    .restart local v1    # "state":Lcom/android/internal/telephony/Call$State;
    :pswitch_0
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 3811
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3813
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->onReceiveVTManagerStartCounter()V

    goto :goto_2

    .line 3819
    :cond_4
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 3830
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->stopReminder()V

    goto :goto_2

    .line 3805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

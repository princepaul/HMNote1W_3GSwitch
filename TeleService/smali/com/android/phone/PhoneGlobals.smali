.class public Lcom/android/phone/PhoneGlobals;
.super Landroid/content/ContextWrapper;
.source "PhoneGlobals.java"

# interfaces
.implements Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneGlobals$3;,
        Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$WakeState;
    }
.end annotation


# static fields
.field public static final ACTION_CALL_BACK_FROM_NOTIFICATION:Ljava/lang/String; = "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

.field public static final ACTION_HANG_UP_ONGOING_CALL:Ljava/lang/String; = "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

.field private static final ACTION_MODEM_STATE:Ljava/lang/String; = "com.mtk.ACTION_MODEM_STATE"

.field private static final ACTION_PREBOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field public static final ACTION_SEND_SMS_FROM_NOTIFICATION:Ljava/lang/String; = "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final ALLOWED_EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.dialer.DialtactsActivity"

.field private static final CALL_ORIGIN_EXPIRATION_MILLIS:J = 0x7530L

.field private static final CCCI_MD_BROADCAST_EXCEPTION:I = 0x1

.field private static final CCCI_MD_BROADCAST_READY:I = 0x3

.field private static final CCCI_MD_BROADCAST_RESET:I = 0x2

.field private static final DBG:Z = true

.field public static final DBG_LEVEL:I = 0x1

.field private static final DEFAULT_CALL_ORIGIN_PACKAGE:Ljava/lang/String; = "com.android.dialer"

.field public static final DELAY_SHOW_INCALL_SCREEN_FOR_STK_SETUP_CALL:I = 0xa0

.field private static final EVENT_DATA_ROAMING_DISCONNECTED:I = 0xa

.field private static final EVENT_DATA_ROAMING_OK:I = 0xb

.field private static final EVENT_DOCK_STATE_CHANGED:I = 0xd

.field public static final EVENT_SHOW_INCALL_SCREEN_FOR_STK_SETUP_CALL:I = 0x39

.field private static final EVENT_SIM_NETWORK_LOCKED2:I = 0x67

.field private static final EVENT_SIM_NETWORK_LOCKED3:I = 0xcb

.field private static final EVENT_SIM_NETWORK_LOCKED4:I = 0x12f

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x8

.field private static final EVENT_START_SIP_SERVICE:I = 0x11

.field private static final EVENT_TIMEOUT:I = 0x12

.field private static final EVENT_TOUCH_ANSWER_VT:I = 0x1e

.field private static final EVENT_TTY_MODE_GET:I = 0xf

.field private static final EVENT_TTY_MODE_SET:I = 0x10

.field private static final EVENT_TTY_PREFERRED_MODE_CHANGED:I = 0xe

.field private static final EVENT_UNSOL_CDMA_INFO_RECORD:I = 0xc

.field public static final EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.phone.CALL_ORIGIN"

.field public static final IS_VIDEO_CALL_SUPPORT:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "PhoneGlobals"

.field public static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x271b

.field public static final MISSEDCALL_DELETE_INTENT:Ljava/lang/String; = "com.android.phone.MISSEDCALL_DELETE_INTENT"

.field public static final MMI_CANCEL:I = 0x35

.field public static final MMI_CANCEL2:I = 0x99

.field public static final MMI_CANCEL3:I = 0xfd

.field public static final MMI_CANCEL4:I = 0x161

.field public static final MMI_CANCEL_GEMINI:[I

.field public static final MMI_COMPLETE:I = 0x34

.field public static final MMI_COMPLETE2:I = 0x98

.field public static final MMI_COMPLETE3:I = 0xfc

.field public static final MMI_COMPLETE4:I = 0x160

.field public static final MMI_COMPLETE_GEMINI:[I

.field public static final MMI_INITIATE:I = 0x33

.field public static final MMI_INITIATE2:I = 0x97

.field public static final MMI_INITIATE3:I = 0xfb

.field public static final MMI_INITIATE4:I = 0x15f

.field public static final MMI_INITIATE_GEMINI:[I

.field public static final NETWORK_MODE_CHANGE:Ljava/lang/String; = "com.android.phone.NETWORK_MODE_CHANGE"

.field public static final NETWORK_MODE_CHANGE_RESPONSE:Ljava/lang/String; = "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

.field public static final OLD_NETWORK_MODE:Ljava/lang/String; = "com.android.phone.OLD_NETWORK_MODE"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROCESS_OUTGOING_CALLS"

.field static final PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

.field private static final STKCALL_REGISTER_SPEECH_INFO:Ljava/lang/String; = "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

.field public static final UNCONDITIONAL_CALL_FORWARDING:Ljava/lang/String; = "unconditional_call_forwarding"

.field private static final VDBG:Z = true

.field static mDockState:I

.field private static sMe:Lcom/android/phone/PhoneGlobals;

.field public static sVoiceCapable:Z


# instance fields
.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private audioRouter:Lcom/android/phone/AudioRouter;

.field private bluetoothManager:Lcom/android/phone/BluetoothManager;

.field public callCommandService:Lcom/android/phone/CallCommandService;

.field public callController:Lcom/android/phone/CallController;

.field private callGatewayManager:Lcom/android/phone/CallGatewayManager;

.field private callHandlerServiceProxy:Lcom/android/phone/CallHandlerServiceProxy;

.field private callModeler:Lcom/android/phone/CallModeler;

.field private callStateMonitor:Lcom/android/phone/CallStateMonitor;

.field public callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field public cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field private dtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBeginningCall:Z

.field private mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

.field private final mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

.field public mCM:Lcom/android/internal/telephony/CallManager;

.field public mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCachedSimPin:Ljava/lang/String;

.field private mCallForwardStatusQueried:Z

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field protected mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

.field public mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mCurrentServiceState:I

.field mHandler:Landroid/os/Handler;

.field private mIsNoService:[Z

.field private mIsSimPinEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field mMiuiNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldRestoreMuteOnInCallResume:Z

.field private mTtyEnabled:Z

.field private mUpdateLock:Landroid/os/UpdateLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockForDisconnect:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

.field private mWakelockSequence:I

.field public notificationMgr:Lcom/android/phone/NotificationMgr;

.field public notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field public phone:Lcom/android/internal/telephony/Phone;

.field public phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field public phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

.field public ringer:Lcom/android/phone/Ringer;

.field private wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 223
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "gsm.ril.uicctype"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.uicctype.2"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "gsm.ril.uicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.uicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/PhoneGlobals;->PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 265
    sput v4, Lcom/android/phone/PhoneGlobals;->mDockState:I

    .line 266
    sput-boolean v5, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    .line 1710
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/PhoneGlobals;->MMI_INITIATE_GEMINI:[I

    .line 1712
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/PhoneGlobals;->MMI_COMPLETE_GEMINI:[I

    .line 1714
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/PhoneGlobals;->MMI_CANCEL_GEMINI:[I

    return-void

    .line 1710
    nop

    :array_0
    .array-data 4
        0x33
        0x97
        0xfb
        0x15f
    .end array-data

    .line 1712
    :array_1
    .array-data 4
        0x34
        0x98
        0xfc
        0x160
    .end array-data

    .line 1714
    :array_2
    .array-data 4
        0x35
        0x99
        0xfd
        0x161
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 486
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 230
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 287
    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    .line 298
    new-instance v0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    iput v3, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    .line 334
    iput-boolean v3, p0, Lcom/android/phone/PhoneGlobals;->mCallForwardStatusQueried:Z

    .line 336
    iput v5, p0, Lcom/android/phone/PhoneGlobals;->mCurrentServiceState:I

    .line 349
    new-instance v0, Lcom/android/phone/PhoneGlobals$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$1;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    .line 1624
    new-instance v0, Lcom/android/phone/PhoneGlobals$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$2;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    .line 1673
    iput v3, p0, Lcom/android/phone/PhoneGlobals;->mWakelockSequence:I

    .line 1690
    new-array v0, v6, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mIsNoService:[Z

    .line 1692
    iput-object v4, p0, Lcom/android/phone/PhoneGlobals;->mAudioManager:Landroid/media/AudioManager;

    .line 1694
    iput-object v4, p0, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 487
    sput-object p0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    .line 488
    return-void

    .line 1690
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/PhoneGlobals;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneGlobals;->onReceiveGlobalMtkActions(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneGlobals;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneGlobals;->onReceiveAirplanModeChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneGlobals;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneGlobals;->onReceiveSimStateChagne(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->initDefaultSlotId(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/phone/PhoneGlobals;->dismissKeyguard(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/phone/PhoneGlobals;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHeadsetPhone;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleMessageMtk(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/WiredHeadsetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/BluetoothManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/AudioRouter;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->audioRouter:Lcom/android/phone/AudioRouter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneGlobals;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneGlobals;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneGlobals;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->convertTTYmodeToRadio(I)I

    move-result v0

    return v0
.end method

.method private addActionForGlobalReceiver(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 1791
    const-string v0, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1792
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1793
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1794
    const-string v0, "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1795
    const-string v0, "com.android.phone.MISSEDCALL_DELETE_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1798
    const-string v0, "com.android.phone.NETWORK_MODE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1799
    const-string v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1800
    const-string v0, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1801
    sget-object v0, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1802
    const-string v0, "android.intent.action.RADIO_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1803
    const-string v0, "com.mtk.ACTION_MODEM_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1805
    return-object p1
.end method

.method private addCallLogs(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 2166
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call.getState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const/4 v4, 0x0

    .line 2169
    .local v4, "slot":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 2170
    .local v3, "myPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 2172
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v4

    .line 2174
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2176
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    .line 2177
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2178
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2179
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v5, v0, v4}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;I)V

    .line 2180
    const-string v5, "PhoneGlobals"

    const-string v6, "addCallLogs for shut down action"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2184
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private addCurrentCalltoCallLogs()V
    .locals 5

    .prologue
    .line 2253
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2254
    .local v2, "ringCall":Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2255
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2257
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2258
    invoke-direct {p0, v2}, Lcom/android/phone/PhoneGlobals;->addCallLogs(Lcom/android/internal/telephony/Call;)V

    .line 2261
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    .line 2262
    invoke-direct {p0, v1}, Lcom/android/phone/PhoneGlobals;->addCallLogs(Lcom/android/internal/telephony/Call;)V

    .line 2265
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 2266
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneGlobals;->addCallLogs(Lcom/android/internal/telephony/Call;)V

    .line 2268
    :cond_2
    return-void
.end method

.method public static bNeedUnlockSIMLock(I)Z
    .locals 4
    .param p0, "iSIMNum"    # I

    .prologue
    .line 2240
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 2241
    .local v0, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    .line 2245
    :cond_0
    const-string v1, "PhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bNeedUnlockSIMLock][NO Card/PIN/PUK]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const/4 v1, 0x0

    .line 2248
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkScreenOnForVT(Z)Z
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 2199
    move v0, p1

    .line 2204
    .local v0, "screenOnImmediately":Z
    return v0
.end method

.method private clearSimSettingFlag(I)V
    .locals 9
    .param p1, "slot"    # I

    .prologue
    .line 2209
    const-wide/16 v3, 0x3

    mul-int/lit8 v5, p1, 0x2

    shl-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2211
    .local v0, "bitSetMask":Ljava/lang/Long;
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2214
    .local v2, "simLockState":Ljava/lang/Long;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sim_lock_state_setting"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2217
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2219
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sim_lock_state_setting"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    :goto_0
    return-void

    .line 2221
    :catch_0
    move-exception v1

    .line 2222
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PhoneGlobals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearSimSettingFlag exception, slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertTTYmodeToRadio(I)I
    .locals 1
    .param p1, "ttyMode"    # I

    .prologue
    .line 2129
    const/4 v0, 0x0

    .line 2131
    .local v0, "radioMode":I
    packed-switch p1, :pswitch_data_0

    .line 2138
    const/4 v0, 0x0

    .line 2140
    :goto_0
    return v0

    .line 2135
    :pswitch_0
    const/4 v0, 0x1

    .line 2136
    goto :goto_0

    .line 2131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 871
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    return-object v0
.end method

.method static createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

    const/4 v2, 0x0

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 889
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static createPendingCallLogIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 876
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 877
    .local v0, "callLogIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 878
    .local v1, "taskStackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 879
    invoke-virtual {v1, v2, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private static dismissKeyguard(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2011
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 2012
    .local v2, "km":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_0

    .line 2013
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2014
    const-string v3, "PhoneGlobals"

    const-string v4, "dismissKeyguard: Disable keyguard!"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    :try_start_0
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 2018
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 2019
    :catch_0
    move-exception v1

    .line 2020
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "PhoneGlobals"

    const-string v4, "dismissKeyguard: fail..."

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 2567
    const-string v2, "PhoneGlobals:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2568
    sget-object v2, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2570
    .local v0, "slot0Mode":Ljava/lang/String;
    sget-object v2, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode.1"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2572
    .local v1, "slot1Mode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PREFERRED_NETWORK_MODE slot0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slot1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    return-void
.end method

.method static getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 893
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 896
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/phone/PhoneGlobals;
    .locals 2

    .prologue
    .line 798
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    if-nez v0, :cond_0

    .line 799
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No PhoneGlobals here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static getInstanceIfPrimary()Lcom/android/phone/PhoneGlobals;
    .locals 1

    .prologue
    .line 809
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method public static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 816
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 820
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v1

    .line 822
    .local v1, "mCMGemini":Lcom/android/internal/telephony/gemini/MTKCallManager;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 823
    .local v0, "geminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 825
    .end local v0    # "geminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v1    # "mCMGemini":Lcom/android/internal/telephony/gemini/MTKCallManager;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method static getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 901
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 904
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private handleHeadsetHookKeyForDualtalk()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2408
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    .line 2411
    const-string v1, "PhoneGlobals"

    const-string v2, "handleCallKeyForDualTalk: rev call-key when ringing!"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isRingingWhenOutgoing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2416
    :cond_0
    const-string v0, "PhoneGlobals"

    const-string v1, "handleCallKeyForDualTalk: call internalAnswerCall directly"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalAnswerCall()V

    .line 2418
    const/4 v0, 0x1

    .line 2423
    :cond_1
    return v0
.end method

.method private handleMessageMtk(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2034
    const-string v8, "PhoneGlobals"

    const-string v9, "handleMessageMtk"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 2096
    const-string v7, "PhoneGlobals"

    const-string v8, "handleMessageMtk, false (not mtk message)"

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    :goto_0
    return v6

    .line 2040
    :sswitch_0
    iget v6, p1, Landroid/os/Message;->what:I

    sget-object v8, Lcom/android/phone/PhoneGlobals;->MMI_INITIATE_GEMINI:[I

    invoke-static {v6, v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotIdByRegisterEvent(I[I)I

    move-result v5

    .line 2042
    .local v5, "mmiInitiateSlot":I
    const-string v6, "PhoneGlobals"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessageMtk, MMI_INITIATE slot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "mmiInitiateSlot":I
    :goto_1
    :sswitch_1
    move v6, v7

    .line 2099
    goto :goto_0

    .line 2048
    :sswitch_2
    iget v6, p1, Landroid/os/Message;->what:I

    sget-object v8, Lcom/android/phone/PhoneGlobals;->MMI_COMPLETE_GEMINI:[I

    invoke-static {v6, v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotIdByRegisterEvent(I[I)I

    move-result v4

    .line 2050
    .local v4, "mmiCompleteSlot":I
    const-string v6, "PhoneGlobals"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessageMtk, MMI_COMPLETE slot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6, v4}, Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;I)V

    goto :goto_1

    .line 2058
    .end local v4    # "mmiCompleteSlot":I
    :sswitch_3
    iget v6, p1, Landroid/os/Message;->what:I

    sget-object v8, Lcom/android/phone/PhoneGlobals;->MMI_CANCEL_GEMINI:[I

    invoke-static {v6, v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotIdByRegisterEvent(I[I)I

    move-result v3

    .line 2060
    .local v3, "mmiCancelSlot":I
    const-string v6, "PhoneGlobals"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessageMtk, MMI_CANCEL slot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6, v3}, Lcom/android/phone/PhoneUtils;->cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z

    .line 2062
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dismissUssdDialog()V

    .line 2063
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dismissMMIDialog()V

    goto :goto_1

    .line 2067
    .end local v3    # "mmiCancelSlot":I
    :sswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6}, Lcom/android/phone/PhoneGlobals;->handleTimeout(I)V

    goto :goto_1

    .line 2071
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2072
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2073
    .local v2, "it":Landroid/content/Intent;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    .line 2074
    const-string v6, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2075
    const-string v6, "NEW_NETWORK_MODE"

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2080
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 2077
    :cond_0
    const-string v8, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2078
    const-string v6, "com.android.phone.OLD_NETWORK_MODE"

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 2084
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "it":Landroid/content/Intent;
    :sswitch_6
    const-string v6, "PhoneGlobals"

    const-string v8, "handleMessageMtk, EVENT_TOUCH_ANSWER_VT"

    invoke-static {v6, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalAnswerCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2087
    :catch_0
    move-exception v1

    .line 2088
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PhoneGlobals"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_TOUCH_ANSWER_VT exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2035
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_4
        0x1e -> :sswitch_6
        0x33 -> :sswitch_0
        0x34 -> :sswitch_2
        0x35 -> :sswitch_3
        0x39 -> :sswitch_1
        0x97 -> :sswitch_0
        0x98 -> :sswitch_2
        0x99 -> :sswitch_3
        0xfb -> :sswitch_0
        0xfc -> :sswitch_2
        0xfd -> :sswitch_3
        0x15f -> :sswitch_0
        0x160 -> :sswitch_2
        0x161 -> :sswitch_3
        0x271b -> :sswitch_5
    .end sparse-switch
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1539
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1540
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 1541
    const-string v5, "PhoneGlobals"

    const-string v6, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :goto_0
    return-void

    .line 1543
    :cond_0
    const-string v5, "PhoneGlobals"

    const-string v6, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v4, 0x0

    .line 1550
    .local v4, "ttymode":I
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v5}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1551
    iget v4, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    .line 1554
    :cond_1
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v3, "ttyModeChanged":Landroid/content/Intent;
    const-string v6, "ttyEnabled"

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1558
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v5}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1561
    packed-switch v4, :pswitch_data_0

    .line 1573
    const-string v2, "tty_off"

    .line 1576
    .local v2, "audioTtyMode":Ljava/lang/String;
    :goto_2
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1577
    .local v1, "audioManager":Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tty_mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1580
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setTtyMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1557
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "audioTtyMode":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1563
    :pswitch_0
    const-string v2, "tty_full"

    .line 1564
    .restart local v2    # "audioTtyMode":Ljava/lang/String;
    goto :goto_2

    .line 1566
    .end local v2    # "audioTtyMode":Ljava/lang/String;
    :pswitch_1
    const-string v2, "tty_vco"

    .line 1567
    .restart local v2    # "audioTtyMode":Ljava/lang/String;
    goto :goto_2

    .line 1569
    .end local v2    # "audioTtyMode":Ljava/lang/String;
    :pswitch_2
    const-string v2, "tty_hco"

    .line 1570
    .restart local v2    # "audioTtyMode":Ljava/lang/String;
    goto :goto_2

    .line 1561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1500
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1502
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1503
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1504
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(II)V

    .line 1506
    .end local v1    # "state":I
    :cond_0
    return-void
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1585
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1587
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1588
    const-string v2, "PhoneGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1599
    .local v1, "m":Landroid/os/Message;
    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1600
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1602
    return-void
.end method

.method private handleTimeout(I)V
    .locals 2
    .param p1, "seq"    # I

    .prologue
    .line 2103
    monitor-enter p0

    .line 2105
    :try_start_0
    const-string v0, "PhoneGlobals"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLockForDisconnect:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2110
    :cond_0
    monitor-exit p0

    .line 2111
    return-void

    .line 2110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initDefaultSlotId(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2540
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 2542
    .local v1, "ss":Landroid/telephony/ServiceState;
    if-eqz v1, :cond_0

    .line 2543
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 2544
    .local v2, "state":I
    if-nez v2, :cond_0

    .line 2545
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2564
    .end local v2    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 2547
    .restart local v2    # "state":I
    :pswitch_0
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/telephony/SubscriptionManagerEx;->setDefaultDataSlotIdInternal(I)V

    .line 2548
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneGlobals;->setDefaultDataGemini(I)V

    .line 2549
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSlotId()I

    move-result v0

    .line 2550
    .local v0, "preferredVoiceSlot":I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v3

    if-eq v0, v3, :cond_0

    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v3, v0, :cond_0

    .line 2551
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v3

    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-virtual {v3, v4}, Lmiui/telephony/SubscriptionManagerEx;->setDefaultVoiceSlotIdInternal(I)V

    .line 2552
    const-string v3, "PhoneGlobals"

    const-string v4, "initDefaultSlotId: reset default voice slot id."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2556
    .end local v0    # "preferredVoiceSlot":I
    :pswitch_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneGlobals;->setDefaultDataGemini(I)V

    goto :goto_0

    .line 2545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initForMtkFeatures()V
    .locals 2

    .prologue
    .line 1754
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0, v1}, Lcom/mediatek/phone/ext/PhoneGlobalsExtension;->onCreate(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 1756
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->registerDefaultVTListener()V

    .line 1758
    invoke-static {p0}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/SimAssociateHandler;->prepair()V

    .line 1759
    invoke-static {p0}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/SimAssociateHandler;->load()V

    .line 1760
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v0}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 1761
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 1764
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->init()V

    .line 1767
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 1770
    invoke-static {p0}, Lcom/mediatek/phone/provider/CallHistoryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/mediatek/phone/provider/CallHistoryDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/provider/CallHistoryDatabaseHelper;->initDatabase()V

    .line 1773
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 1776
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/HyphonManager;->init(Landroid/content/Context;)V

    .line 1780
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFileAsync()V

    .line 1782
    return-void
.end method

.method private initForNewRadioTechnology()V
    .locals 3

    .prologue
    .line 1196
    const-string v1, "PhoneGlobals"

    const-string v2, "initForNewRadioTechnology..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1200
    new-instance v1, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v1}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1201
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1203
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1205
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_1

    .line 1206
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1208
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v1, :cond_2

    .line 1209
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1211
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v1, :cond_3

    .line 1212
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1214
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v1, :cond_4

    .line 1215
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1222
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1223
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1224
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->callStateMonitor:Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v1}, Lcom/android/phone/CallStateMonitor;->updateAfterRadioTechnologyChange()V

    .line 1226
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_5

    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->updateBtHandsfreeAfterRadioTechnologyChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :cond_5
    :goto_1
    return-void

    .line 1219
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneGlobals"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;I)V
    .locals 8
    .param p1, "r"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    .line 1176
    const-string v0, "PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMMIComplete(), slotId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 1178
    .local v2, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    if-nez v2, :cond_0

    .line 1179
    const-string v0, "PhoneGlobals"

    const-string v1, "onMMIComplete(), mmiCode is null"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :goto_0
    return-void

    .line 1182
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v7

    .line 1183
    .local v7, "state":Lcom/android/internal/telephony/MmiCode$State;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v7, v0, :cond_1

    .line 1185
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1186
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "com.android.phone.mmi"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    invoke-virtual {p0, v6}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 1190
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 1191
    .local v3, "message":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->displayMMICompleteExt(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Lmiui/app/AlertDialog;I)V

    goto :goto_0
.end method

.method private onReceiveAirplanModeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1921
    const-string v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1922
    .local v3, "enabled":Z
    const-string v4, "PhoneGlobals"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveAirplanModeChange, AIRPLANEMODE enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    if-eqz v3, :cond_0

    .line 1924
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dismissMMIDialog()V

    .line 1930
    :cond_0
    if-eqz v3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_1

    .line 1931
    const-string v4, "PhoneGlobals"

    const-string v5, "Hangup all calls before turning on airplane mode"

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hangupAllEx()Z
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1952
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->closeVTManager()V

    .line 1953
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v4

    iput-boolean v7, v4, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 1958
    :cond_2
    const-string v0, "gsm.ril.eboot"

    .line 1959
    .local v0, "GSM_RIL_EBOOT":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1960
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->setRadioOff()Z

    .line 1989
    :goto_1
    return-void

    .line 1934
    .end local v0    # "GSM_RIL_EBOOT":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1935
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "PhoneGlobals"

    const-string v5, "onReceive mCM.hangupAllEx() exception."

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1962
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v0    # "GSM_RIL_EBOOT":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 1963
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v7, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZ)V

    goto :goto_1

    .line 1967
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1969
    .local v1, "SimModeSetting":I
    if-nez v1, :cond_5

    .line 1970
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_5

    .line 1973
    const-string v4, "PhoneGlobals"

    const-string v5, "Force notify ServiceState"

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->forceNotifyServiceStateChange()V

    .line 1980
    :cond_5
    const-string v4, "gsm.ril.eboot"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v4, "PhoneGlobals"

    const-string v5, "set gsm.ril.eboot to 1 for flight mode on"

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->setRadioPowerOn()V

    goto :goto_1
.end method

.method private onReceiveGlobalMtkActions(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1809
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1810
    .local v0, "action":Ljava/lang/String;
    const-string v8, "PhoneGlobals"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceiveMtkActions, action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v8, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1812
    const-string v8, "mode"

    const/4 v9, 0x3

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1814
    .local v2, "mode":I
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setRadioPower(Lcom/android/internal/telephony/Phone;I)V

    .line 1815
    const/4 v8, 0x1

    .line 1917
    .end local v2    # "mode":I
    :goto_0
    return v8

    .line 1816
    :cond_0
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1817
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 1916
    :cond_1
    :goto_1
    const-string v8, "PhoneGlobals"

    const-string v9, "onReceiveMtkActions, not mtk actions"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const/4 v8, 0x0

    goto :goto_0

    .line 1818
    :cond_2
    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1819
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->callStateMonitor:Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v8}, Lcom/android/phone/CallStateMonitor;->unregisterForNotifications()V

    .line 1820
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->addCurrentCalltoCallLogs()V

    goto :goto_1

    .line 1821
    :cond_3
    const-string v8, "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1822
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->placeCallRegister(Lcom/android/internal/telephony/Phone;)V

    .line 1823
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x39

    const-wide/16 v10, 0xa0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1825
    :cond_4
    const-string v8, "com.android.phone.MISSEDCALL_DELETE_INTENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1826
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->resetMissedCallNumber()V

    goto :goto_1

    .line 1827
    :cond_5
    const-string v8, "com.android.phone.NETWORK_MODE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1828
    const-string v8, "com.android.phone.NETWORK_MODE_CHANGE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1829
    .local v3, "modemNetworkMode":I
    const-string v8, "simId"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1830
    .local v7, "slotId":I
    const-string v8, "com.android.phone.OLD_NETWORK_MODE"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1831
    .local v4, "oldmode":I
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x271b

    invoke-virtual {v9, v10, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-static {v8, v3, v9, v7}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setPreferredNetworkType(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V

    goto :goto_1

    .line 1834
    .end local v3    # "modemNetworkMode":I
    .end local v4    # "oldmode":I
    .end local v7    # "slotId":I
    :cond_6
    const-string v8, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1836
    const/4 v5, 0x0

    .local v5, "simIdx":I
    :goto_2
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v5, v8, :cond_7

    .line 1837
    sget-object v8, Lcom/android/phone/PhoneGlobals;->PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    aget-object v8, v8, v5

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v8, v8, v5

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1841
    :cond_7
    const-string v8, "sys.boot.reason"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1842
    .local v1, "bootReason":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1843
    const-string v8, "PhoneGlobals"

    const-string v9, "Alarm boot shutdown and not turn off radio again"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    :goto_3
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    if-eqz v8, :cond_8

    .line 1868
    const-string v8, "PhoneGlobals"

    const-string v9, "IPO Shutdown: call cancelMissedCallNotification()"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 1870
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1876
    :cond_8
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1877
    const-string v8, "PhoneGlobals"

    const-string v9, "IPO Shutdown: stop ringtone"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 1845
    :cond_9
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZ)V

    goto :goto_3

    .line 1881
    .end local v1    # "bootReason":Ljava/lang/String;
    .end local v5    # "simIdx":I
    :cond_a
    const-string v8, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1882
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sim_lock_state_setting"

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1886
    const-string v8, "gsm.ril.eboot"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    const-string v8, "PhoneGlobals"

    const-string v9, "Set gsm.ril.eboot to 0"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->setRadioPowerOn()V

    .line 1896
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    if-eqz v8, :cond_b

    .line 1897
    const-string v8, "PhoneGlobals"

    const-string v9, "IPO Reboot: call cancelMissedCallNotification()"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1903
    :cond_b
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_1

    .line 1905
    :cond_c
    sget-object v8, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1906
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sim_lock_state_setting"

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_1

    .line 1908
    :cond_d
    const-string v8, "android.intent.action.RADIO_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1909
    const-string v8, "slotId"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1910
    .local v6, "slot":I
    const-string v8, "PhoneGlobals"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_RADIO_OFF slot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-direct {p0, v6}, Lcom/android/phone/PhoneGlobals;->clearSimSettingFlag(I)V

    goto/16 :goto_1

    .line 1912
    .end local v6    # "slot":I
    :cond_e
    const-string v8, "com.mtk.ACTION_MODEM_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1913
    const-string v8, "md_minilog_util"

    invoke-static {v8}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private onReceiveSimStateChagne(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1992
    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1993
    .local v2, "unlockSlotId":I
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1995
    .local v1, "unlockSIMStatus":Ljava/lang/String;
    const-string v3, "PhoneGlobals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveSimStateChagne, slot+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    const-string v3, "READY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1999
    const/16 v0, 0x7d0

    .line 2000
    .local v0, "delaySendMessage":I
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    const-string v6, "READY"

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2005
    .end local v0    # "delaySendMessage":I
    :goto_0
    return-void

    .line 2003
    :cond_0
    const-string v3, "PhoneGlobals"

    const-string v4, "onReceiveSimStateChagne, SIM not ready"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerPhone()V
    .locals 2

    .prologue
    .line 1720
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1721
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 1723
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V

    .line 1727
    :goto_0
    return-void

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0
.end method

.method private requestWakeStateFull()V
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1678
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1687
    :cond_1
    :goto_0
    return-void

    .line 1682
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1683
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private setDefaultDataGemini(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2516
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2517
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 2519
    .local v1, "isDataEnabled":Z
    :goto_0
    const-string v4, "simid"

    if-nez v1, :cond_1

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    int-to-long v2, v2

    :goto_1
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2522
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2523
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 2524
    return-void

    .line 2517
    .end local v1    # "isDataEnabled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2519
    .restart local v1    # "isDataEnabled":Z
    :cond_1
    invoke-static {p0, p1}, Lmiui/telephony/SimInfoManager;->getSimIdBySlotId(Landroid/content/Context;I)J

    move-result-wide v2

    goto :goto_1
.end method

.method private updateSimLockState()V
    .locals 9

    .prologue
    .line 1733
    const-string v2, "vold.decrypt"

    .line 1734
    .local v2, "VOLD_DECRYPT":Ljava/lang/String;
    const-string v0, "gsm.phone.created"

    .line 1735
    .local v0, "GSM_PHONE_CREATED":Ljava/lang/String;
    const-string v1, "trigger_restart_framework"

    .line 1737
    .local v1, "TRIGGER_RESTART_FW":Ljava/lang/String;
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1738
    .local v4, "state":Ljava/lang/String;
    const-string v5, "gsm.phone.created"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1740
    .local v3, "gsmPhoneCreated":Z
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSimLockState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    if-nez v3, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "trigger_restart_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1743
    :cond_0
    const-string v5, "PhoneGlobals"

    const-string v6, "updateSimLockState System Property: gsm.phone.created = true"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const-string v5, "gsm.phone.created"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sim_lock_state_setting"

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1748
    :cond_1
    return-void
.end method

.method private updateTTYEnabled()V
    .locals 2

    .prologue
    .line 2117
    const-string v0, "TTY"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    .line 2122
    :goto_0
    return-void

    .line 2120
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method authenticateAgainstCachedSimPin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCachedSimPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCachedSimPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearOtaState()V
    .locals 2

    .prologue
    .line 1522
    const-string v0, "PhoneGlobals"

    const-string v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1525
    const-string v0, "PhoneGlobals"

    const-string v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    return-void
.end method

.method public createPhoneEndIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2187
    const/4 v0, 0x0

    .line 2194
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    .line 1531
    const-string v0, "PhoneGlobals"

    const-string v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1534
    const-string v0, "PhoneGlobals"

    const-string v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_0
    return-void
.end method

.method getAudioRouter()Lcom/android/phone/AudioRouter;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->audioRouter:Lcom/android/phone/AudioRouter;

    return-object v0
.end method

.method getBluetoothManager()Lcom/android/phone/BluetoothManager;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    return-object v0
.end method

.method getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object v0
.end method

.method public getCallManager()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2150
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 2153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    goto :goto_0
.end method

.method public getCallModeler()Lcom/android/phone/CallModeler;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->callModeler:Lcom/android/phone/CallModeler;

    return-object v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 2471
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0
.end method

.method public getEmergencyVoiceSubscription()I
    .locals 5

    .prologue
    .line 2489
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2490
    .local v1, "simCount":I
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 2491
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v2

    .line 2500
    :cond_0
    :goto_0
    return v2

    .line 2493
    :cond_1
    const/4 v2, 0x0

    .line 2494
    .local v2, "slotId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 2495
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 2496
    move v2, v0

    .line 2497
    goto :goto_0

    .line 2494
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPUKEntryProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method public getVoiceSubscription()I
    .locals 1

    .prologue
    .line 2478
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSlotId()I

    move-result v0

    return v0
.end method

.method public getVoiceSubscriptionInService()I
    .locals 1

    .prologue
    .line 2485
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0
.end method

.method getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    return-object v0
.end method

.method public handleHeadsetHookKey()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2289
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    .line 2290
    const-string v5, "PhoneGlobals"

    const-string v6, "CallManager is idle, just ignore HEADSETHOOK key."

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const/4 v5, 0x0

    .line 2400
    :cond_0
    :goto_0
    return v5

    .line 2295
    :cond_1
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    .line 2296
    .local v3, "hasRingingCall":Z
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 2297
    .local v1, "hasActiveCall":Z
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 2300
    .local v2, "hasHoldingCall":Z
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2301
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2302
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->handleHeadsetHookKeyForDualtalk()Z

    move-result v5

    goto :goto_0

    .line 2308
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPhoneTypeMTK()I

    move-result v4

    .line 2311
    .local v4, "phoneType":I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    .line 2315
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 2317
    .local v0, "currCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    if-eqz v3, :cond_3

    .line 2320
    const-string v6, "PhoneGlobals"

    const-string v7, "answerCall: First Incoming and Call Waiting scenario"

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalAnswerCall()V

    goto :goto_0

    .line 2324
    :cond_3
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_4

    if-eqz v1, :cond_4

    .line 2328
    const-string v6, "PhoneGlobals"

    const-string v7, "answerCall: Merge 3-way call scenario"

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 2332
    :cond_4
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_5

    .line 2336
    const-string v6, "PhoneGlobals"

    const-string v7, "answerCall: Switch btwn 2 calls scenario"

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalSwapCalls()V

    goto :goto_0

    .line 2340
    :cond_5
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_0

    if-eqz v1, :cond_0

    .line 2343
    const-string v6, "PhoneGlobals"

    const-string v7, "handleCallKey: hold/unhold cdma case."

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalSwapCalls()V

    goto :goto_0

    .line 2348
    .end local v0    # "currCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_6
    if-eq v4, v5, :cond_7

    const/4 v6, 0x3

    if-ne v4, v6, :cond_b

    .line 2350
    :cond_7
    if-eqz v3, :cond_8

    .line 2361
    const-string v6, "PhoneGlobals"

    const-string v7, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    invoke-static {}, Lcom/android/phone/PhoneUtils;->internalAnswerCall()V

    goto/16 :goto_0

    .line 2368
    :cond_8
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 2370
    const-string v6, "PhoneGlobals"

    const-string v7, "handleCallKey: both lines in use "

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->callCommandService:Lcom/android/phone/CallCommandService;

    invoke-virtual {v6}, Lcom/android/phone/CallCommandService;->swap()V

    goto/16 :goto_0

    .line 2372
    :cond_9
    if-eqz v2, :cond_a

    .line 2375
    const-string v6, "PhoneGlobals"

    const-string v7, "handleCallKey: call on hold ==> unhold."

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2385
    :cond_a
    const-string v6, "PhoneGlobals"

    const-string v7, "handleCallKey: call in foregound ==> ignoring."

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->checkCallKeyForVT(I)V

    goto/16 :goto_0

    .line 2395
    :cond_b
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method handleOtaspDisconnect()V
    .locals 2

    .prologue
    .line 944
    const-string v0, "PhoneGlobals"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_0

    .line 949
    const-string v0, "PhoneGlobals"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_0
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 926
    const-string v0, "PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaspEvent(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_0

    .line 931
    const-string v0, "PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public isBTConnected()Z
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    return v0
.end method

.method public isEnableTTY()Z
    .locals 1

    .prologue
    .line 2125
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    return v0
.end method

.method public isIccCardActivated(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 2463
    invoke-static {p0, p1}, Lmiui/telephony/SimInfoManager;->getSimInfoBySlotId(Landroid/content/Context;I)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 2464
    .local v0, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mIsActivte:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtaCallInActiveState()Z
    .locals 4

    .prologue
    .line 1509
    const/4 v0, 0x0

    .line 1510
    .local v0, "otaCallActive":Z
    const-string v1, "PhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInActiveState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    return v0
.end method

.method public isOtaCallInEndState()Z
    .locals 4

    .prologue
    .line 1515
    const/4 v0, 0x0

    .line 1516
    .local v0, "otaCallEnded":Z
    const-string v1, "PhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInEndState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    return v0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsSimPinEnabled:Z

    return v0
.end method

.method public onCreate()V
    .locals 17

    .prologue
    .line 491
    const-string v1, "PhoneGlobals"

    const-string v2, "onCreate()..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->updateSimLockState()V

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 501
    .local v16, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_4

    .line 510
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 511
    const-string v1, "PhoneGlobals"

    const-string v2, "onCreate(), make default phone complete"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 516
    new-instance v12, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/TelephonyDebugService;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->registerPhone()V

    .line 528
    invoke-static/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    .line 534
    .local v15, "phoneType":I
    const/4 v1, 0x2

    if-ne v15, v1, :cond_0

    .line 536
    new-instance v1, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v1}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 540
    :cond_0
    const-string v1, "PhoneGlobals"

    const-string v2, "onCreate(), start to get BT default adapter"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 544
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/BluetoothPhoneService;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 545
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/BluetoothPhoneService;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 553
    :goto_0
    const-string v1, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x2000001a

    const-string v3, "PhoneGlobals"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x3000001a

    const-string v3, "PhoneGlobals"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x2000001a

    const-string v3, "PhoneGlobals"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mWakeLockForDisconnect:Landroid/os/PowerManager$WakeLock;

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x20000001

    const-string v3, "PhoneGlobals"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 570
    const-string v1, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 574
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 579
    new-instance v1, Landroid/os/UpdateLock;

    const-string v2, "phone"

    invoke-direct {v1, v2}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    .line 581
    const-string v1, "PhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: mUpdateLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v10, Lcom/android/phone/CallLogger;

    new-instance v1, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v1}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Lcom/android/phone/CallLogger;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/common/CallLogAsync;)V

    .line 587
    .local v10, "callLogger":Lcom/android/phone/CallLogger;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/phone/PhoneGlobals;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 590
    new-instance v1, Lcom/android/phone/CallGatewayManager;

    invoke-direct {v1}, Lcom/android/phone/CallGatewayManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->callGatewayManager:Lcom/android/phone/CallGatewayManager;

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->callGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v0, p0

    invoke-static {v0, v10, v1}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)Lcom/android/phone/CallController;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    .line 601
    invoke-static/range {p0 .. p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 612
    new-instance v1, Lcom/android/phone/CallStateMonitor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1, v2}, Lcom/android/phone/CallStateMonitor;-><init>(Lcom/android/internal/telephony/CallManager;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->callStateMonitor:Lcom/android/phone/CallStateMonitor;

    .line 615
    new-instance v1, Lcom/android/phone/CallModeler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->callStateMonitor:Lcom/android/phone/CallStateMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->callGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/CallModeler;-><init>(Lcom/android/phone/CallStateMonitor;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallGatewayManager;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->callModeler:Lcom/android/phone/CallModeler;

    .line 618
    new-instance v1, Lcom/android/phone/DTMFTonePlayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->callModeler:Lcom/android/phone/CallModeler;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/DTMFTonePlayer;-><init>(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->dtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    .line 621
    new-instance v1, Lcom/android/phone/WiredHeadsetManager;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/phone/WiredHeadsetManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    .line 622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/phone/WiredHeadsetManager;->addWiredHeadsetListener(Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;)V

    .line 625
    new-instance v1, Lcom/android/phone/BluetoothManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->callModeler:Lcom/android/phone/CallModeler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/phone/BluetoothManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)Lcom/android/phone/Ringer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    .line 630
    new-instance v1, Lcom/android/phone/AudioRouter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/phone/AudioRouter;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;Lcom/android/phone/WiredHeadsetManager;Lcom/android/internal/telephony/CallManager;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->audioRouter:Lcom/android/phone/AudioRouter;

    .line 634
    new-instance v1, Lcom/android/phone/CallRecordingServiceProxy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->callModeler:Lcom/android/phone/CallModeler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/phone/CallRecordingServiceProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;Lcom/android/phone/NotificationMgr;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    .line 640
    new-instance v1, Lcom/android/phone/CallCommandService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->callModeler:Lcom/android/phone/CallModeler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneGlobals;->dtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneGlobals;->audioRouter:Lcom/android/phone/AudioRouter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/PhoneGlobals;->mCallRecordingServiceProxy:Lcom/android/phone/CallRecordingServiceProxy;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/phone/CallCommandService;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;Lcom/android/phone/DTMFTonePlayer;Lcom/android/phone/AudioRouter;Lcom/android/phone/CallRecordingServiceProxy;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->callCommandService:Lcom/android/phone/CallCommandService;

    .line 644
    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->callModeler:Lcom/android/phone/CallModeler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->callCommandService:Lcom/android/phone/CallCommandService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->audioRouter:Lcom/android/phone/AudioRouter;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy;-><init>(Landroid/content/Context;Lcom/android/phone/CallModeler;Lcom/android/phone/CallCommandService;Lcom/android/phone/AudioRouter;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->callHandlerServiceProxy:Lcom/android/phone/CallHandlerServiceProxy;

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->callHandlerServiceProxy:Lcom/android/phone/CallHandlerServiceProxy;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/CallHandlerServiceProxy;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 652
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getLteDcPhone()Lcom/android/internal/telephony/gsm/LteDcPhone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->setLteDcPhone(Lcom/android/internal/telephony/gsm/LteDcPhone;)V

    .line 660
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneGlobals;->callStateMonitor:Lcom/android/phone/CallStateMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/PhoneGlobals;->callModeler:Lcom/android/phone/CallModeler;

    move-object/from16 v1, p0

    move-object v4, v10

    invoke-static/range {v1 .. v7}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;Lcom/android/phone/CallModeler;)Lcom/android/phone/CallNotifier;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 677
    const/4 v1, 0x1

    if-ne v15, v1, :cond_2

    .line 678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/phone/PhoneGlobals;->MMI_COMPLETE_GEMINI:[I

    invoke-static {v1, v2}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForMmiComplete(Landroid/os/Handler;[I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/phone/PhoneGlobals;->MMI_INITIATE_GEMINI:[I

    invoke-static {v1, v2}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForMmiInitiate(Landroid/os/Handler;[I)V

    .line 688
    :cond_2
    const-string v1, "PhoneGlobals"

    const-string v2, "onCreate(), initialize connection handler"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->updateTTYEnabled()V

    .line 699
    new-instance v13, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v13, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 701
    .local v13, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v1, :cond_3

    .line 708
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    :cond_3
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/PhoneGlobals;->addActionForGlobalReceiver(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 719
    new-instance v14, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v14, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 726
    .local v14, "mediaButtonIntentFilter":Landroid/content/IntentFilter;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 728
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 730
    const-string v1, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 731
    .local v8, "am":Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 735
    const v1, 0x7f050025

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 737
    const v1, 0x7f050005

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 745
    .end local v8    # "am":Landroid/media/AudioManager;
    .end local v10    # "callLogger":Lcom/android/phone/CallLogger;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    .end local v14    # "mediaButtonIntentFilter":Landroid/content/IntentFilter;
    .end local v15    # "phoneType":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 746
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 747
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 748
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 749
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 753
    :cond_5
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 756
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 765
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v1, :cond_6

    .line 766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    .line 770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 773
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_aid"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 777
    .local v11, "hac":I
    const-string v1, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 778
    .local v9, "audioManager":Landroid/media/AudioManager;
    const-string v2, "HACSetting"

    if-eqz v11, :cond_9

    const-string v1, "ON"

    :goto_1
    invoke-virtual {v9, v2, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .end local v9    # "audioManager":Landroid/media/AudioManager;
    .end local v11    # "hac":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->initForMtkFeatures()V

    .line 786
    invoke-static/range {p0 .. p0}, Lcom/android/phone/PhoneUtils;->initRepeatedCalls(Landroid/content/Context;)V

    .line 787
    invoke-static/range {p0 .. p0}, Lcom/android/phone/PhoneUtils;->initRepeatedBlockedCalls(Landroid/content/Context;)V

    .line 788
    const-string v1, "PhoneGlobals"

    const-string v2, "onCreate() end"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v1, Lcom/android/phone/MiuiNotificationMgr;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/phone/MiuiNotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mMiuiNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;

    .line 792
    return-void

    .line 549
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v15    # "phoneType":I
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    goto/16 :goto_0

    .line 778
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "phoneType":I
    .restart local v9    # "audioManager":Landroid/media/AudioManager;
    .restart local v11    # "hac":I
    :cond_9
    const-string v1, "OFF"

    goto :goto_1
.end method

.method public onWiredHeadsetConnection(Z)V
    .locals 5
    .param p1, "pluggedIn"    # Z

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1259
    .local v0, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-boolean v1, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1262
    :cond_0
    return-void
.end method

.method pokeUserActivity()V
    .locals 4

    .prologue
    .line 1117
    const-string v0, "PhoneGlobals"

    const-string v1, "pokeUserActivity()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1119
    return-void
.end method

.method public requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V
    .locals 3
    .param p1, "ws"    # Lcom/android/phone/PhoneGlobals$WakeState;

    .prologue
    .line 1003
    const-string v0, "PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWakeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    monitor-enter p0

    .line 1005
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    if-eq v0, p1, :cond_3

    .line 1006
    sget-object v0, Lcom/android/phone/PhoneGlobals$3;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1032
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1045
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    .line 1047
    :cond_3
    monitor-exit p0

    .line 1048
    return-void

    .line 1010
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1011
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1012
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1015
    :cond_4
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLockForSecondRingCall:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1026
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->requestWakeStateFull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1006
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setCachedSimPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mCachedSimPin:Ljava/lang/String;

    .line 917
    return-void
.end method

.method public setDefaultDataSlotId(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 2505
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 2507
    .local v0, "defaultDataSlotId":I
    if-eq v0, p1, :cond_0

    .line 2508
    const-string v1, "PhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make defualt data slot id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->setDefaultDataGemini(I)V

    .line 2510
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManagerEx;->setDefaultDataSlotIdInternal(I)V

    .line 2512
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    .line 970
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 987
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 345
    const-string v0, "PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRestoreMuteOnInCallResume, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 347
    return-void
.end method

.method protected startInCallActivity(Z)V
    .locals 4
    .param p1, "isShowDialPad"    # Z

    .prologue
    .line 2527
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2528
    .local v1, "inCallIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const/high16 v2, 0x7f0b0000

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0003

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    .local v0, "cn":Landroid/content/ComponentName;
    const/high16 v2, 0x10840000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2534
    const-string v2, "InCallActivity.show_dialpad"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2535
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2536
    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 2537
    return-void
.end method

.method public touchAnswerVTCall()V
    .locals 3

    .prologue
    .line 2228
    const-string v0, "PhoneGlobals"

    const-string v1, "touchAnswerVTCall()"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2231
    const-string v0, "PhoneGlobals"

    const-string v1, "touchAnswerVTCall: no Ringing VT call, just return"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :goto_0
    return-void

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateCdmaPhoneCallState()I
    .locals 4

    .prologue
    .line 2427
    const/4 v0, -0x1

    .line 2428
    .local v0, "currentCallState":I
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 2429
    .local v1, "newState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v2, Lcom/android/phone/PhoneGlobals$3;->$SwitchMap$com$android$phone$CdmaPhoneCallState$PhoneCallState:[I

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2445
    :goto_0
    return v0

    .line 2431
    :pswitch_0
    const/4 v0, 0x0

    .line 2432
    goto :goto_0

    .line 2434
    :pswitch_1
    const/4 v0, 0x1

    .line 2435
    goto :goto_0

    .line 2437
    :pswitch_2
    const/4 v0, 0x2

    .line 2438
    goto :goto_0

    .line 2440
    :pswitch_3
    const/4 v0, 0x3

    .line 2441
    goto :goto_0

    .line 2429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_1

    .line 1130
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1132
    const-string v0, "PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneState: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_0

    .line 1134
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    .line 1142
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    .line 1156
    :cond_1
    :goto_0
    return-void

    .line 1151
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    goto :goto_0
.end method

.method public updatePowerForSmartBook(Z)V
    .locals 3
    .param p1, "onOff"    # Z

    .prologue
    .line 2453
    const-string v0, "PhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    if-eqz p1, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->sbWakeUp(J)V

    .line 2459
    :goto_0
    return-void

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->sbGoToSleep(J)V

    goto :goto_0
.end method

.method updateWakeState()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1075
    iget-object v7, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 1085
    .local v4, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v7, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 1102
    .local v2, "isSpeakerInUse":Z
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v7, :cond_2

    move v1, v5

    .line 1103
    .local v1, "isRinging":Z
    :goto_1
    iget-object v7, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7}, Lcom/mediatek/phone/gemini/GeminiUtils;->isDialing(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 1104
    .local v0, "isDialing":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v3, v5

    .line 1106
    .local v3, "keepScreenOn":Z
    :goto_2
    if-eqz v3, :cond_4

    sget-object v5, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1107
    return-void

    .end local v0    # "isDialing":Z
    .end local v1    # "isRinging":Z
    .end local v2    # "isSpeakerInUse":Z
    .end local v3    # "keepScreenOn":Z
    :cond_1
    move v2, v6

    .line 1085
    goto :goto_0

    .restart local v2    # "isSpeakerInUse":Z
    :cond_2
    move v1, v6

    .line 1102
    goto :goto_1

    .restart local v0    # "isDialing":Z
    .restart local v1    # "isRinging":Z
    :cond_3
    move v3, v6

    .line 1104
    goto :goto_2

    .line 1106
    .restart local v3    # "keepScreenOn":Z
    :cond_4
    sget-object v5, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    goto :goto_3
.end method

.method wakeUpScreen()V
    .locals 3

    .prologue
    .line 1055
    monitor-enter p0

    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    if-ne v0, v1, :cond_0

    .line 1057
    const-string v0, "PhoneGlobals"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1060
    :cond_0
    monitor-exit p0

    .line 1061
    return-void

    .line 1060
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

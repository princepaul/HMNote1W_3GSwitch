.class public Lcom/android/phone/BluetoothPhoneService;
.super Landroid/app/Service;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothPhoneService$4;,
        Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;,
        Lcom/android/phone/BluetoothPhoneService$CallNumber;,
        Lcom/android/phone/BluetoothPhoneService$CallInfo;
    }
.end annotation


# static fields
.field static final CALL_STATE_ACTIVE:I = 0x0

.field static final CALL_STATE_ALERTING:I = 0x3

.field static final CALL_STATE_DIALING:I = 0x2

.field static final CALL_STATE_HELD:I = 0x1

.field static final CALL_STATE_IDLE:I = 0x6

.field static final CALL_STATE_INCOMING:I = 0x4

.field static final CALL_STATE_WAITING:I = 0x5

.field private static final CDMA_MAX_CONNECTIONS:I = 0x2

.field private static final CDMA_SET_SECOND_CALL_STATE:I = 0x6

.field private static final CDMA_SWAP_SECOND_CALL_STATE:I = 0x5

.field private static final CDMA_SWAP_SECOND_CALL_STATE_BT:I = 0x8

.field static final CHLD_TYPE_ADDHELDTOCONF:I = 0x3

.field static final CHLD_TYPE_HOLDACTIVE_ACCEPTHELD:I = 0x2

.field static final CHLD_TYPE_RELEASEACTIVE_ACCEPTHELD:I = 0x1

.field static final CHLD_TYPE_RELEASEHELD:I = 0x0

.field private static final DBG:Z

.field private static final GEMINI_SIM_NUM:Ljava/lang/String; = "persist.gemini.sim_num"

.field private static final GSM_MAX_CONNECTIONS:I = 0x6

.field private static final LIST_CURRENT_CALLS:I = 0x3

.field private static final MESSAGE_DELAY_MO_CALL_END:I = 0x11

.field private static final MODIFY_PHONE_STATE:Ljava/lang/String; = "android.permission.MODIFY_PHONE_STATE"

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x2

.field private static final PHONE_INCOMING_RING:I = 0x9

.field private static final PHONE_ON_DISCONNECT:I = 0x7

.field private static final PHONE_VT_RING_INFO:I = 0xd

.field private static final PRECISE_CALL_STATE_CHANGED:I = 0x1

.field private static final QUERY_PHONE_STATE:I = 0x4

.field private static final RESTRICT_MULTITLAKS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BluetoothPhoneService"

.field private static final USER_BUSY_TONE_TIME:I = 0xbb8

.field private static final VDBG:Z = true

.field private static final iTel:Lcom/mediatek/common/telephony/ITelephonyEx;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBgndEarliestConnectionTime:J

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Call;",
            "Lcom/android/internal/telephony/Call$State;",
            ">;"
        }
    .end annotation
.end field

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field mDialingAdded:Z

.field private mForegroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mHandler:Landroid/os/Handler;

.field private mHashCdmaHoldTime:Ljava/util/HashMap;

.field private mIsLimitDTCall:Z

.field mNumActive:I

.field mNumHeld:I

.field mOldNumActive:I

.field mOldNumHeld:I

.field private mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field private mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPlayBusyTone:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

.field private mRingingCallState:Lcom/android/internal/telephony/Call$State;

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    .line 92
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothPhoneService;->iTel:Lcom/mediatek/common/telephony/ITelephonyEx;

    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 102
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 103
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    .line 126
    iput-boolean v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 136
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mIsLimitDTCall:Z

    .line 138
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 139
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    .line 140
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    .line 149
    iput-boolean v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPlayBusyTone:Z

    .line 260
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$1;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    .line 1698
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$2;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2980
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$3;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p1, "x1"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handlePhoneDisconnect(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleDelayMOCallEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->startUserBusyTone()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothPhoneService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handleNormalChld(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothPhoneService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->getDefaultSIMInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p1, "x1"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallStateBT()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothPhoneService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private canSwapInDiffSim()Z
    .locals 8

    .prologue
    .line 417
    const-string v6, "[canSwapInDiffSim]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "bCanSwapInDiffSim":Z
    const/4 v5, 0x0

    .line 422
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService;->dumpCurrentCallStatus()V

    .line 425
    const/4 v4, 0x0

    .line 426
    .local v4, "listCall":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getForegroundCalls "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 428
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 429
    .local v2, "c":Lcom/android/internal/telephony/Call;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getForegroundCalls Call.State.ACTIVE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " c.getState()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 430
    const-string v6, "canSwapInDiffSim"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 431
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 432
    if-nez v5, :cond_1

    .line 433
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 434
    const-string v6, "canSwapInDiffSim: TalkState IDLE --> SINGLE"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 435
    const-string v6, "getCurrentTalkState 1st call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 437
    const-string v6, "canSwapInDiffSim: TalkState SINGLE --> MULTI"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 438
    const-string v6, "canSwapInDiffSim 2nd call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 439
    const/4 v0, 0x1

    .line 445
    .end local v2    # "c":Lcom/android/internal/telephony/Call;
    :cond_2
    if-eqz v0, :cond_3

    .line 446
    const-string v6, "canSwapInDiffSim: return directly"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 447
    const-string v6, "[[canSwapInDiffSim]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 471
    .end local v0    # "bCanSwapInDiffSim":Z
    .local v1, "bCanSwapInDiffSim":Z
    :goto_1
    return v1

    .line 451
    .end local v1    # "bCanSwapInDiffSim":Z
    .restart local v0    # "bCanSwapInDiffSim":Z
    :cond_3
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v4

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getBackgroundCalls "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 453
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 454
    .restart local v2    # "c":Lcom/android/internal/telephony/Call;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getBackgroundCalls Call.State.ACTIVE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "c.getState()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 455
    const-string v6, "canSwapInDiffSim"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 456
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 457
    if-nez v5, :cond_5

    .line 458
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 459
    const-string v6, "canSwapInDiffSim: TalkState IDLE --> SINGLE"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 460
    const-string v6, "getCurrentTalkState 1st call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 461
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 462
    const-string v6, "canSwapInDiffSim: TalkState SINGLE --> MULTI"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 463
    const-string v6, "canSwapInDiffSim 2nd call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 464
    const/4 v0, 0x1

    .line 469
    .end local v2    # "c":Lcom/android/internal/telephony/Call;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: bCanSwapInDiffSim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 470
    const-string v6, "[[canSwapInDiffSim]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 471
    .end local v0    # "bCanSwapInDiffSim":Z
    .restart local v1    # "bCanSwapInDiffSim":Z
    goto/16 :goto_1
.end method

.method private checkUnreasonableStates()Z
    .locals 8

    .prologue
    .line 807
    const-string v6, "[checkUnreasonableStates]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 809
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 811
    .local v3, "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v0, 0x0

    .line 814
    .local v0, "active_call":Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 815
    .local v1, "c1":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    .line 816
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 817
    .local v2, "c2":Lcom/android/internal/telephony/Call;
    if-eq v2, v1, :cond_2

    .line 818
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_2

    .line 819
    :cond_3
    const-string v6, "checkUnreasonableStates : two forground calls exist at the same time"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 820
    const/4 v6, 0x1

    .line 829
    .end local v1    # "c1":Lcom/android/internal/telephony/Call;
    .end local v2    # "c2":Lcom/android/internal/telephony/Call;
    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_0
    return v6

    .line 828
    :cond_4
    const-string v6, "[[checkUnreasonableStates]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 829
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private chooseTheEarlierHoldCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;
    .locals 6
    .param p1, "c1"    # Lcom/android/internal/telephony/Call;
    .param p2, "c2"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v5, 0x2

    .line 398
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    .line 399
    .local v0, "c1Time":J
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 401
    .local v2, "c2Time":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 402
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 405
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 406
    invoke-direct {p0, p2}, Lcom/android/phone/BluetoothPhoneService;->getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 409
    :cond_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .end local p2    # "c2":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object p2

    .restart local p2    # "c2":Lcom/android/internal/telephony/Call;
    :cond_2
    move-object p2, p1

    goto :goto_0
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 4
    .param p0, "callState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 3126
    const/4 v0, 0x6

    .line 3128
    .local v0, "retval":I
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3153
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    const/4 v0, 0x6

    .line 3159
    :goto_0
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call state Converted2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    return v0

    .line 3132
    :pswitch_0
    const/4 v0, 0x6

    .line 3133
    goto :goto_0

    .line 3135
    :pswitch_1
    const/4 v0, 0x0

    .line 3136
    goto :goto_0

    .line 3138
    :pswitch_2
    const/4 v0, 0x1

    .line 3139
    goto :goto_0

    .line 3141
    :pswitch_3
    const/4 v0, 0x2

    .line 3142
    goto :goto_0

    .line 3144
    :pswitch_4
    const/4 v0, 0x3

    .line 3145
    goto :goto_0

    .line 3147
    :pswitch_5
    const/4 v0, 0x4

    .line 3148
    goto :goto_0

    .line 3150
    :pswitch_6
    const/4 v0, 0x5

    .line 3151
    goto :goto_0

    .line 3128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I
    .locals 4
    .param p0, "ringingState"    # Lcom/android/internal/telephony/Call$State;
    .param p1, "foregroundState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 3106
    const/4 v0, 0x6

    .line 3108
    .local v0, "retval":I
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v1, :cond_1

    .line 3110
    :cond_0
    const/4 v0, 0x4

    .line 3119
    :goto_0
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call state Converted2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    return v0

    .line 3111
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v1, :cond_2

    .line 3112
    const/4 v0, 0x2

    goto :goto_0

    .line 3113
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v1, :cond_3

    .line 3114
    const/4 v0, 0x3

    goto :goto_0

    .line 3116
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private evdoAnalyzeDTScenario()Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    .locals 10

    .prologue
    .line 2196
    const-string v9, "evdoAnalyzeDTScenario"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2198
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2199
    .local v7, "ringingCall":Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2200
    .local v0, "backgroundCall":Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2202
    .local v3, "fCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v6, 0x0

    .line 2203
    .local v6, "gsmI":Z
    const/4 v4, 0x0

    .line 2204
    .local v4, "gsmA":Z
    const/4 v5, 0x0

    .line 2205
    .local v5, "gsmH":Z
    const/4 v2, 0x0

    .line 2206
    .local v2, "cdmaI":Z
    const/4 v1, 0x0

    .line 2210
    .local v1, "cdmaA":Z
    sget-object v8, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .line 2214
    .local v8, "scenario":Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    const-string v9, "[Err] evdoAnalyzeDTScenario EVDO dualTalk not support"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2215
    return-object v8
.end method

.method private evdoDTChldHandler0(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 11
    .param p1, "scenario"    # Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2361
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evdoDTChldHandler0 : scenario = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2365
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2366
    .local v6, "ringingCall":Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2367
    .local v1, "backgroundCall":Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2369
    .local v3, "fCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 2452
    const-string v7, "CHLD 0 : wrong scenario"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2453
    :goto_0
    return v7

    .line 2382
    :pswitch_0
    const-string v9, "CHLD 0 : hangup incoming call 1"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2384
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2385
    :catch_0
    move-exception v2

    .line 2386
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2387
    goto :goto_0

    .line 2398
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :pswitch_1
    const-string v9, "CHLD 0 : hangup incoming call 2"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2401
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2402
    :catch_1
    move-exception v2

    .line 2403
    .restart local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2404
    goto :goto_0

    .line 2412
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :pswitch_2
    const-string v7, "CHLD 0 : N/A"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2413
    goto :goto_0

    .line 2418
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2419
    .local v0, "aCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_0

    .line 2420
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2421
    .local v5, "phoneType":I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_0

    .line 2422
    const-string v9, "CHLD 0 : hangup CDMA Active Call (hold call or mute indeed)"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2424
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2425
    :catch_2
    move-exception v2

    .line 2426
    .restart local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2427
    goto :goto_0

    .line 2433
    .end local v0    # "aCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v5    # "phoneType":I
    :cond_1
    const-string v7, "CHLD 0 : N/A"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2434
    goto :goto_0

    .line 2441
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_4
    const-string v9, "CHLD 0 : hangup GSM Hold Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2443
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 2444
    :catch_3
    move-exception v2

    .line 2445
    .restart local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2446
    goto :goto_0

    .line 2369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private evdoDTChldHandler1(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 13
    .param p1, "scenario"    # Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .prologue
    const/4 v12, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2459
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "evdoDTChldHandler1 : scenario = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2463
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2464
    .local v7, "ringingCall":Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2465
    .local v1, "backgroundCall":Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2467
    .local v3, "fCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 2619
    const-string v8, "CHLD 1 : wrong scenario"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2620
    :cond_0
    :goto_0
    return v8

    .line 2474
    :pswitch_0
    const-string v9, "CHLD 1 : answer incoming call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2475
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2477
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v9, :cond_0

    .line 2478
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2479
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2488
    .end local v5    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2489
    .local v0, "aCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_1

    .line 2490
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2491
    .local v6, "phoneType":I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_1

    .line 2492
    const-string v9, "CHLD 1 : hangup CDMA Active Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2494
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 2499
    .end local v0    # "aCall":Lcom/android/internal/telephony/Call;
    .end local v6    # "phoneType":I
    :cond_2
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2500
    goto :goto_0

    .line 2508
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_2
    const-string v9, "CHLD 1 : answer ringing call and end active call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2509
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9, v7}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 2515
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2516
    .restart local v0    # "aCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_3

    .line 2517
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2518
    .restart local v6    # "phoneType":I
    if-ne v6, v8, :cond_3

    .line 2519
    const-string v10, "CHLD 1 : hangup GSM Active Call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2521
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2522
    :catch_0
    move-exception v2

    .line 2523
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2524
    goto/16 :goto_0

    .line 2530
    .end local v0    # "aCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v6    # "phoneType":I
    :cond_4
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2531
    goto/16 :goto_0

    .line 2539
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2548
    :pswitch_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2549
    .restart local v0    # "aCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_5

    .line 2550
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2551
    .restart local v6    # "phoneType":I
    if-ne v6, v8, :cond_5

    .line 2552
    const-string v10, "CHLD 1 : hangup GSM Active Call and answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2555
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2562
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IA_H:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v9, :cond_6

    .line 2563
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2565
    :cond_6
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_IH:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v9, :cond_0

    .line 2566
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2567
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2556
    .end local v5    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 2557
    .restart local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2558
    goto/16 :goto_0

    .line 2573
    .end local v0    # "aCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v6    # "phoneType":I
    :cond_7
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2574
    goto/16 :goto_0

    .line 2580
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2581
    .restart local v0    # "aCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_8

    .line 2582
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2583
    .restart local v6    # "phoneType":I
    if-ne v6, v8, :cond_8

    .line 2584
    const-string v9, "CHLD 1 : hangup GSM Active Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2585
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 2590
    .end local v0    # "aCall":Lcom/android/internal/telephony/Call;
    .end local v6    # "phoneType":I
    :cond_9
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2591
    goto/16 :goto_0

    .line 2595
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_7
    const-string v9, "CHLD 1 : switch GSM Hold call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2596
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2602
    :pswitch_8
    const-string v10, "CHLD 1 : end GSM Hold call and answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2605
    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2611
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2612
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2613
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2606
    .end local v5    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 2607
    .restart local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2608
    goto/16 :goto_0

    .line 2467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private evdoDTChldHandler2(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 14
    .param p1, "scenario"    # Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .prologue
    const/4 v13, 0x6

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2626
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "evdoDTChldHandler2 : scenario ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2630
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 2631
    .local v8, "ringingCall":Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2632
    .local v1, "backgroundCall":Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2633
    .local v4, "foregroundCall":Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2635
    .local v3, "fCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 2789
    const-string v9, "CHLD 1 : wrong scenario"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2790
    :cond_0
    :goto_0
    return v9

    .line 2645
    :pswitch_0
    const-string v10, "CHLD 2 : answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2646
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2648
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v10, :cond_1

    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_H_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v10, :cond_0

    .line 2649
    :cond_1
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2650
    .local v6, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2658
    .end local v6    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_2

    .line 2659
    const-string v10, "CHLD 2 : swap CDMA AH for it is in CONF_CALL state"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2663
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x8

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 2666
    .restart local v6    # "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2670
    .end local v6    # "msg":Landroid/os/Message;
    :cond_2
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2671
    goto :goto_0

    .line 2676
    :pswitch_2
    const-string v11, "CHLD 2 : switch GSM Active call to Hold"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2678
    :try_start_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2679
    :catch_0
    move-exception v2

    .line 2680
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2681
    goto :goto_0

    .line 2689
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2690
    .local v0, "aCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_3

    .line 2691
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2692
    .local v7, "phoneType":I
    if-ne v7, v9, :cond_3

    .line 2693
    const-string v11, "CHLD 2 : switch GSM Active call to Hold and answer incoming call"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2695
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2700
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2701
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_IH:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v10, :cond_0

    .line 2702
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2703
    .restart local v6    # "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2696
    .end local v6    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 2697
    .restart local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2698
    goto/16 :goto_0

    .line 2709
    .end local v0    # "aCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v7    # "phoneType":I
    :cond_4
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2710
    goto/16 :goto_0

    .line 2715
    .end local v5    # "i$":Ljava/util/Iterator;
    :pswitch_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2716
    .restart local v0    # "aCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_5

    .line 2717
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2718
    .restart local v7    # "phoneType":I
    if-ne v7, v9, :cond_5

    .line 2719
    const-string v11, "CHLD 2 : switch GSM Active call to Hold"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2721
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2722
    :catch_2
    move-exception v2

    .line 2723
    .restart local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2724
    goto/16 :goto_0

    .line 2730
    .end local v0    # "aCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v7    # "phoneType":I
    :cond_6
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2731
    goto/16 :goto_0

    .line 2736
    .end local v5    # "i$":Ljava/util/Iterator;
    :pswitch_5
    const-string v10, "CHLD 2 : switch GSM Hold call to Active "

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2737
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2744
    :pswitch_6
    const-string v10, "CHLD 2 : swap Hold and Active calls "

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2745
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2752
    :pswitch_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2753
    .restart local v0    # "aCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_7

    .line 2754
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2755
    .restart local v7    # "phoneType":I
    if-ne v7, v9, :cond_7

    .line 2756
    const-string v11, "CHLD 2 : hangup GSM Active Call and answer incoming call"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2758
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2764
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IA_H:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v10, :cond_0

    .line 2765
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2759
    :catch_3
    move-exception v2

    .line 2760
    .restart local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2761
    goto/16 :goto_0

    .line 2771
    .end local v0    # "aCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v7    # "phoneType":I
    :cond_8
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2772
    goto/16 :goto_0

    .line 2777
    .end local v5    # "i$":Ljava/util/Iterator;
    :pswitch_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2783
    :pswitch_9
    const-string v10, "CHLD 1 : answer ringing call and end active call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2784
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 2635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private evdoDTChldHandler3(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 5
    .param p1, "scenario"    # Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDTChldHandler3 : scenario ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2798
    sget-object v3, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2825
    const-string v1, "CHLD 3 : wrong scenario "

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v2

    .line 2826
    :goto_0
    return v1

    .line 2803
    :sswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 2804
    .local v0, "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_0

    .line 2806
    const-string v2, "CHLD 3 : merge calls for CDMA THRWAY ACTIVE "

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2808
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_0

    .line 2811
    :cond_0
    const-string v1, "CHLD 3 : do not merge call for CDMA not in THRWAY ACTIVE"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v2

    .line 2812
    goto :goto_0

    .line 2818
    .end local v0    # "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :sswitch_1
    const-string v2, "CHLD 3 : merge calls "

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2820
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_0

    .line 2798
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private executeHHRestrictIfNeed(Z)Z
    .locals 14
    .param p1, "bIsConnected"    # Z

    .prologue
    .line 683
    const-string v12, "[executeHHRestrictIfNeed]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 685
    const/4 v1, 0x0

    .line 686
    .local v1, "bExecuted":Z
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v12}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 687
    .local v0, "activeFgCall":Lcom/android/internal/telephony/Call;
    const/4 v8, 0x0

    .line 688
    .local v8, "inCallPhone":Lcom/android/internal/telephony/Phone;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 692
    .local v10, "listHoldCall":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    if-eq v12, v13, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 693
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 694
    const-string v12, "executeHHRestrictIfNeed active call"

    invoke-virtual {p0, v12, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 697
    :cond_1
    const-string v12, "executeHHRestrictIfNeed traverse foreground call"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 698
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v9

    .line 699
    .local v9, "listCall":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    if-eqz v8, :cond_3

    .line 700
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 701
    .local v3, "c":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    if-eq v12, v8, :cond_2

    .line 702
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    const-string v12, "executeHHRestrictIfNeed add hold call"

    invoke-virtual {p0, v12, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 708
    .end local v3    # "c":Lcom/android/internal/telephony/Call;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v12, "executeHHRestrictIfNeed traverse background call"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 709
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v9

    .line 710
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 711
    .restart local v3    # "c":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_4

    .line 712
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    const-string v12, "executeHHRestrictIfNeed add hold call"

    invoke-virtual {p0, v12, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 717
    .end local v3    # "c":Lcom/android/internal/telephony/Call;
    :cond_5
    const/4 v5, 0x0

    .local v5, "firstHoldCall":Lcom/android/internal/telephony/Call;
    const/4 v11, 0x0

    .line 718
    .local v11, "secondHoldCall":Lcom/android/internal/telephony/Call;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 719
    .restart local v3    # "c":Lcom/android/internal/telephony/Call;
    const/4 v2, 0x1

    .line 721
    .local v2, "bSkip":Z
    if-nez v5, :cond_7

    if-eqz v11, :cond_8

    .line 722
    :cond_7
    const/4 v2, 0x0

    .line 725
    :cond_8
    if-nez v5, :cond_9

    .line 726
    move-object v5, v3

    .line 727
    if-nez v2, :cond_6

    .line 731
    :cond_9
    if-nez v11, :cond_a

    .line 732
    move-object v11, v3

    .line 733
    if-nez v2, :cond_6

    .line 741
    :cond_a
    if-nez p1, :cond_d

    .line 743
    invoke-direct {p0, v5, v11}, Lcom/android/phone/BluetoothPhoneService;->chooseTheEarlierHoldCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 744
    .local v6, "hangupCall":Lcom/android/internal/telephony/Call;
    const/4 v12, 0x2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    if-eq v12, v13, :cond_b

    .line 745
    const-string v12, "executeHHRestrictIfNeed: PhoneUtils.hangupHoldingCall(hangupCall)[!CDMA Call]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 746
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v12, v6}, Lcom/android/phone/BluetoothDualTalkUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 756
    :goto_3
    if-ne v6, v5, :cond_c

    .line 757
    const/4 v5, 0x0

    .line 765
    .end local v6    # "hangupCall":Lcom/android/internal/telephony/Call;
    :goto_4
    const/4 v1, 0x1

    .line 766
    goto :goto_2

    .line 748
    .restart local v6    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_b
    const-string v12, "executeHHRestrictIfNeed: hangupCall.hangup()[CDMA Call]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 750
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 751
    :catch_0
    move-exception v4

    .line 752
    .local v4, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeHHRestrictIfNeed: exception occurs e="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 759
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 763
    .end local v6    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_d
    const-string v12, "executeHHRestrictIfNeed: temp (H,H) occurred"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 768
    .end local v2    # "bSkip":Z
    .end local v3    # "c":Lcom/android/internal/telephony/Call;
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeHHRestrictIfNeed: bExecuted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 769
    const-string v12, "[[executeHHRestrictIfNeed]]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 770
    return v1
.end method

.method private executeIIRestrictIfNeed(ZLcom/android/internal/telephony/Call;)Z
    .locals 9
    .param p1, "bIsConnected"    # Z
    .param p2, "ringingCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 598
    const-string v7, "[executeIIRestrictIfNeed]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    .line 602
    .local v0, "bExecuted":Z
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->isRelaxMultiTalksRestrict()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 603
    const-string v7, "executeIIRestrictIfNeed: return directly due to isRelaxMultiTalksRestrict() == true"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 604
    const-string v7, "[[executeIIRestrictIfNeed]]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 645
    .end local v0    # "bExecuted":Z
    .local v1, "bExecuted":I
    :goto_0
    return v1

    .line 609
    .end local v1    # "bExecuted":I
    .restart local v0    # "bExecuted":Z
    :cond_0
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v6

    .line 610
    .local v6, "ringingCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 611
    .local v5, "rCall":Lcom/android/internal/telephony/Call;
    if-eq v5, p2, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 612
    const/4 v0, 0x1

    .line 613
    const-string v7, "executeIIRestrictIfNeed: (I,I) conflict occurs"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 614
    const-string v7, "executeIIRestrictIfNeed 1st rCall"

    invoke-virtual {p0, v7, p2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 615
    const-string v7, "executeIIRestrictIfNeed 2nd rCall"

    invoke-virtual {p0, v7, v5}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 616
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    if-eqz v7, :cond_4

    .line 617
    const/4 v3, 0x0

    .line 618
    .local v3, "hangupCall":Lcom/android/internal/telephony/Call;
    if-nez p1, :cond_3

    .line 619
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v7}, Lcom/android/phone/BluetoothDualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 620
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: hangup call(background i)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 626
    :goto_2
    const-string v7, "executeIIRestrictIfNeed hangupCall"

    invoke-virtual {p0, v7, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 628
    :try_start_0
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Call;->hangup(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_3
    if-ne p2, v3, :cond_2

    move-object p2, v5

    .line 635
    :cond_2
    const/4 v7, 0x0

    invoke-direct {p0, v7, p2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    goto :goto_1

    .line 622
    :cond_3
    invoke-virtual {p0, p2, v5}, Lcom/android/phone/BluetoothPhoneService;->chooseTheLatterCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: hangup call(latter i)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: exception occurs e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 638
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v3    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_4
    const-string v7, "executeIIRestrictIfNeed: fail to hangup background incoming call due to mBtDTUtil = null!"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 643
    .end local v5    # "rCall":Lcom/android/internal/telephony/Call;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed:bExecuted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 644
    const-string v7, "[[executeIIRestrictIfNeed]]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 645
    .restart local v1    # "bExecuted":I
    goto/16 :goto_0
.end method

.method private executeIORestrictIfNeed(Lcom/android/internal/telephony/Call;)Z
    .locals 8
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 649
    const-string v6, "[executeIORestrictIfNeed]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x0

    .line 653
    .local v0, "bExecuted":Z
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->isRelaxMultiTalksRestrict()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 654
    const-string v6, "executeIORestrictIfNeed: return directly due to isRelaxMultiTalksRestrict() == true"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 655
    const-string v6, "[[executeIORestrictIfNeed]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 679
    .end local v0    # "bExecuted":Z
    .local v1, "bExecuted":I
    :goto_0
    return v1

    .line 659
    .end local v1    # "bExecuted":I
    .restart local v0    # "bExecuted":Z
    :cond_0
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 660
    .local v4, "foregroundCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 661
    .local v2, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 662
    const-string v6, "executeIORestrictIfNeed: (I,O) (O,I) conflict occurs"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 663
    const-string v6, "executeIORestrictIfNeed iCall"

    invoke-virtual {p0, v6, p1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 664
    const-string v6, "executeIORestrictIfNeed oCall"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 666
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 667
    const-string v6, "executeIORestrictIfNeed hangupCall(Success)"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_1
    const/4 v0, 0x1

    .line 677
    .end local v2    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeIORestrictIfNeed: bExecuted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 678
    const-string v6, "[[executeIORestrictIfNeed]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 679
    .restart local v1    # "bExecuted":I
    goto :goto_0

    .line 668
    .end local v1    # "bExecuted":I
    .restart local v2    # "call":Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v3

    .line 669
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeIORestrictIfNeed: exception occurs e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 670
    const-string v6, "executeIORestrictIfNeed hangupCall(Fail)"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1
.end method

.method private generateCdmaHoldTime(Lcom/android/internal/telephony/Call;)J
    .locals 7
    .param p1, "activeForegroundCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 496
    const-string v5, "[generateCdmaHoldTime]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 498
    .local v3, "maxHoldTime":J
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 499
    .local v2, "listCall":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 500
    .local v0, "c":Lcom/android/internal/telephony/Call;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateCdmaHoldTime: update hold time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    .end local v0    # "c":Lcom/android/internal/telephony/Call;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateCdmaHoldTime: maxHoldTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 508
    const-string v5, "[[generateCdmaHoldTime]]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 509
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    return-wide v5
.end method

.method private getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .locals 5
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1651
    const/4 v0, 0x0

    .line 1652
    .local v0, "number":Ljava/lang/String;
    const/16 v1, 0x80

    .line 1654
    .local v1, "type":I
    if-nez p1, :cond_0

    .line 1655
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 1656
    if-nez p1, :cond_0

    .line 1657
    const-string v2, "BluetoothPhoneService"

    const-string v3, "Could not get a handle on Connection object for the call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_0
    if-eqz p1, :cond_1

    .line 1661
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1662
    if-eqz v0, :cond_1

    .line 1663
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    .line 1666
    :cond_1
    if-nez v0, :cond_2

    .line 1667
    const-string v0, ""

    .line 1671
    :cond_2
    const-string v2, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallNumber: number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    new-instance v2, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    return-object v2
.end method

.method private getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 384
    const-string v2, "[getCdmaHoldTime]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    .line 386
    .local v0, "cdmaHoldTime":J
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 392
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaHoldTime: cdmaHoldTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 393
    const-string v2, "[[getCdmaHoldTime]]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 394
    return-wide v0

    .line 389
    :cond_0
    const-string v2, "getCdmaHoldTime: no cdma hold time!"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 390
    const-string v2, "c"

    invoke-virtual {p0, v2, p1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private getDefaultSIMInternal()I
    .locals 11

    .prologue
    const-wide/16 v9, -0x5

    .line 3183
    const/4 v2, 0x0

    .line 3184
    .local v2, "firstSim":I
    const/4 v0, 0x0

    .line 3185
    .local v0, "defaultSim":I
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_call_sim_setting"

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    long-to-int v6, v7

    .line 3189
    .local v6, "slotId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultSIM : SIM ID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 3190
    int-to-long v7, v6

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    int-to-long v7, v6

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 3192
    :cond_0
    const-string v7, "No default SIM, get first inserted SIM"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 3193
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->getSimCount()I

    move-result v5

    .line 3196
    .local v5, "simNum":I
    const/4 v3, 0x0

    .local v3, "simID":I
    :goto_0
    add-int/lit8 v7, v5, 0x0

    if-ge v3, v7, :cond_1

    .line 3197
    :try_start_0
    sget-object v7, Lcom/android/phone/BluetoothPhoneService;->iTel:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v7, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultSim():first inserted SIM found ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 3199
    move v0, v3

    .line 3203
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultSim():The default SIM is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3221
    .end local v3    # "simID":I
    .end local v5    # "simNum":I
    :goto_1
    return v0

    .line 3196
    .restart local v3    # "simID":I
    .restart local v5    # "simNum":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3204
    :catch_0
    move-exception v1

    .line 3205
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultSim():exception thrown ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", default SIM set to GEMINI_SIM_1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 3206
    const/4 v0, 0x0

    goto :goto_1

    .line 3209
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "simID":I
    .end local v5    # "simNum":I
    :cond_3
    int-to-long v7, v6

    invoke-static {p0, v7, v8}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 3210
    .local v4, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-eqz v4, :cond_4

    .line 3212
    iget v0, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 3213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultSIM : Sim Id in Settings.System.VOICE_CALL_SIM_SETTING="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3217
    :cond_4
    const-string v7, "getDefaultSIM : simInfo == null, use firstSim"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getNumHeldCdma()I
    .locals 5

    .prologue
    .line 1622
    const/4 v1, 0x0

    .line 1624
    .local v1, "numHeld":I
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_0

    .line 1625
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 1627
    .local v0, "curr3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 1630
    .local v2, "prev3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1632
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_2

    .line 1633
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_1

    .line 1634
    const/4 v1, 0x0

    .line 1646
    .end local v0    # "curr3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v2    # "prev3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumHeldCdma: numHeld="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1647
    return v1

    .line 1636
    .restart local v0    # "curr3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .restart local v2    # "prev3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1639
    :cond_2
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_3

    .line 1640
    const/4 v1, 0x1

    goto :goto_0

    .line 1643
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNumHeldUmts()I
    .locals 6

    .prologue
    .line 1610
    const/4 v1, 0x0

    .line 1611
    .local v1, "countHeld":I
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 1613
    .local v2, "heldCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1614
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 1615
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1618
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    return v1
.end method

.method private getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p1, "callObj"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call$State;

    .line 491
    .local v0, "state":Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrevCallState: PrevState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current Call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 492
    return-object v0
.end method

.method public static getSimCount()I
    .locals 4

    .prologue
    .line 3171
    const/4 v0, 0x1

    .line 3174
    .local v0, "simCount":I
    const-string v2, "persist.gemini.sim_num"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3175
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3179
    return v0
.end method

.method private handleCdmaSetSecondCallState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdmaSetSecondCallState: Setting mCdmaIsSecondCallActive to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2161
    iput-boolean p1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 2163
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    .line 2164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 2166
    :cond_0
    return-void
.end method

.method private handleCdmaSwapSecondCallState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2142
    const-string v0, "cdmaSwapSecondCallState: Toggling mCdmaIsSecondCallActive"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2143
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 2144
    iput-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 2145
    return-void

    .line 2143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCdmaSwapSecondCallStateBT()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2150
    const-string v1, "cdmaSwapSecondCallState: Toggling mCdmaIsSecondCallActive from BT"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2151
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 2152
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 2154
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2155
    .local v0, "backgroundCall":Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2156
    return-void

    .line 2151
    .end local v0    # "backgroundCall":Lcom/android/internal/telephony/Call;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleCommonSpecialCases(ZZLcom/android/phone/BluetoothPhoneService$CallInfo;)Z
    .locals 8
    .param p1, "callState"    # Z
    .param p2, "prevCallState"    # Z
    .param p3, "info"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    const/4 v7, 0x1

    .line 1321
    const/4 v6, 0x1

    .line 1328
    .local v6, "continue_process":Z
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {p3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    .line 1329
    iput-boolean v7, p0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    .line 1354
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-lez v0, :cond_3

    .line 1356
    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {p3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {p3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    .line 1359
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCommonSpecialCases case 2: ignore incoming ending transition states. mRingingCallState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1360
    const/4 v6, 0x0

    .line 1365
    :cond_3
    return v6

    .line 1331
    :cond_4
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {p3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    if-nez v0, :cond_5

    .line 1333
    const-string v0, "handleCommonSpecialCases case 1: Dilaing status is missed, add one for it"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 1336
    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1339
    iput-boolean v7, p0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    goto :goto_0

    .line 1343
    :cond_5
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {p3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    goto/16 :goto_0
.end method

.method private declared-synchronized handleDelayMOCallEnd()V
    .locals 1

    .prologue
    .line 904
    monitor-enter p0

    :try_start_0
    const-string v0, "handleDelayMOCallEnd"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->stopUserBusyTone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    monitor-exit p0

    return-void

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleEVDOChld(I)Z
    .locals 4
    .param p1, "chld"    # I

    .prologue
    .line 2833
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->evdoAnalyzeDTScenario()Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    move-result-object v1

    .line 2839
    .local v1, "scenario":Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    if-nez p1, :cond_0

    .line 2840
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler0(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .line 2852
    .local v0, "result":Z
    :goto_0
    return v0

    .line 2841
    .end local v0    # "result":Z
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2842
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler1(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 2843
    .end local v0    # "result":Z
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2844
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler2(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 2845
    .end local v0    # "result":Z
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 2846
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler3(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 2848
    .end local v0    # "result":Z
    :cond_3
    const-string v2, "CHLD : wrong parameter"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2849
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private handleListCurrentCalls()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1578
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1579
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 1588
    .local v9, "phoneType":I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 1589
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsCdma()V

    .line 1598
    :goto_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v6, ""

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1599
    return-void

    .line 1590
    :cond_0
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    .line 1591
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsGsm()V

    goto :goto_0

    .line 1593
    :cond_1
    const-string v0, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNormalChld(I)Z
    .locals 11
    .param p1, "chld"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2857
    const-string v8, "android.permission.MODIFY_PHONE_STATE"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2859
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2860
    .local v3, "phoneType":I
    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2861
    .local v4, "ringingCall":Lcom/android/internal/telephony/Call;
    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2863
    .local v0, "backgroundCall":Lcom/android/internal/telephony/Call;
    if-nez p1, :cond_1

    .line 2864
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2865
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    .line 2973
    :goto_0
    return v6

    .line 2867
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    goto :goto_0

    .line 2869
    :cond_1
    if-ne p1, v6, :cond_5

    .line 2870
    if-ne v3, v10, :cond_3

    .line 2871
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2873
    const-string v7, "CHLD:1 Callwaiting Answer call"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2874
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 2879
    :cond_2
    const-string v7, "CHLD:1 Hangup Call"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2880
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 2883
    :cond_3
    if-ne v3, v6, :cond_4

    .line 2885
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v6

    goto :goto_0

    .line 2887
    :cond_4
    const-string v6, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2888
    goto :goto_0

    .line 2890
    :cond_5
    if-ne p1, v10, :cond_a

    .line 2891
    if-ne v3, v10, :cond_8

    .line 2897
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2898
    const-string v8, "CHLD:2 Callwaiting Answer call"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2899
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2900
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2902
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2903
    .local v1, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2905
    .end local v1    # "msg":Landroid/os/Message;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_7

    .line 2908
    const-string v7, "CHLD:2 Swap Calls"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2912
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2915
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2918
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7
    const-string v6, "BluetoothPhoneService"

    const-string v8, "CDMA fail to do hold active and accept held"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2919
    goto/16 :goto_0

    .line 2920
    :cond_8
    if-ne v3, v6, :cond_9

    .line 2921
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2924
    :cond_9
    const-string v6, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2925
    goto/16 :goto_0

    .line 2927
    :cond_a
    const/4 v8, 0x3

    if-ne p1, v8, :cond_10

    .line 2928
    if-ne v3, v10, :cond_d

    .line 2929
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 2932
    .local v5, "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v8, :cond_b

    .line 2933
    const-string v7, "CHLD:3 Merge Calls"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2934
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 2936
    :cond_b
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_c

    move v6, v7

    .line 2940
    goto/16 :goto_0

    .line 2942
    :cond_c
    const-string v6, "BluetoothPhoneService"

    const-string v8, "GSG no call to add conference"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2943
    goto/16 :goto_0

    .line 2944
    .end local v5    # "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_d
    if-ne v3, v6, :cond_f

    .line 2945
    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2958
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 2964
    :cond_e
    const-string v6, "BluetoothPhoneService"

    const-string v8, "GSG no call to merge"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2965
    goto/16 :goto_0

    .line 2968
    :cond_f
    const-string v6, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2969
    goto/16 :goto_0

    .line 2972
    :cond_10
    const-string v6, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad CHLD value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2973
    goto/16 :goto_0
.end method

.method private declared-synchronized handlePhoneDisconnect(Lcom/android/internal/telephony/Connection;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePhoneDisconnect : cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 889
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->isHFPConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_1

    .line 891
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    .line 892
    .local v0, "callState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePhoneDisconnect : mNumActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNumHeld:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 893
    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    add-int/2addr v1, v2

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    const/4 v1, 0x1

    .line 899
    .end local v0    # "callState":I
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 887
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    .locals 22
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1428
    const-string v3, "[handlePreciseCallStateChange]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move/from16 v16, v0

    .line 1432
    .local v16, "oldNumActive":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v17, v0

    .line 1433
    .local v17, "oldNumHeld":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v19, v0

    .line 1434
    .local v19, "oldRingingCallState":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1435
    .local v15, "oldForegroundCallState":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v18, v0

    .line 1437
    .local v18, "oldRingNumber":Lcom/android/phone/BluetoothPhoneService$CallNumber;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 1439
    .local v13, "foregroundCall":Lcom/android/internal/telephony/Call;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChange old: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1444
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChange: foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->processDelayMOCallEnd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1450
    const-string v3, "handlePreciseCallStateChange: return directly for delay MO call end"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1575
    :goto_0
    return-void

    .line 1455
    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 1459
    const-string v3, "handlePreciseCallStateChange. Call disconnecting, wait before update"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1460
    const-string v3, "[[handlePreciseCallStateChange]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1464
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    .line 1467
    .local v21, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 1468
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1471
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldCdma()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1472
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    .line 1473
    .local v9, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_4

    .line 1474
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 1476
    .local v12, "currCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v20

    .line 1479
    .local v20, "prevCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v12, :cond_3

    .line 1488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way call state change. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsThreeWayCallOrigStateDialing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1491
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_2

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1495
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1499
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1510
    :cond_2
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_3

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_3

    .line 1514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way conf call. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1516
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1521
    :cond_3
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1527
    .end local v9    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v12    # "currCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v20    # "prevCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_4
    :goto_2
    new-instance v14, Lcom/android/phone/BluetoothPhoneService$CallInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;-><init>(Lcom/android/phone/BluetoothPhoneService;Lcom/android/phone/BluetoothPhoneService$1;)V

    .line 1528
    .local v14, "info":Lcom/android/phone/BluetoothPhoneService$CallInfo;
    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v14, v13}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1102(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    .line 1530
    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v14, v15}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1302(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1531
    move-object/from16 v0, v19

    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v14, v0}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1202(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1532
    move-object/from16 v0, v18

    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static {v14, v0}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1402(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1535
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/BluetoothPhoneService;->handleSpecialCases(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1537
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1538
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1539
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 1540
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1541
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    goto/16 :goto_0

    .line 1464
    .end local v14    # "info":Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .end local v21    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1524
    .restart local v21    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldUmts()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    goto :goto_2

    .line 1545
    .restart local v14    # "info":Lcom/android/phone/BluetoothPhoneService$CallInfo;
    :cond_7
    const/4 v11, 0x0

    .line 1546
    .local v11, "callsSwitched":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_a

    .line 1548
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1556
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChange new: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CallsSwitched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1561
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v0, v18

    # invokes: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$2000(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v11, :cond_9

    .line 1566
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_9

    .line 1567
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1573
    :cond_9
    const-string v3, "[[handlePreciseCallStateChange]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1550
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1551
    .local v10, "backgroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    const/4 v11, 0x1

    .line 1554
    :goto_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    goto/16 :goto_3

    .line 1551
    :cond_b
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private handlePreciseCallStateChangeDualTalk(Lcom/android/internal/telephony/Connection;)V
    .locals 29
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1086
    const-string v3, "[handlePreciseCallStateChangeDualTalk]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v24, v0

    .line 1092
    .local v24, "oldRingingCallState":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v22, v0

    .line 1093
    .local v22, "oldForegroundCallState":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v23, v0

    .line 1095
    .local v23, "oldRingNumber":Lcom/android/phone/BluetoothPhoneService$CallNumber;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1099
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->canSwapInDiffSim()Z

    move-result v11

    .line 1101
    .local v11, "bCanSwapInDiffSim":Z
    const/4 v10, 0x0

    .line 1107
    .local v10, "activePhoneType":I
    if-nez v11, :cond_0

    .line 1108
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->resetMultiTalksSwapData()V

    .line 1111
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->isHFPConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1113
    const/16 v26, 0x0

    .line 1115
    .local v26, "return_directly":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->checkUnreasonableStates()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1116
    const-string v3, "handlePreciseCallStateChangeDualTalk: return directly for unreasonable states"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1117
    const/16 v26, 0x1

    .line 1128
    :cond_1
    :goto_0
    if-eqz v26, :cond_5

    .line 1129
    const-string v3, "[[handlePreciseCallStateChangeDualTalk]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1318
    .end local v26    # "return_directly":Z
    :goto_1
    return-void

    .line 1119
    .restart local v26    # "return_directly":Z
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/BluetoothPhoneService;->restrictMultiTalks(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1120
    const-string v3, "handlePreciseCallStateChangeDualTalk: return directly for restriction"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1121
    const/16 v26, 0x1

    goto :goto_0

    .line 1123
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->processDelayMOCallEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1124
    const-string v3, "handlePreciseCallStateChangeDualTalk: return directly for delay MO call end"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1125
    const/16 v26, 0x1

    goto :goto_0

    .line 1133
    .end local v26    # "return_directly":Z
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPlayBusyTone:Z

    .line 1138
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 1139
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    .line 1148
    .local v19, "foregroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 1149
    .local v12, "backgroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v28

    .line 1152
    .local v28, "ringingCall":Lcom/android/internal/telephony/Call;
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_c

    .line 1158
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1159
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 1167
    :goto_2
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: mForegroundCallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mNumActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " activePhoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 1170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v18

    .line 1173
    .local v18, "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v27

    .line 1175
    .local v27, "ringCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldUmts()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-nez v3, :cond_6

    .line 1180
    const/4 v3, 0x1

    if-ne v10, v3, :cond_e

    .line 1181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_6

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v16

    .line 1183
    .local v16, "currCdmaCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_6

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 1185
    .local v9, "CdmaFgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_6

    .line 1186
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1195
    .end local v9    # "CdmaFgCall":Lcom/android/internal/telephony/Call;
    .end local v16    # "currCdmaCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_6
    :goto_3
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: mNumHeld: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRingingCallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    new-instance v21, Lcom/android/phone/BluetoothPhoneService$CallInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;-><init>(Lcom/android/phone/BluetoothPhoneService;Lcom/android/phone/BluetoothPhoneService$1;)V

    .line 1198
    .local v21, "info":Lcom/android/phone/BluetoothPhoneService$CallInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1102(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    .line 1199
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, v21

    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mBackgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0, v3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1902(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1200
    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1302(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1201
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1202(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1202
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1402(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1203
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    # setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1702(Lcom/android/phone/BluetoothPhoneService$CallInfo;Ljava/util/List;)Ljava/util/List;

    .line 1205
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->handleSpecialCasesForDualTalk(Lcom/android/phone/BluetoothPhoneService$CallInfo;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    if-eq v10, v3, :cond_9

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v17

    .line 1214
    .local v17, "currCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v25

    .line 1217
    .local v25, "prevCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCdmaThreeWayCallState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-eq v3, v0, :cond_8

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk : CDMA 3way call state change. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsThreeWayCallOrigStateDialing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1230
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1234
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1238
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1249
    :cond_7
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_8

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v25

    if-ne v0, v3, :cond_8

    .line 1253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: CDMA 3way conf call. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1260
    :cond_8
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1263
    .end local v17    # "currCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v25    # "prevCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_9
    const/4 v15, 0x0

    .line 1264
    .local v15, "callsSwitched":Z
    if-eqz v11, :cond_f

    .line 1266
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->isMultiTalksSwapped()Z

    move-result v15

    .line 1267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "swap call in MultiTalks Mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1287
    :cond_a
    :goto_4
    const/4 v3, 0x2

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 1288
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    .line 1289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update connection create time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1294
    :cond_b
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Call;

    .line 1296
    .local v13, "callObjF":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/BluetoothPhoneService;->setPrevCallState(Lcom/android/internal/telephony/Call;)V

    goto :goto_5

    .line 1160
    .end local v13    # "callObjF":Lcom/android/internal/telephony/Call;
    .end local v15    # "callsSwitched":Z
    .end local v18    # "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "info":Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .end local v27    # "ringCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_d

    .line 1161
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1162
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    goto/16 :goto_2

    .line 1164
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    goto/16 :goto_2

    .line 1190
    .restart local v18    # "fgCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v27    # "ringCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_6

    .line 1191
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldCdma()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    goto/16 :goto_3

    .line 1269
    .restart local v15    # "callsSwitched":Z
    .restart local v21    # "info":Lcom/android/phone/BluetoothPhoneService$CallInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_10

    .line 1270
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in SingleTalk Mode (CDMA)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1276
    :cond_10
    const/4 v3, 0x2

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_a

    .line 1277
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11

    const/4 v15, 0x1

    .line 1280
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in SingleTalk Mode (GSM)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1277
    :cond_11
    const/4 v15, 0x0

    goto :goto_6

    .line 1298
    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/Call;

    .line 1300
    .local v14, "callObjR":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/BluetoothPhoneService;->setPrevCallState(Lcom/android/internal/telephony/Call;)V

    goto :goto_7

    .line 1303
    .end local v14    # "callObjR":Lcom/android/internal/telephony/Call;
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v0, v23

    # invokes: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$2000(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v15, :cond_15

    .line 1308
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_15

    .line 1309
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1316
    :cond_15
    const-string v3, "[[handlePreciseCallStateChangeDualTalk]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private handleQueryPhoneState()V
    .locals 6

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 1603
    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, v3}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1607
    :cond_0
    return-void
.end method

.method private handleSipSpecialCases(ZZLcom/android/phone/BluetoothPhoneService$CallInfo;)Z
    .locals 3
    .param p1, "callState"    # Z
    .param p2, "prevCallState"    # Z
    .param p3, "info"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    .line 1371
    const/4 v0, 0x1

    .line 1379
    .local v0, "continue_process":Z
    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-lez v1, :cond_0

    .line 1381
    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {p3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static {p3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v2

    # invokes: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$2000(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1385
    const-string v1, "handleSipSpecialCases case 1: ignore temp incoming update"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1386
    const/4 v0, 0x0

    .line 1397
    :cond_0
    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSipSpecialCases case 2: mNumHeld ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1400
    const/4 v0, 0x0

    .line 1404
    :cond_1
    return v0
.end method

.method private handleSpecialCases(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Z
    .locals 6
    .param p1, "info"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1410
    iget v5, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v5, :cond_3

    :cond_0
    move v0, v4

    .line 1411
    .local v0, "callState":Z
    :goto_0
    iget v5, p0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-lez v5, :cond_4

    :cond_1
    move v2, v4

    .line 1412
    .local v2, "prevCallState":Z
    :goto_1
    const/4 v1, 0x1

    .line 1414
    .local v1, "continue_process":Z
    invoke-direct {p0, v0, v2, p1}, Lcom/android/phone/BluetoothPhoneService;->handleCommonSpecialCases(ZZLcom/android/phone/BluetoothPhoneService$CallInfo;)Z

    move-result v1

    .line 1416
    if-eqz v1, :cond_2

    .line 1418
    invoke-direct {p0, v0, v2, p1}, Lcom/android/phone/BluetoothPhoneService;->handleSipSpecialCases(ZZLcom/android/phone/BluetoothPhoneService$CallInfo;)Z

    move-result v1

    .line 1421
    :cond_2
    return v1

    .end local v0    # "callState":Z
    .end local v1    # "continue_process":Z
    .end local v2    # "prevCallState":Z
    :cond_3
    move v0, v3

    .line 1410
    goto :goto_0

    .restart local v0    # "callState":Z
    :cond_4
    move v2, v3

    .line 1411
    goto :goto_1
.end method

.method private handleSpecialCasesForDualTalk(Lcom/android/phone/BluetoothPhoneService$CallInfo;)V
    .locals 17
    .param p1, "info"    # Lcom/android/phone/BluetoothPhoneService$CallInfo;

    .prologue
    .line 924
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-gtz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v1, :cond_7

    :cond_0
    const/4 v10, 0x1

    .line 925
    .local v10, "callState":Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    if-gtz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-lez v1, :cond_8

    :cond_1
    const/4 v13, 0x1

    .line 928
    .local v13, "prevCallState":Z
    :goto_1
    const/4 v1, 0x1

    if-ne v1, v10, :cond_d

    if-ne v10, v13, :cond_d

    .line 930
    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1100(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    .line 947
    .local v16, "prevState":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 951
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_3

    .line 955
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 960
    :cond_3
    const-string v1, "handleSpecialCasesForDualTalk: AW --> DW --> A occurs !"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 988
    :cond_4
    const/4 v11, 0x0

    .line 989
    .local v11, "disCall":Lcom/android/internal/telephony/Call;
    const/4 v7, 0x0

    .line 991
    .local v7, "activeCall":Lcom/android/internal/telephony/Call;
    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1700(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Call;

    .line 992
    .local v9, "c":Lcom/android/internal/telephony/Call;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_9

    .line 993
    :cond_6
    move-object v11, v9

    goto :goto_2

    .line 924
    .end local v7    # "activeCall":Lcom/android/internal/telephony/Call;
    .end local v9    # "c":Lcom/android/internal/telephony/Call;
    .end local v10    # "callState":Z
    .end local v11    # "disCall":Lcom/android/internal/telephony/Call;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "prevCallState":Z
    .end local v16    # "prevState":Lcom/android/internal/telephony/Call$State;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 925
    .restart local v10    # "callState":Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 994
    .restart local v7    # "activeCall":Lcom/android/internal/telephony/Call;
    .restart local v9    # "c":Lcom/android/internal/telephony/Call;
    .restart local v11    # "disCall":Lcom/android/internal/telephony/Call;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "prevCallState":Z
    .restart local v16    # "prevState":Lcom/android/internal/telephony/Call$State;
    :cond_9
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_5

    .line 995
    move-object v7, v9

    goto :goto_2

    .line 999
    .end local v9    # "c":Lcom/android/internal/telephony/Call;
    :cond_a
    if-eqz v11, :cond_d

    if-eqz v7, :cond_d

    .line 1000
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .line 1001
    .local v14, "prevDisState":Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpecialCasesForDualTalk: prevDisState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1003
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v1, :cond_d

    .line 1005
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1006
    .local v8, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    .line 1008
    .local v15, "prevRingState":Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpecialCasesForDualTalk: prevRingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1010
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v15, v1, :cond_b

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v15, v1, :cond_d

    .line 1012
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v1, :cond_d

    .line 1014
    const-string v1, "handleSpecialCasesForDualTalk: (I,AH) -> (A,DH) occurs"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_c

    .line 1017
    const/4 v2, 0x0

    const/4 v3, 0x1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1022
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 1039
    .end local v7    # "activeCall":Lcom/android/internal/telephony/Call;
    .end local v8    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v11    # "disCall":Lcom/android/internal/telephony/Call;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "prevDisState":Lcom/android/internal/telephony/Call$State;
    .end local v15    # "prevRingState":Lcom/android/internal/telephony/Call$State;
    .end local v16    # "prevState":Lcom/android/internal/telephony/Call$State;
    :cond_d
    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_e

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    .line 1043
    :cond_f
    const-string v1, "handleSpecialCasesForDualTalk: (I,O) restriction occurs"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_10

    .line 1046
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    const/4 v4, 0x6

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1061
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_12

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_12

    .line 1062
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    .line 1082
    :cond_11
    :goto_3
    return-void

    .line 1064
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_13

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    if-nez v1, :cond_13

    .line 1066
    const-string v1, "handleSpecialCasesForDualTalk: Dilaing status is missed, add one for it"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_11

    .line 1069
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1072
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    goto :goto_3

    .line 1076
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_11

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_11

    .line 1077
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    goto :goto_3
.end method

.method private isHFPConnected()Z
    .locals 3

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 580
    .local v1, "isConnected":Z
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_0

    .line 581
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 582
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    const/4 v1, 0x1

    .line 587
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    return v1
.end method

.method private isMultiTalksSwapped()Z
    .locals 5

    .prologue
    .line 553
    const-string v3, "[isMultiTalksSwapped]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, "bCallSwapped":Z
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 557
    .local v1, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 558
    .local v2, "curInCallPhone":Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    .line 559
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    if-eq v3, v2, :cond_0

    const/4 v0, 0x1

    .line 560
    :goto_0
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 566
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMultiTalksSwapped: bCallSwapped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 567
    const-string v3, "[[isMultiTalksSwapped]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 568
    return v0

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private isRelaxMultiTalksRestrict()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mIsLimitDTCall:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized listCurrentCallsCdma()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 1822
    monitor-enter p0

    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Lcom/android/internal/telephony/Connection;

    .line 1823
    .local v0, "clccConnections":[Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1824
    .local v1, "foregroundCall":Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1826
    .local v4, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1829
    .local v5, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 1830
    const-string v6, "Filling clccConnections[0] for INCOMING state"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1831
    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1858
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_5

    .line 1860
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1861
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1869
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_6

    aget-object v6, v0, v2

    if-eqz v6, :cond_6

    .line 1870
    aget-object v6, v0, v2

    invoke-direct {p0, v2, v6}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V

    .line 1869
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1832
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1834
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1835
    const-string v6, "Filling clccConnections[0] & [1] for CALL WAITING state"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1836
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1837
    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1822
    .end local v0    # "clccConnections":[Lcom/android/internal/telephony/Connection;
    .end local v1    # "foregroundCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "ringingCall":Lcom/android/internal/telephony/Call;
    .end local v5    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1839
    .restart local v0    # "clccConnections":[Lcom/android/internal/telephony/Connection;
    .restart local v1    # "foregroundCall":Lcom/android/internal/telephony/Call;
    .restart local v4    # "ringingCall":Lcom/android/internal/telephony/Call;
    .restart local v5    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v7, :cond_4

    .line 1842
    const-string v6, "Filling clccConnections[0] with ForgroundCall latest connection"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1844
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 1849
    :cond_4
    const-string v6, "Filling clccConnections[0] & [1] with ForgroundCall connections"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1851
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1852
    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 1862
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_1

    .line 1864
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1865
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1872
    .end local v3    # "msg":Landroid/os/Message;
    .restart local v2    # "i":I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized listCurrentCallsEVDO()V
    .locals 14

    .prologue
    const/16 v12, 0x8

    .line 1953
    monitor-enter p0

    const/16 v11, 0x8

    :try_start_0
    new-array v3, v11, [Lcom/android/internal/telephony/Connection;

    .line 1954
    .local v3, "clccConnections":[Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1956
    .local v4, "connections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1957
    .local v10, "ringingCall":Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 1958
    .local v1, "bCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v6

    .line 1960
    .local v6, "fCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1962
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1965
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 1966
    .local v5, "fCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1967
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1953
    .end local v1    # "bCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v3    # "clccConnections":[Lcom/android/internal/telephony/Connection;
    .end local v4    # "connections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v5    # "fCall":Lcom/android/internal/telephony/Call;
    .end local v6    # "fCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "ringingCall":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1971
    .restart local v1    # "bCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v3    # "clccConnections":[Lcom/android/internal/telephony/Connection;
    .restart local v4    # "connections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v6    # "fCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1972
    .local v0, "bCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1973
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1977
    .end local v0    # "bCall":Lcom/android/internal/telephony/Call;
    :cond_4
    const/4 v7, 0x0

    .line 1978
    .local v7, "i":I
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 1979
    .local v2, "c":Lcom/android/internal/telephony/Connection;
    if-ge v7, v12, :cond_5

    .line 1980
    aput-object v2, v3, v7

    .line 1981
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1984
    :cond_5
    const-string v11, "evdoGetClccResult : exceeds the connection number limit"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1989
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_8

    .line 1991
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1992
    .local v9, "msg":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2000
    .end local v9    # "msg":Landroid/os/Message;
    :cond_7
    :goto_3
    const/4 v7, 0x0

    :goto_4
    array-length v11, v3

    if-ge v7, v11, :cond_9

    aget-object v11, v3, v7

    if-eqz v11, :cond_9

    .line 2001
    aget-object v11, v3, v7

    invoke-direct {p0, v7, v11}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseEVDO(ILcom/android/internal/telephony/Connection;)V

    .line 2000
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1993
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_7

    .line 1995
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x6

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1996
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2004
    .end local v9    # "msg":Landroid/os/Message;
    :cond_9
    monitor-exit p0

    return-void
.end method

.method private listCurrentCallsGsm()V
    .locals 22

    .prologue
    .line 1720
    const/4 v2, 0x6

    .line 1723
    .local v2, "MAX_CONNECTIONS":I
    new-array v5, v2, [Lcom/android/internal/telephony/Connection;

    .line 1725
    .local v5, "clccConnections":[Lcom/android/internal/telephony/Connection;
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 1726
    .local v16, "newConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1728
    .local v7, "connections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1729
    .local v11, "foregroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1730
    .local v3, "backgroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    .line 1732
    .local v17, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1733
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1735
    :cond_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1736
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1738
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1739
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1744
    :cond_2
    new-array v6, v2, [Z

    .line 1745
    .local v6, "clccUsed":[Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v2, :cond_3

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    aput-boolean v20, v6, v13

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-boolean v21, v20, v13

    .line 1745
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1749
    :cond_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 1750
    .local v4, "c":Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 1751
    .local v12, "found":Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v18

    .line 1752
    .local v18, "timestamp":J
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v2, :cond_5

    .line 1753
    aget-boolean v20, v6, v13

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v13

    cmp-long v20, v18, v20

    if-nez v20, :cond_6

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-boolean v21, v20, v13

    .line 1755
    const/4 v12, 0x1

    .line 1756
    aput-object v4, v5, v13

    .line 1760
    :cond_5
    if-nez v12, :cond_4

    .line 1761
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1752
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1783
    .end local v4    # "c":Lcom/android/internal/telephony/Connection;
    .end local v12    # "found":Z
    .end local v18    # "timestamp":J
    .local v8, "earliestConnection":Lcom/android/internal/telephony/Connection;
    .local v9, "earliestTimestamp":J
    .local v15, "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-boolean v21, v20, v13

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v20, v0

    aput-wide v9, v20, v13

    .line 1785
    aput-object v8, v5, v13

    .line 1786
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1767
    .end local v8    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    .end local v9    # "earliestTimestamp":J
    .end local v15    # "j":I
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 1769
    const/4 v13, 0x0

    .line 1770
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    if-eqz v20, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1772
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 1773
    .restart local v9    # "earliestTimestamp":J
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1774
    .restart local v8    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_7

    .line 1775
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v18

    .line 1776
    .restart local v18    # "timestamp":J
    cmp-long v20, v18, v9

    if-gez v20, :cond_a

    .line 1777
    move-wide/from16 v9, v18

    .line 1778
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1774
    .restart local v8    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1790
    .end local v8    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    .end local v9    # "earliestTimestamp":J
    .end local v15    # "j":I
    .end local v18    # "timestamp":J
    :cond_b
    const/4 v13, 0x0

    :goto_5
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_d

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    if-eqz v20, :cond_c

    .line 1792
    aget-object v20, v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V

    .line 1790
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1795
    :cond_d
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3166
    const-string v0, "BluetoothPhoneService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    return-void
.end method

.method private processDelayMOCallEnd()Z
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 845
    const-string v3, "[processDelayMOCallEnd]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 847
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 849
    .local v0, "newState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_0

    .line 850
    iget-boolean v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPlayBusyTone:Z

    if-ne v3, v1, :cond_1

    .line 851
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->sendDelayMOCallEndMsg()V

    .line 865
    :goto_0
    return v1

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 856
    const-string v1, "handlePreciseCallStateChange: MESSAGE_DELAY_MO_CALL_END is sent while there is new call"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->stopUserBusyTone()V

    .line 864
    :cond_1
    :goto_1
    const-string v1, "[[processDelayMOCallEnd]]"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v2

    .line 865
    goto :goto_0

    .line 860
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPlayBusyTone:Z

    goto :goto_1
.end method

.method private registerPhoneEvents(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3225
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPhoneEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Gemini:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    if-eqz p1, :cond_0

    .line 3227
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForPreciseCallStateChanged(Landroid/os/Handler;I)V

    .line 3229
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForCallWaiting(Landroid/os/Handler;I)V

    .line 3230
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForIncomingRing(Landroid/os/Handler;I)V

    .line 3231
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisconnect(Landroid/os/Handler;I)V

    .line 3250
    :goto_0
    return-void

    .line 3239
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 3240
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 3241
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 3242
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForDisconnect(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private resetCdmaHoldTime()V
    .locals 1

    .prologue
    .line 513
    const-string v0, "[resetCdmaHoldTime]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 519
    :goto_0
    const-string v0, "[[resetCdmaHoldTime]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 520
    return-void

    .line 517
    :cond_0
    const-string v0, "updateCdmaHoldTime: mHashCdmaHoldTime = null"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetMultiTalksSwapData()V
    .locals 1

    .prologue
    .line 572
    const-string v0, "[resetMultiTalksSwapData]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 574
    const-string v0, "[[resetMultiTalksSwapData]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method private restrictMultiTalks(Z)Z
    .locals 4
    .param p1, "bIsConnected"    # Z

    .prologue
    .line 781
    const-string v2, "[restrictMultiTalks]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, "bHasRestrictOccurred":Z
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 785
    .local v1, "ringingCall":Lcom/android/internal/telephony/Call;
    const-string v2, "restrictMultiTalks: ringingCall="

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 786
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 789
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->executeIORestrictIfNeed(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    const/4 v0, 0x1

    .line 792
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/BluetoothPhoneService;->executeIIRestrictIfNeed(ZLcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    const/4 v0, 0x1

    .line 797
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->executeHHRestrictIfNeed(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 798
    const/4 v0, 0x1

    .line 800
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restrictMultiTalks:bHasRestrictOccurred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 801
    const-string v2, "[[restrictMultiTalks]]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 802
    return v0
.end method

.method private sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V
    .locals 13
    .param p1, "index"    # I
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1877
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    .line 1878
    .local v8, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v1, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    .line 1880
    .local v10, "currCdmaCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v1, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    .line 1883
    .local v11, "prevCdmaCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v1, :cond_1

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v1, :cond_1

    .line 1887
    const/4 v3, 0x0

    .line 1923
    .local v3, "state":I
    :goto_0
    const/4 v5, 0x0

    .line 1924
    .local v5, "mpty":Z
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v1, :cond_0

    .line 1925
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v1, :cond_0

    .line 1928
    const/4 v5, 0x1

    .line 1937
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v0

    .line 1939
    .local v2, "direction":I
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1940
    .local v6, "number":Ljava/lang/String;
    const/4 v7, -0x1

    .line 1941
    .local v7, "type":I
    if-eqz v6, :cond_6

    .line 1942
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 1947
    :goto_2
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1948
    .end local v2    # "direction":I
    .end local v3    # "state":I
    .end local v5    # "mpty":Z
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "type":I
    :goto_3
    return-void

    .line 1889
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 1890
    .local v9, "callState":Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v12

    aget v1, v1, v12

    packed-switch v1, :pswitch_data_0

    .line 1918
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad call state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1896
    :pswitch_0
    if-nez p1, :cond_3

    .line 1897
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_2

    move v3, v0

    .restart local v3    # "state":I
    :goto_4
    goto :goto_0

    .end local v3    # "state":I
    :cond_2
    move v3, v4

    goto :goto_4

    .line 1899
    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_4

    move v3, v4

    .line 1901
    .restart local v3    # "state":I
    :goto_5
    goto :goto_0

    .end local v3    # "state":I
    :cond_4
    move v3, v0

    .line 1899
    goto :goto_5

    .line 1903
    :pswitch_1
    const/4 v3, 0x1

    .line 1904
    .restart local v3    # "state":I
    goto :goto_0

    .line 1906
    .end local v3    # "state":I
    :pswitch_2
    const/4 v3, 0x2

    .line 1907
    .restart local v3    # "state":I
    goto :goto_0

    .line 1909
    .end local v3    # "state":I
    :pswitch_3
    const/4 v3, 0x3

    .line 1910
    .restart local v3    # "state":I
    goto :goto_0

    .line 1912
    .end local v3    # "state":I
    :pswitch_4
    const/4 v3, 0x4

    .line 1913
    .restart local v3    # "state":I
    goto :goto_0

    .line 1915
    .end local v3    # "state":I
    :pswitch_5
    const/4 v3, 0x5

    .line 1916
    .restart local v3    # "state":I
    goto :goto_0

    .end local v9    # "callState":Lcom/android/internal/telephony/Call$State;
    .restart local v5    # "mpty":Z
    :cond_5
    move v2, v4

    .line 1937
    goto :goto_1

    .line 1944
    .restart local v2    # "direction":I
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_6
    const-string v6, ""

    goto :goto_2

    .line 1890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendClccResponseEVDO(ILcom/android/internal/telephony/Connection;)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 2010
    const/4 v4, 0x0

    .line 2011
    .local v4, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] evdoConnectionToClccEntry : index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2013
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    .line 2015
    .local v18, "phoneType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 2016
    .local v10, "backgroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 2017
    .local v15, "foregroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v14

    .line 2019
    .local v14, "fCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    .line 2020
    .local v9, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v1, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 2022
    .local v12, "currCdmaCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v1, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v19

    .line 2025
    .local v19, "prevCdmaCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v1, :cond_3

    .line 2028
    const-string v1, "evdoConnectionToClccEntry : CDMA THRWAY to CONF CALL"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2029
    const/4 v4, 0x0

    .line 2100
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 2101
    .local v6, "mpty":Z
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_10

    .line 2102
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v1, :cond_f

    .line 2103
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v1, :cond_e

    .line 2106
    const/4 v6, 0x1

    .line 2125
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    .line 2127
    .local v3, "direction":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 2129
    .local v7, "number":Ljava/lang/String;
    const/4 v8, -0x1

    .line 2130
    .local v8, "type":I
    if-eqz v7, :cond_2

    .line 2131
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    .line 2134
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v2, p1, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 2136
    .end local v3    # "direction":I
    .end local v6    # "mpty":Z
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "type":I
    :goto_3
    return-void

    .line 2031
    :cond_3
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 2034
    :pswitch_0
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_a

    .line 2035
    const/16 v16, 0x0

    .line 2036
    .local v16, "found":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Call;

    .line 2037
    .local v13, "fCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    .line 2038
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    .line 2039
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_6

    .line 2041
    const-string v1, "evdoConnectionToClccEntry : single CDMA call"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2042
    const/4 v4, 0x0

    .line 2055
    :goto_4
    const/16 v16, 0x1

    .line 2059
    .end local v13    # "fCall":Lcom/android/internal/telephony/Call;
    :cond_5
    if-nez v16, :cond_0

    .line 2060
    const-string v1, "evdoConnectionToClccEntry : can\'t match CDMA call"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2046
    .restart local v13    # "fCall":Lcom/android/internal/telephony/Call;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evdoConnectionToClccEntry : multi CDMA call, mCdmaIsSecondCallActive ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_8

    .line 2048
    const-string v1, "evdoConnectionToClccEntry : earliest connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2049
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    :goto_5
    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 2051
    :cond_8
    const-string v1, "evdoConnectionToClccEntry : last connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2052
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_9

    const/4 v4, 0x0

    :goto_6
    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    goto :goto_6

    .line 2063
    .end local v13    # "fCall":Lcom/android/internal/telephony/Call;
    .end local v16    # "found":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_a
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_b

    .line 2064
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2067
    :cond_b
    const-string v1, "evdoConnectionToClccEntry : wrong phone type for ACTIVE connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2074
    :pswitch_1
    const/4 v4, 0x1

    .line 2075
    goto/16 :goto_0

    .line 2077
    :pswitch_2
    const/4 v4, 0x2

    .line 2078
    goto/16 :goto_0

    .line 2080
    :pswitch_3
    const/4 v4, 0x3

    .line 2081
    goto/16 :goto_0

    .line 2084
    :pswitch_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2085
    :cond_c
    const-string v1, "evdoConnectionToClccEntry : INCOMING with holding or active call, switch to WAITING"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2086
    const/4 v4, 0x5

    goto/16 :goto_0

    .line 2088
    :cond_d
    const/4 v4, 0x4

    .line 2090
    goto/16 :goto_0

    .line 2093
    :pswitch_5
    const/4 v4, 0x4

    .line 2094
    goto/16 :goto_0

    .line 2113
    .restart local v6    # "mpty":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2116
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2118
    :cond_10
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_1

    .line 2119
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 2120
    .local v11, "call":Lcom/android/internal/telephony/Call;
    if-eqz v11, :cond_1

    .line 2121
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v6

    goto/16 :goto_1

    .line 2125
    .end local v11    # "call":Lcom/android/internal/telephony/Call;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2031
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v4, 0x0

    .line 1799
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    .line 1800
    .local v3, "state":I
    const/4 v5, 0x0

    .line 1801
    .local v5, "mpty":Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 1802
    .local v8, "call":Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_0

    .line 1803
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v5

    .line 1806
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 1808
    .local v2, "direction":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1809
    .local v6, "number":Ljava/lang/String;
    const/4 v7, -0x1

    .line 1810
    .local v7, "type":I
    if-eqz v6, :cond_1

    .line 1811
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 1814
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1815
    return-void

    .end local v2    # "direction":I
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_2
    move v2, v4

    .line 1806
    goto :goto_0
.end method

.method private sendDelayMOCallEndMsg()V
    .locals 4

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 910
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "sendDelayMOCallEndMsg"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 912
    return-void
.end method

.method private setPrevCallState(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "callObj"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, "state":Lcom/android/internal/telephony/Call$State;
    if-nez p1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrevCallState: Call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private startUserBusyTone()V
    .locals 1

    .prologue
    .line 834
    const-string v0, "startUserBusyTone"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPlayBusyTone:Z

    .line 836
    return-void
.end method

.method private stopUserBusyTone()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 839
    const-string v0, "stopUserBusyTone"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 840
    iput-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mPlayBusyTone:Z

    .line 841
    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 842
    return-void
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateBtPhoneStateAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 337
    return-void
.end method

.method private updateCdmaHoldTime(Z)V
    .locals 7
    .param p1, "bCanSwapInDiffSim"    # Z

    .prologue
    .line 523
    const-string v5, "[updateCdmaHoldTime]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 524
    if-eqz p1, :cond_4

    .line 525
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    .line 526
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 527
    .local v1, "foregroundCall":Lcom/android/internal/telephony/Call;
    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 528
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 529
    .local v4, "listCall":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 530
    .local v0, "c":Lcom/android/internal/telephony/Call;
    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 532
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->generateCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 533
    .local v3, "l":Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 535
    .end local v3    # "l":Ljava/lang/Long;
    :cond_0
    const-string v5, "updateCdmaHoldTime: c is already in hash"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 536
    const-string v5, "call"

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 540
    .end local v0    # "c":Lcom/android/internal/telephony/Call;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "listCall":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->resetCdmaHoldTime()V

    .line 548
    .end local v1    # "foregroundCall":Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCdmaHoldTime: mHashCdmaHoldTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 549
    const-string v5, "[[updateCdmaHoldTime]]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 550
    return-void

    .line 543
    :cond_3
    const-string v5, "updateCdmaHoldTime: mHashCdmaHoldTime = null"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 546
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->resetCdmaHoldTime()V

    goto :goto_1
.end method

.method private updatePhoneStateChanged(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneStateChanged: numActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numHeld:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 920
    return-void
.end method


# virtual methods
.method chooseTheLatterCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;
    .locals 4
    .param p1, "c1"    # Lcom/android/internal/telephony/Call;
    .param p2, "c2"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .end local p1    # "c1":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object p1

    .restart local p1    # "c1":Lcom/android/internal/telephony/Call;
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .param p1, "callName"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 341
    const-string v0, "[dumpCallDetails]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 343
    if-eqz p2, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getConnections()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getPhone()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 347
    :cond_0
    const-string v0, "[[dumpCallDetails]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method dumpCurrentCallStatus()V
    .locals 6

    .prologue
    .line 351
    const-string v4, "[dumpCurrentCallStatus]"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, "listCall":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v3, 0x0

    .line 356
    .local v3, "listConn":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const-string v4, "dumpCurrentCallStatus: dump Foreground Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v2

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Foreground Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 359
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 360
    .local v0, "c":Lcom/android/internal/telephony/Call;
    const-string v4, "fg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 363
    .end local v0    # "c":Lcom/android/internal/telephony/Call;
    :cond_0
    const-string v4, "dumpCurrentCallStatus: dump Background Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Background Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 366
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 367
    .restart local v0    # "c":Lcom/android/internal/telephony/Call;
    const-string v4, "bg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 370
    .end local v0    # "c":Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v4, "dumpCurrentCallStatus: dump Ringing Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 371
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v2

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Ringing Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 373
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 374
    .restart local v0    # "c":Lcom/android/internal/telephony/Call;
    const-string v4, "rg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 377
    .end local v0    # "c":Lcom/android/internal/telephony/Call;
    :cond_2
    const-string v4, "[[dumpCurrentCallStatus]]"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 155
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 156
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 157
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 158
    const-string v2, "BluetoothPhoneService"

    const-string v3, "mAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    return-void

    .line 162
    :cond_1
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    .line 163
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BluetoothPhoneService:StartCall"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 167
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v2, p0, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 169
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 170
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 171
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 172
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 174
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 175
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    .line 176
    iput-boolean v4, p0, Lcom/android/phone/BluetoothPhoneService;->mDialingAdded:Z

    .line 179
    new-instance v2, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const-string v3, ""

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 191
    invoke-direct {p0, v6}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V

    .line 194
    invoke-direct {p0, v5}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 202
    const/4 v0, 0x6

    .line 204
    .local v0, "MAX_CONNECTIONS":I
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    .line 205
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    aput-boolean v4, v2, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 225
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Stopping Bluetooth BluetoothPhoneService Service"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Stopping Bluetooth BluetoothPhoneService Service: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService;->stopSelf()V

    .line 219
    :cond_0
    const-string v0, "BluetoothPhoneService"

    const-string v1, "BluetoothPhoneService started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

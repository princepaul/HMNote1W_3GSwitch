.class public Lcom/android/phone/HfaLogic;
.super Ljava/lang/Object;
.source "HfaLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HfaLogic$HfaLogicCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "com.android.action.CANCEL_HFA"

.field private static final ACTION_COMPLETE:Ljava/lang/String; = "com.android.action.COMPLETE_HFA"

.field private static final ACTION_ERROR:Ljava/lang/String; = "com.android.action.ERROR_HFA"

.field private static final ACTION_START:Ljava/lang/String; = "com.android.action.START_HFA"

.field private static final DEFAULT_RETRY_COUNT:I = 0x1

.field public static final NOT_WAITING:I = 0x0

.field public static final OTASP_FAILURE:I = 0x3

.field public static final OTASP_SUCCESS:I = 0x2

.field public static final OTASP_UNKNOWN:I = 0x0

.field public static final OTASP_USER_SKIPPED:I = 0x1

.field private static final SERVICE_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final WAITING_FOR_RADIO_OFF:I = 0x1

.field public static final WAITING_FOR_RADIO_ON:I = 0x2


# instance fields
.field private mCallback:Lcom/android/phone/HfaLogic$HfaLogicCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneMonitorState:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResponseIntent:Landroid/app/PendingIntent;

.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/phone/HfaLogic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/HfaLogic$HfaLogicCallback;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/phone/HfaLogic$HfaLogicCallback;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HfaLogic;->mPhoneMonitorState:I

    .line 210
    new-instance v0, Lcom/android/phone/HfaLogic$2;

    invoke-direct {v0, p0}, Lcom/android/phone/HfaLogic$2;-><init>(Lcom/android/phone/HfaLogic;)V

    iput-object v0, p0, Lcom/android/phone/HfaLogic;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/HfaLogic$HfaLogicCallback;

    iput-object v0, p0, Lcom/android/phone/HfaLogic;->mCallback:Lcom/android/phone/HfaLogic$HfaLogicCallback;

    .line 84
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/phone/HfaLogic;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/android/phone/HfaLogic;->mResponseIntent:Landroid/app/PendingIntent;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HfaLogic;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/HfaLogic;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/HfaLogic;->onHfaError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/HfaLogic;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/HfaLogic;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/HfaLogic;->onHfaSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/HfaLogic;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/HfaLogic;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/HfaLogic;->onServiceStateChange(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private bounceRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 136
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/phone/HfaLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    iput v3, p0, Lcom/android/phone/HfaLogic;->mPhoneMonitorState:I

    .line 139
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 140
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/HfaLogic;->onServiceStateChange(Landroid/telephony/ServiceState;)V

    .line 141
    return-void
.end method

.method private onHfaError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHfaError: call mCallBack.onError errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/HfaLogic;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p0, Lcom/android/phone/HfaLogic;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/HfaLogic;->mRetryCount:I

    .line 109
    iget v0, p0, Lcom/android/phone/HfaLogic;->mRetryCount:I

    if-ltz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    const-string v1, "onHfaError: retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/phone/HfaLogic;->startProvisioning()V

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    const-string v1, "onHfaError: Declare OTASP_FAILURE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HfaLogic;->mRetryCount:I

    .line 115
    invoke-direct {p0}, Lcom/android/phone/HfaLogic;->stopHfaIntentReceiver()V

    .line 116
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/phone/HfaLogic;->sendFinalResponse(ILjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/phone/HfaLogic;->mCallback:Lcom/android/phone/HfaLogic$HfaLogicCallback;

    invoke-interface {v0, p1}, Lcom/android/phone/HfaLogic$HfaLogicCallback;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHfaSuccess()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    const-string v1, "onHfaSuccess: NOT bouncing radio call onTotalSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/android/phone/HfaLogic;->stopHfaIntentReceiver()V

    .line 125
    invoke-direct {p0}, Lcom/android/phone/HfaLogic;->onTotalSuccess()V

    .line 126
    return-void
.end method

.method private onServiceStateChange(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 145
    .local v1, "radioIsOff":Z
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 147
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    sget-object v5, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Radio is on: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_2

    move v4, v2

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v4, p0, Lcom/android/phone/HfaLogic;->mPhoneMonitorState:I

    if-ne v4, v2, :cond_3

    .line 150
    if-eqz v1, :cond_0

    .line 151
    iput v7, p0, Lcom/android/phone/HfaLogic;->mPhoneMonitorState:I

    .line 152
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 162
    :cond_0
    :goto_2
    return-void

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "radioIsOff":Z
    :cond_1
    move v1, v3

    .line 144
    goto :goto_0

    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v1    # "radioIsOff":Z
    :cond_2
    move v4, v3

    .line 147
    goto :goto_1

    .line 154
    :cond_3
    iget v2, p0, Lcom/android/phone/HfaLogic;->mPhoneMonitorState:I

    if-ne v2, v7, :cond_0

    .line 155
    if-nez v1, :cond_0

    .line 156
    iput v3, p0, Lcom/android/phone/HfaLogic;->mPhoneMonitorState:I

    .line 157
    iget-object v2, p0, Lcom/android/phone/HfaLogic;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 159
    invoke-direct {p0}, Lcom/android/phone/HfaLogic;->onTotalSuccess()V

    goto :goto_2
.end method

.method private onTotalSuccess()V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    const-string v1, "onTotalSuccess: call mCallBack.onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HfaLogic;->sendFinalResponse(ILjava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/phone/HfaLogic;->mCallback:Lcom/android/phone/HfaLogic$HfaLogicCallback;

    invoke-interface {v0}, Lcom/android/phone/HfaLogic$HfaLogicCallback;->onSuccess()V

    .line 132
    return-void
.end method

.method private sendFinalResponse(ILjava/lang/String;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/phone/HfaLogic;->mResponseIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 193
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v1, "extraStuff":Landroid/content/Intent;
    const-string v2, "otasp_result_code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 197
    const-string v2, "otasp_error_code"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending OTASP confirmation with result code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/phone/HfaLogic;->mResponseIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/phone/HfaLogic;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1    # "extraStuff":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 204
    .restart local v1    # "extraStuff":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v2, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    const-string v3, "Pending Intent canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendHfaCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHfaCommand: command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/phone/HfaLogic;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method private startHfaIntentReceiver()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.action.COMPLETE_HFA"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.action.ERROR_HFA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v1, Lcom/android/phone/HfaLogic$1;

    invoke-direct {v1, p0}, Lcom/android/phone/HfaLogic$1;-><init>(Lcom/android/phone/HfaLogic;)V

    iput-object v1, p0, Lcom/android/phone/HfaLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    iget-object v1, p0, Lcom/android/phone/HfaLogic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/HfaLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void
.end method

.method private startProvisioning()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    const-string v1, "startProvisioning:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "com.android.action.START_HFA"

    invoke-direct {p0, v0}, Lcom/android/phone/HfaLogic;->sendHfaCommand(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private stopHfaIntentReceiver()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/phone/HfaLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/phone/HfaLogic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/HfaLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HfaLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/android/phone/HfaLogic;->TAG:Ljava/lang/String;

    const-string v1, "start:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/HfaLogic;->mRetryCount:I

    .line 91
    invoke-direct {p0}, Lcom/android/phone/HfaLogic;->startHfaIntentReceiver()V

    .line 92
    invoke-direct {p0}, Lcom/android/phone/HfaLogic;->startProvisioning()V

    .line 93
    return-void
.end method

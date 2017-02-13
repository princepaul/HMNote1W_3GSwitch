.class public Lcom/android/phone/CallRecordingServiceProxy;
.super Landroid/os/Handler;
.source "CallRecordingServiceProxy.java"

# interfaces
.implements Lcom/android/phone/CallModeler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_RETRY_MSG:I = 0x1

.field private static final MAX_SHORT_DELAY_RETRY_COUNT:I = 0x5

.field private static final RETRY_DELAY_LONG_MILLIS:I = 0x2710

.field private static final RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CallRecordingServiceProxy"


# instance fields
.field private mBindRetryCount:I

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallModeler:Lcom/android/phone/CallModeler;

.field private mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

.field private mCallRecorder:Lcom/android/phone/CallRecorder;

.field private mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mNotificationMgr:Lcom/android/phone/NotificationMgr;

.field private final mServiceLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;Lcom/android/phone/NotificationMgr;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callManager"    # Lcom/android/internal/telephony/CallManager;
    .param p3, "callModeler"    # Lcom/android/phone/CallModeler;
    .param p4, "notificationMgr"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mServiceLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mBindRetryCount:I

    .line 68
    new-instance v0, Lcom/android/phone/CallRecordingServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallRecordingServiceProxy$1;-><init>(Lcom/android/phone/CallRecordingServiceProxy;)V

    iput-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    .line 131
    iput-object p1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 133
    iput-object p3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 134
    iput-object p4, p0, Lcom/android/phone/CallRecordingServiceProxy;->mNotificationMgr:Lcom/android/phone/NotificationMgr;

    .line 135
    new-instance v0, Lcom/android/phone/CallRecorder;

    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/CallRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    .line 136
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallRecorder;->setCallRecordStateListener(Lcom/android/phone/CallRecorder$CallRecordStateListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallModeler;->addListener(Lcom/android/phone/CallModeler$Listener;)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/services/telephony/common/ICallRecordingService;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallRecordingServiceProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/CallRecordingServiceProxy;Lcom/android/services/telephony/common/ICallRecordingService;)Lcom/android/services/telephony/common/ICallRecordingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallRecordingServiceProxy;
    .param p1, "x1"    # Lcom/android/services/telephony/common/ICallRecordingService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/phone/NotificationMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallRecordingServiceProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mNotificationMgr:Lcom/android/phone/NotificationMgr;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallRecordingServiceProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallRecordingServiceProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallRecordingServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallRecordingServiceProxy;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->unBind()V

    return-void
.end method

.method private canRecordCallNow(ZLcom/android/phone/PhoneGlobals;)Z
    .locals 5
    .param p1, "byManual"    # Z
    .param p2, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 184
    if-eqz p1, :cond_0

    move v0, v1

    .line 185
    .local v0, "canNow":Z
    :goto_0
    invoke-static {p2}, Lcom/android/phone/TelephonyCapabilities;->supportsCallRecording(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallRecordingServiceProxy;->isCallRecording()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    :goto_1
    return v1

    .line 184
    .end local v0    # "canNow":Z
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .restart local v0    # "canNow":Z
    :cond_3
    move v1, v2

    .line 185
    goto :goto_1
.end method

.method private enqueueConnectRetry()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 277
    iget v3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mBindRetryCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    move v1, v2

    .line 278
    .local v1, "isLongDelay":Z
    :goto_0
    if-eqz v1, :cond_1

    const/16 v0, 0x2710

    .line 279
    .local v0, "delay":I
    :goto_1
    const-string v3, "CallRecordingServiceProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call recording in InCallUI Connection failed. Enqueuing delayed retry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retries("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/CallRecordingServiceProxy;->mBindRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallRecordingServiceProxy;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    return-void

    .line 277
    .end local v0    # "delay":I
    .end local v1    # "isLongDelay":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 278
    .restart local v1    # "isLongDelay":Z
    :cond_1
    const/16 v0, 0x3e8

    goto :goto_1
.end method

.method private getCallRecordingTime()J
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/CallRecorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private handleConnectRetry()V
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRecordingServiceProxy;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "CallRecordingServiceProxy"

    const-string v1, "Retry: already connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mBindRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 297
    const-string v0, "CallRecordingServiceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallRecordingServiceProxy;->mBindRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->setupServiceConnection()V

    .line 299
    iget v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mBindRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mBindRetryCount:I

    goto :goto_0

    .line 301
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->resetConnectRetryCount()V

    goto :goto_0
.end method

.method private resetConnectRetryCount()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mBindRetryCount:I

    .line 333
    return-void
.end method

.method private setupServiceConnection()V
    .locals 7

    .prologue
    .line 246
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/services/telephony/common/ICallRecordingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    iget-object v4, p0, Lcom/android/phone/CallRecordingServiceProxy;->mServiceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-nez v3, :cond_2

    .line 254
    new-instance v3, Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/phone/CallRecordingServiceProxy$InCallRecordingServiceConnection;-><init>(Lcom/android/phone/CallRecordingServiceProxy;Lcom/android/phone/CallRecordingServiceProxy$1;)V

    iput-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "failedConnection":Z
    const-string v3, "CallRecordingServiceProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "binding to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/CallRecordingServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    const-string v3, "CallRecordingServiceProxy"

    const-string v5, "unable to bind CallRecordingService."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x1

    .line 261
    :cond_0
    if-eqz v1, :cond_1

    .line 262
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 263
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->enqueueConnectRetry()V

    .line 270
    .end local v1    # "failedConnection":Z
    :goto_0
    monitor-exit v4

    .line 271
    return-void

    .line 265
    .restart local v1    # "failedConnection":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->resetConnectRetryCount()V

    goto :goto_0

    .line 270
    .end local v1    # "failedConnection":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 268
    :cond_2
    :try_start_1
    const-string v3, "CallRecordingServiceProxy"

    const-string v5, "Service connection to in call recording service already started."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    if-eqz v0, :cond_0

    .line 307
    iput-object v2, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    .line 308
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 309
    const-string v0, "CallRecordingServiceProxy"

    const-string v1, "unBind call recording service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iput-object v2, p0, Lcom/android/phone/CallRecordingServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 312
    return-void
.end method


# virtual methods
.method public checkCallRecordingState()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    if-nez v1, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->enqueueConnectRetry()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallRecordingServiceProxy;->isCallRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    const-string v1, "CallRecordingServiceProxy"

    const-string v2, "checkCallRecordingState done from service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->getCallRecordingTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/services/telephony/common/ICallRecordingService;->onCallRecordingStateChecked(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkRecordable(ZLcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Connection;)Z
    .locals 8
    .param p1, "byManual"    # Z
    .param p2, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p3, "lastConnection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallRecordingServiceProxy;->canRecordCallNow(ZLcom/android/phone/PhoneGlobals;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    const/4 v2, 0x0

    .line 195
    .local v2, "canStartRecord":Z
    if-eqz p1, :cond_2

    .line 196
    const/4 v2, 0x1

    goto :goto_0

    .line 198
    :cond_2
    invoke-static {p2}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    invoke-static {p2}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForAllOrCustom(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    const/4 v2, 0x1

    goto :goto_0

    .line 203
    :cond_3
    if-eqz p3, :cond_0

    .line 204
    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "number":Ljava/lang/String;
    invoke-static {p2, v5}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 207
    const/4 v2, 0x1

    goto :goto_0

    .line 209
    :cond_4
    const/4 v4, 0x0

    .line 211
    .local v4, "isYellowPage":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v6, p3}, Lcom/android/phone/CallModeler;->getCallFromExistMap(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 212
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_5

    .line 213
    iget-object v6, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    if-eqz v6, :cond_7

    .line 214
    iget-object v6, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/services/telephony/common/ICallRecordingService;->isYellowPage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 224
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_5
    :goto_1
    invoke-static {p2}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForUnknown(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 225
    invoke-static {p2, p3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 227
    .local v1, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_6

    iget-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v6, :cond_6

    if-nez v4, :cond_6

    .line 230
    const/4 v2, 0x1

    .line 233
    .end local v1    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    :cond_6
    invoke-static {p2}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForYellowPage(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 235
    const/4 v2, 0x1

    goto :goto_0

    .line 216
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_7
    :try_start_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    if-eqz v6, :cond_5

    .line 218
    const/4 v4, 0x1

    goto :goto_1

    .line 221
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "CallRecordingServiceProxy"

    const-string v7, "checkRecordable isYellowPage error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->handleConnectRetry()V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isCallRecording()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/CallRecorder;->isCallRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCrssSuppServiceNumberUpdate(ILjava/lang/String;)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 393
    return-void
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    if-nez v0, :cond_1

    .line 339
    const-string v0, "CallRecordingServiceProxy"

    const-string v2, "CallRecordingService not connected.  Enqueue disconnect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->setupServiceConnection()V

    .line 341
    monitor-exit v1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    const-string v0, "CallRecordingServiceProxy"

    const-string v1, "onDisconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/phone/CallRecordingServiceProxy;->isCallRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/CallRecorder;->stopCallRecord()V

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->unBind()V

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 355
    const-string v0, "CallRecordingServiceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->resetConnectRetryCount()V

    .line 358
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    if-nez v0, :cond_0

    .line 360
    const-string v0, "CallRecordingServiceProxy"

    const-string v2, "CallRecordingService not connected.  Enqueue incoming."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->setupServiceConnection()V

    .line 362
    monitor-exit v1

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/telephony/Connection$PostDialState;
    .param p2, "callId"    # I
    .param p3, "remainingChars"    # Ljava/lang/String;
    .param p4, "c"    # C

    .prologue
    .line 385
    return-void
.end method

.method public onSuppServiceFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 389
    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const-string v0, "CallRecordingServiceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;

    if-nez v0, :cond_1

    .line 372
    const-string v0, "CallRecordingServiceProxy"

    const-string v2, "CallRecordingService not connected.  Enqueue update."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->setupServiceConnection()V

    .line 374
    monitor-exit v1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/phone/CallRecordingServiceProxy;->unBind()V

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startCallRecording()V
    .locals 5

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "callerNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, "callerNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 144
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    invoke-virtual {v4, v0}, Lcom/android/phone/CallRecorder;->getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 148
    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    invoke-virtual {v4, v0}, Lcom/android/phone/CallRecorder;->getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    invoke-virtual {v4, v1, v2}, Lcom/android/phone/CallRecorder;->startCallRecord(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 152
    return-void
.end method

.method public stopCallRecording()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/phone/CallRecordingServiceProxy;->isCallRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/phone/CallRecordingServiceProxy;->mCallRecorder:Lcom/android/phone/CallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/CallRecorder;->stopCallRecord()V

    .line 158
    :cond_0
    return-void
.end method

.method public updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/services/telephony/common/DualtalkCallInfo;

    .prologue
    .line 397
    return-void
.end method

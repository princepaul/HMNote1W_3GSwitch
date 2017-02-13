.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$VbirtStateChangeReceiver;,
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static final ANTI_STRANGER_LENGTH:I = 0x1388

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Ringer"

.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final PLAY_RING_ONCE:I = 0x1

.field private static final STOP_RING:I = 0x3

.field public static final VBIRT_MODE_CHANGE_ACTION:Ljava/lang/String; = "vbirtchange"

.field private static final VIBRATE_LENGTH:I = 0x3e8

.field private static sInstance:Lcom/android/phone/Ringer;

.field private static sIsRingingAndVolumnZero:Z


# instance fields
.field private mAntiStranger:Z

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field mDefaultRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field volatile mIsNowVibrating:Z

.field private mMute:Z

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Lcom/android/phone/Ringtone;

.field private mVbirtStateChangeReceiver:Lcom/android/phone/Ringer$VbirtStateChangeReceiver;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/Ringer;->sIsRingingAndVolumnZero:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v1, p0, Lcom/android/phone/Ringer;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 99
    iput-object v1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 111
    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 112
    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 119
    iput-boolean v0, p0, Lcom/android/phone/Ringer;->mAntiStranger:Z

    .line 468
    iput-boolean v0, p0, Lcom/android/phone/Ringer;->mMute:Z

    .line 475
    new-instance v0, Lcom/android/phone/Ringer$VbirtStateChangeReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$VbirtStateChangeReceiver;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVbirtStateChangeReceiver:Lcom/android/phone/Ringer$VbirtStateChangeReceiver;

    .line 137
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/phone/Ringer;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 139
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 143
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 149
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->initRingerMtk(Landroid/content/Context;)V

    .line 150
    return-void

    .line 146
    :cond_0
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Ringer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/Ringer;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/phone/Ringer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/Ringer;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static init(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)Lcom/android/phone/Ringer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;

    .prologue
    .line 125
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    .line 131
    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 129
    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initRingerMtk(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 479
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "vbirtchange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer;->mVbirtStateChangeReceiver:Lcom/android/phone/Ringer$VbirtStateChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    return-void
.end method

.method private isRingtonePlaying()Z
    .locals 2

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVibrating()Z
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 460
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 399
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 453
    :cond_0
    return-void
.end method

.method private shouldRing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 507
    const-string v1, "Ringer"

    const-string v2, "ring(), with null RingtoneUri"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/Ringer;->mMute:Z

    if-eqz v1, :cond_1

    .line 511
    const-string v1, "Ringer"

    const-string v2, "ring(), but user mute, do nothing"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_0
    return v0

    .line 515
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getAudioControlState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 516
    const-string v1, "Ringer"

    const-string v2, "ring(), but AUDIO_OFFHOOK, do nothing"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3

    .prologue
    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer;->mVbirtStateChangeReceiver:Lcom/android/phone/Ringer$VbirtStateChangeReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Ringer"

    const-string v2, "IllegalArgumentException happened in finalized()."

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getCustomRingToneUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isNowVibrating()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsNowVibrating:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ring()V
    .locals 7

    .prologue
    const-wide/16 v1, 0x0

    .line 209
    const-string v3, "ring()..."

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 211
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/Ringer;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->showBluetoothIndication()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-interface {v3, v4, v5}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v3, :cond_0

    .line 229
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 230
    new-instance v3, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v3, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 231
    const-string v3, "- starting vibrator..."

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v3}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 237
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 238
    const-string v1, "skipping ring because volume is zero"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 243
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :goto_1
    return-void

    .line 216
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x1

    const v5, 0xffffff

    invoke-interface {v3, v4, v5}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v3

    goto :goto_0

    .line 246
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 247
    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_4

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 249
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/phone/Ringer;->mAntiStranger:Z

    if-eqz v5, :cond_3

    const-wide/16 v1, 0x1388

    :cond_3
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    :goto_2
    monitor-exit p0

    goto :goto_1

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 254
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_4
    :try_start_4
    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_5

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delaying ring by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 266
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public setAntiStranger(Z)V
    .locals 0
    .param p1, "antiStranger"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/phone/Ringer;->mAntiStranger:Z

    .line 457
    return-void
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 385
    return-void
.end method

.method setDefaultRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/phone/Ringer;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 389
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 390
    return-void
.end method

.method setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/android/phone/Ringer;->mMute:Z

    .line 472
    return-void
.end method

.method shouldVibrate()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method stopRing()V
    .locals 4

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    const-string v1, "stopRing()..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 292
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Lcom/android/phone/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 298
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Lcom/android/phone/Ringtone;

    .line 299
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 300
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 308
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v1}, Lmiui/util/HapticFeedbackUtil;->stop()V

    .line 319
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mIsNowVibrating:Z

    .line 320
    monitor-exit p0

    .line 321
    return-void

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-eqz v1, :cond_2

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 305
    :cond_2
    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 317
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 286
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 160
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method

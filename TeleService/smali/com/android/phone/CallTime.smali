.class public Lcom/android/phone/CallTime;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTime$CallTimeHandler;,
        Lcom/android/phone/CallTime$CallTimeReceiver;,
        Lcom/android/phone/CallTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallTime$OnTickListener;
    }
.end annotation


# static fields
.field private static final ACTION_REMINDER:Ljava/lang/String; = "calltime_minute_reminder"

.field private static final CALL_TIME_UPDATE:I = 0x6f

.field private static final DBG:Z = true

.field private static final INTERVAL_TIME:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/CallTime"

.field private static final MILLISECOND_TO_SECOND:I = 0x3e8

.field private static final MINUTE_TIME:I = 0x3c

.field private static final MINUTE_TO_MS:I = 0xea60

.field static final PROFILE:Z = true

.field private static final PROFILE_STATE_NONE:I = 0x0

.field private static final PROFILE_STATE_READY:I = 0x1

.field private static final PROFILE_STATE_RUNNING:I = 0x2

.field private static sCallTimeHanderThreadLooper:Landroid/os/Looper;

.field private static sProfileState:I

.field private static sSharePref:Landroid/content/SharedPreferences;


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mCall:Lcom/android/internal/telephony/Call;

.field private mCtx:Landroid/content/Context;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallTime$OnTickListener;

.field private mReceiver:Lcom/android/phone/CallTime$CallTimeReceiver;

.field private mReminderPendingIntent:Landroid/app/PendingIntent;

.field private mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

.field private mTimerRunning:Z

.field private mTimerThreadHandler:Lcom/android/phone/CallTime$CallTimeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 324
    sput-object v1, Lcom/android/phone/CallTime;->sSharePref:Landroid/content/SharedPreferences;

    .line 333
    sput-object v1, Lcom/android/phone/CallTime;->sCallTimeHanderThreadLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 327
    iput-object v0, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    .line 328
    iput-object v0, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    .line 477
    invoke-direct {p0}, Lcom/android/phone/CallTime;->initCallTime()V

    .line 478
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallTime$OnTickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/CallTime$OnTickListener;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 327
    iput-object v0, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    .line 328
    iput-object v0, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    .line 106
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 107
    new-instance v0, Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    .line 110
    invoke-direct {p0}, Lcom/android/phone/CallTime;->initCallTime()V

    .line 111
    return-void
.end method

.method public static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .locals 12
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 203
    invoke-static {p0}, Lcom/android/phone/CallTime;->getCallDurationMTK(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 204
    .local v3, "duration":J
    const-wide/16 v10, -0x1

    cmp-long v10, v3, v10

    if-eqz v10, :cond_0

    move-wide v5, v3

    .line 232
    .end local v3    # "duration":J
    .local v5, "duration":J
    :goto_0
    return-wide v5

    .line 207
    .end local v5    # "duration":J
    .restart local v3    # "duration":J
    :cond_0
    const-wide/16 v3, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 211
    .local v1, "connections":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 214
    .local v2, "count":I
    const/4 v10, 0x1

    if-ne v2, v10, :cond_2

    .line 215
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 218
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    .line 231
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateElapsedTime, count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", duration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    move-wide v5, v3

    .line 232
    .end local v3    # "duration":J
    .restart local v5    # "duration":J
    goto :goto_0

    .line 220
    .end local v5    # "duration":J
    .restart local v3    # "duration":J
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_1

    .line 221
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 224
    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v8

    .line 225
    .local v8, "t":J
    cmp-long v10, v8, v3

    if-lez v10, :cond_3

    .line 226
    move-wide v3, v8

    .line 220
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private static getCallDurationMTK(Lcom/android/internal/telephony/Call;)J
    .locals 2
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 472
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private initCallTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 336
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    .line 337
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    .line 338
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "calltime_minute_reminder"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    .line 339
    new-instance v2, Lcom/android/phone/CallTime$CallTimeReceiver;

    invoke-direct {v2, p0}, Lcom/android/phone/CallTime$CallTimeReceiver;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v2, p0, Lcom/android/phone/CallTime;->mReceiver:Lcom/android/phone/CallTime$CallTimeReceiver;

    .line 340
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 341
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "calltime_minute_reminder"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallTime;->mReceiver:Lcom/android/phone/CallTime$CallTimeReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    const-class v3, Lcom/android/phone/CallTime;

    monitor-enter v3

    .line 345
    :try_start_0
    sget-object v2, Lcom/android/phone/CallTime;->sCallTimeHanderThreadLooper:Landroid/os/Looper;

    if-nez v2, :cond_0

    .line 346
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CallTimeHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 348
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallTime;->sCallTimeHanderThreadLooper:Landroid/os/Looper;

    .line 350
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    new-instance v2, Lcom/android/phone/CallTime$CallTimeHandler;

    sget-object v3, Lcom/android/phone/CallTime;->sCallTimeHanderThreadLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallTime$CallTimeHandler;-><init>(Lcom/android/phone/CallTime;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/phone/CallTime;->mTimerThreadHandler:Lcom/android/phone/CallTime$CallTimeHandler;

    .line 352
    return-void

    .line 350
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "PHONE/CallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method static setTraceReady()V
    .locals 2

    .prologue
    .line 261
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 263
    const-string v0, "trace ready..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current trace state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateElapsedTime(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    if-eqz v2, :cond_0

    .line 192
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 193
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(J)V

    .line 195
    .end local v0    # "duration":J
    :cond_0
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "cancelTimer()..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/CallTime;->mTimerThreadHandler:Lcom/android/phone/CallTime$CallTimeHandler;

    iget-object v1, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime$CallTimeHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTime;->removeMessages(I)V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->stopReminder()V

    .line 188
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 359
    :pswitch_0
    const-string v0, "receive CALL_TIME_UPDATE message"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->stopTrace()V

    .line 363
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 364
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method isTraceReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 270
    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTraceRunning()Z
    .locals 2

    .prologue
    .line 274
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method periodicUpdateTimer()V
    .locals 9

    .prologue
    .line 143
    iget-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    if-nez v5, :cond_3

    .line 144
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 147
    .local v2, "now":J
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-wide v7, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long v0, v5, v7

    .line 149
    .local v0, "nextReport":J
    :goto_0
    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    .line 150
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long/2addr v0, v5

    goto :goto_0

    .line 153
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "periodicUpdateTimer() @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lcom/android/phone/CallTime;->mTimerThreadHandler:Lcom/android/phone/CallTime$CallTimeHandler;

    iget-object v6, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/phone/CallTime$CallTimeHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 159
    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 161
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 164
    .local v4, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 165
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v5}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    .line 169
    .end local v4    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->startTrace()V

    .line 175
    .end local v0    # "nextReport":J
    .end local v2    # "now":J
    :cond_2
    :goto_1
    return-void

    .line 173
    :cond_3
    const-string v5, "periodicUpdateTimer: timer already running, bail"

    invoke-static {v5}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method reset()V
    .locals 4

    .prologue
    .line 138
    const-string v0, "reset()..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 140
    return-void
.end method

.method setActiveCallMode(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveCallMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    .line 126
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mInterval:J

    .line 128
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallTime;->sSharePref:Landroid/content/SharedPreferences;

    .line 130
    sget-object v0, Lcom/android/phone/CallTime;->sSharePref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "PHONE/CallTime"

    const-string v1, "setActiveCallMode: not find \'com.android.phone_preferences\'"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallTime;->startReminder(J)V

    .line 135
    return-void
.end method

.method public setCallTimeListener(Lcom/android/phone/CallTime$OnTickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/CallTime$OnTickListener;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 373
    return-void
.end method

.method startReminder(J)V
    .locals 9
    .param p1, "duration"    # J

    .prologue
    const-wide/32 v7, 0xea60

    const-wide/32 v5, 0xc350

    .line 378
    sget-object v3, Lcom/android/phone/CallTime;->sSharePref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 383
    rem-long v0, p1, v7

    .line 384
    .local v0, "rem":J
    cmp-long v3, v0, v5

    if-gez v3, :cond_2

    .line 385
    sub-long p1, v5, v0

    .line 390
    :goto_1
    sget-object v3, Lcom/android/phone/CallTime;->sSharePref:Landroid/content/SharedPreferences;

    const-string v4, "minute_reminder_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 391
    .local v2, "tReminder":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRemider, tReminder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 392
    if-eqz v2, :cond_0

    .line 395
    iget-object v3, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, p1

    iget-object v7, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 387
    .end local v2    # "tReminder":Z
    :cond_2
    sub-long v3, v7, v0

    add-long p1, v3, v5

    goto :goto_1
.end method

.method startTrace()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 278
    sget v4, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_0
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 282
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const-string v7, "phoneTrace"

    invoke-virtual {v4, v7, v6}, Lcom/android/phone/PhoneGlobals;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 283
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 286
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "callstate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "baseName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".data"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "dataFile":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".key"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "keyFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 295
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 297
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 300
    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/android/phone/CallTime;->sProfileState:I

    .line 301
    const-string v4, "startTrace"

    invoke-static {v4}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 302
    const/high16 v4, 0x800000

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 304
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v1    # "dataFile":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "keyFile":Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v4, v6

    .line 278
    goto/16 :goto_0
.end method

.method stopReminder()V
    .locals 2

    .prologue
    .line 403
    const-string v0, "stopReminder"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 405
    return-void
.end method

.method stopTrace()V
    .locals 2

    .prologue
    .line 308
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 309
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 310
    const-string v0, "stopTrace"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 314
    :cond_0
    return-void
.end method

.method updateRminder()V
    .locals 8

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 411
    .local v1, "state":Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRminder, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 412
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 413
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 414
    .local v0, "notifier":Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->onTimeToReminder()V

    .line 417
    iget-object v2, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 422
    .end local v0    # "notifier":Lcom/android/phone/CallNotifier;
    .end local v1    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_0
    return-void
.end method

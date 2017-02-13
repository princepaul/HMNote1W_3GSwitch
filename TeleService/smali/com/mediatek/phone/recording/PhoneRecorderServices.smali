.class public Lcom/mediatek/phone/recording/PhoneRecorderServices;
.super Landroid/app/Service;
.source "PhoneRecorderServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RecorderServices"

.field private static final PHONE_VOICE_RECORD_STATE_CHANGE_MESSAGE:Ljava/lang/String; = "com.android.phone.VoiceRecorder.STATE"

.field private static final REQUEST_QUIT:I = -0x1

.field private static final REQUEST_START_RECORDING:I = 0x1

.field private static final REQUEST_STOP_RECORDING:I = 0x2


# instance fields
.field private final mBinder:Lcom/mediatek/phone/recording/IPhoneRecorder$Stub;

.field private mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

.field private mPhoneRecorderStateListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

.field private mPhoneRecorderStatus:I

.field private mRecordHandler:Landroid/os/Handler;

.field mStateListener:Lcom/mediatek/phone/recording/IPhoneRecordStateListener;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorderStatus:I

    .line 100
    new-instance v0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;-><init>(Lcom/mediatek/phone/recording/PhoneRecorderServices;)V

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorderStateListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    .line 135
    new-instance v0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;-><init>(Lcom/mediatek/phone/recording/PhoneRecorderServices;)V

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mBinder:Lcom/mediatek/phone/recording/IPhoneRecorder$Stub;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/recording/PhoneRecorderServices;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/recording/PhoneRecorderServices;

    .prologue
    .line 48
    iget v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorderStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/phone/recording/PhoneRecorderServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/recording/PhoneRecorderServices;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorderStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/recording/PhoneRecorderServices;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mRecordHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Lcom/mediatek/phone/recording/PhoneRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/recording/PhoneRecorderServices;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/phone/recording/PhoneRecorderServices;Lcom/mediatek/phone/recording/PhoneRecorder;)Lcom/mediatek/phone/recording/PhoneRecorder;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/recording/PhoneRecorderServices;
    .param p1, "x1"    # Lcom/mediatek/phone/recording/PhoneRecorder;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/recording/PhoneRecorderServices;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mWorkerThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "RecorderServices"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string v0, "RecorderServices"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/mediatek/phone/recording/PhoneRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    .line 65
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorderStateListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/recording/PhoneRecorder;->setOnStateChangedListener(Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;)V

    .line 68
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecordWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mWorkerThread:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;

    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;-><init>(Lcom/mediatek/phone/recording/PhoneRecorderServices;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mRecordHandler:Landroid/os/Handler;

    .line 71
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mBinder:Lcom/mediatek/phone/recording/IPhoneRecorder$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    const-string v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 88
    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const-string v0, "RecorderServices"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

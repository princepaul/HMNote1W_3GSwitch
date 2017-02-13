.class Lcom/android/phone/AudioRouter;
.super Ljava/lang/Object;
.source "AudioRouter.java"

# interfaces
.implements Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;
.implements Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AudioRouter$AudioModeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final OFF:Z = false

.field private static final ON:Z = true

.field private static final VDBG:Z


# instance fields
.field private mAudioMode:I

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/AudioRouter$AudioModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousMode:I

.field private mSupportedModes:I

.field private final mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/phone/AudioRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;Lcom/android/phone/WiredHeadsetManager;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;
    .param p3, "wiredHeadsetManager"    # Lcom/android/phone/WiredHeadsetManager;
    .param p4, "callManager"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    .line 59
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    .line 60
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mPreviousMode:I

    .line 61
    sget v0, Lcom/android/services/telephony/common/AudioMode;->ALL_MODES:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    .line 65
    iput-object p1, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 67
    iput-object p3, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    .line 68
    iput-object p4, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 70
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->init()V

    .line 71
    return-void
.end method

.method private calculateModeFromCurrentState()I
    .locals 3

    .prologue
    .line 327
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    .line 330
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    .line 338
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateModeFromCurrentState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 340
    return v0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v1}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    goto :goto_0
.end method

.method private calculateSupportedModes()I
    .locals 2

    .prologue
    .line 386
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 388
    .local v0, "supportedModes":I
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v1}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    or-int/2addr v0, v1

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    or-int/2addr v0, v1

    .line 398
    :cond_0
    return v0

    .line 391
    :cond_1
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/BluetoothManager;->addBluetoothIndicatorListener(Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/WiredHeadsetManager;->addWiredHeadsetListener(Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;)V

    .line 320
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-static {v2}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-static {v2}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/AudioRouter$AudioModeListener;

    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-virtual {p0}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/phone/AudioRouter$AudioModeListener;->onAudioModeChange(IZ)V

    .line 407
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/AudioRouter$AudioModeListener;

    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-interface {v1, v2}, Lcom/android/phone/AudioRouter$AudioModeListener;->onSupportedAudioModeChange(I)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    return-void
.end method

.method private selectWiredOrEarpiece(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 274
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    if-ne p1, v0, :cond_0

    .line 275
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    iget v1, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    and-int p1, v0, v1

    .line 277
    if-nez p1, :cond_0

    .line 278
    sget-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "One of wired headset or earpiece should always be valid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget p1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    .line 284
    :cond_0
    return p1
.end method

.method private turnOnOffBluetooth(Z)Z
    .locals 3
    .param p1, "onOff"    # Z

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    .line 295
    .local v0, "isAlreadyOn":Z
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->connectBluetoothAudio()V

    .line 305
    .end local v0    # "isAlreadyOn":Z
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 297
    .restart local v0    # "isAlreadyOn":Z
    :cond_1
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->disconnectBluetoothAudio()V

    goto :goto_0

    .line 300
    .end local v0    # "isAlreadyOn":Z
    :cond_2
    if-eqz p1, :cond_0

    .line 301
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Asking to turn on bluetooth, but there is no bluetooth availabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private turnOnOffSpeaker(Z)V
    .locals 2
    .param p1, "onOff"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 315
    :cond_0
    return-void
.end method

.method private updateAudioModeTo(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 347
    iget v1, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    .line 349
    .local v1, "oldSupportedModes":I
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v2

    iput v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    .line 355
    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 356
    sget-object v2, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting audio mode to an unsupported mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", supported ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-static {v4}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    .line 364
    .local v0, "doNotify":Z
    :goto_0
    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    if-eq v2, p1, :cond_1

    .line 365
    sget-object v2, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio mode changing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x1

    .line 369
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 373
    :cond_1
    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    iput v2, p0, Lcom/android/phone/AudioRouter;->mPreviousMode:I

    .line 374
    iput p1, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    .line 376
    if-eqz v0, :cond_2

    .line 377
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->notifyListeners()V

    .line 379
    :cond_2
    return-void

    .line 361
    .end local v0    # "doNotify":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAudioModeListener(Lcom/android/phone/AudioRouter$AudioModeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/phone/AudioRouter$AudioModeListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-virtual {p0}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/phone/AudioRouter$AudioModeListener;->onAudioModeChange(IZ)V

    .line 103
    iget v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-interface {p1, v0}, Lcom/android/phone/AudioRouter$AudioModeListener;->onSupportedAudioModeChange(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    return v0
.end method

.method public getSupportedAudioModes()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    return v0
.end method

.method public onBluetoothIndicationChange(ZLcom/android/phone/BluetoothManager;)V
    .locals 2
    .param p1, "isConnected"    # Z
    .param p2, "btManager"    # Lcom/android/phone/BluetoothManager;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothIndicationChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateModeFromCurrentState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    .line 202
    return-void
.end method

.method public onMuteChange(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMuteChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->notifyListeners()V

    .line 190
    return-void
.end method

.method public onWiredHeadsetConnection(Z)V
    .locals 7
    .param p1, "pluggedIn"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWireHeadsetConnection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_2

    move v1, v3

    .line 222
    .local v1, "isPhoneInUse":Z
    :goto_0
    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    .line 228
    .local v2, "newMode":I
    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    sget v6, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v5, v6, :cond_1

    .line 231
    if-eqz v1, :cond_5

    .line 232
    if-nez p1, :cond_4

    .line 235
    iget-object v4, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 236
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setSpeaker(Z)V

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 243
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 262
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    .line 263
    return-void

    .end local v1    # "isPhoneInUse":Z
    .end local v2    # "newMode":I
    :cond_2
    move v1, v4

    .line 219
    goto :goto_0

    .line 246
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    .restart local v1    # "isPhoneInUse":Z
    .restart local v2    # "newMode":I
    :cond_3
    sget v2, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    goto :goto_1

    .line 251
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 253
    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    goto :goto_1

    .line 258
    :cond_5
    if-eqz p1, :cond_6

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    :goto_2
    goto :goto_1

    :cond_6
    sget v2, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    goto :goto_2
.end method

.method public removeAudioModeListener(Lcom/android/phone/AudioRouter$AudioModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/AudioRouter$AudioModeListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public setAudioMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 124
    .local v0, "error":Z
    invoke-direct {p0, p1}, Lcom/android/phone/AudioRouter;->selectWiredOrEarpiece(I)I

    move-result p1

    .line 127
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v1

    or-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 128
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asking to set to a mode that is unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 132
    :cond_0
    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, p1, :cond_3

    .line 133
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    .line 134
    invoke-direct {p0, v4}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    .line 164
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateModeFromCurrentState()I

    move-result p1

    .line 166
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an error in setting new audio mode. Resetting mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    goto :goto_0

    .line 136
    :cond_3
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v1, p1, :cond_5

    .line 137
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    .line 146
    invoke-direct {p0, v4}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    const/4 v0, 0x1

    goto :goto_1

    .line 150
    :cond_4
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asking to turn on bluetooth when no bluetooth available. supportedModes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x1

    goto :goto_1

    .line 156
    :cond_5
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-eq v1, p1, :cond_6

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-ne v1, p1, :cond_7

    .line 157
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    .line 158
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    goto :goto_1

    .line 161
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setSpeaker(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeaker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 180
    if-eqz p1, :cond_0

    .line 181
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {p0, v0}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {p0, v0}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V

    goto :goto_0
.end method

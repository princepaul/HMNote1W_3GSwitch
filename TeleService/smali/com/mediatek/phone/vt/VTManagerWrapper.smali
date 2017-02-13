.class public Lcom/mediatek/phone/vt/VTManagerWrapper;
.super Ljava/lang/Object;
.source "VTManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTManagerWrapper"

.field private static final VT_MEDIA_ERROR_VIDEO_FAIL:I = 0x1

.field private static final VT_MEDIA_OCCUPIED:I = 0x1

.field private static final VT_MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field private static final VT_MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field private static final VT_MEDIA_RECORDER_NO_I_FRAME:I = 0x7fff

.field public static final VT_RESULT_PEER_SNAPSHOT_FAIL:I = 0x7f

.field public static final VT_RESULT_PEER_SNAPSHOT_FAIL_SDACRD_NOT_ENOUGH:I = 0x83

.field public static final VT_RESULT_PEER_SNAPSHOT_FAIL_SDCARD_NULL:I = 0x82

.field public static final VT_RESULT_PEER_SNAPSHOT_OK:I = 0x7e

.field public static final VT_RESULT_SWITCHCAMERA_FAIL:I = 0x81

.field public static final VT_RESULT_SWITCHCAMERA_OK:I = 0x80

.field private static final VT_TAKE_PEER_PHOTO_DISK_MIN_SIZE:I = 0xf4240

.field private static final sInstance:Lcom/mediatek/phone/vt/VTManagerWrapper;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mHasMediaRecordError:Z

.field private mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

.field private mSurfaceReady:Z

.field private mVTManager:Lcom/mediatek/vt/VTManager;

.field private mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-direct {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;-><init>()V

    sput-object v0, Lcom/mediatek/phone/vt/VTManagerWrapper;->sInstance:Lcom/mediatek/phone/vt/VTManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mSurfaceReady:Z

    .line 182
    new-instance v0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTManagerWrapper$1;-><init>(Lcom/mediatek/phone/vt/VTManagerWrapper;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;

    .line 365
    new-instance v0, Lcom/android/services/telephony/common/VTManagerParams;

    invoke-direct {v0}, Lcom/android/services/telephony/common/VTManagerParams;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    .line 43
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTManagerWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTManagerWrapper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/phone/vt/VTManagerWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTManagerWrapper;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTManagerWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/vt/VTManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTManagerWrapper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/phone/vt/VTManagerWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/vt/VTManagerWrapper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/mediatek/phone/vt/VTManagerWrapper;->sInstance:Lcom/mediatek/phone/vt/VTManagerWrapper;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 406
    const-string v0, "VTManagerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method private pushVTManagerParams()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    :cond_0
    const-string v0, "pushVTManagerParams() error --> called when VTManager is CLOSE or VT Call is IDLE."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_1
    const-string v0, "pushVTManagerParams()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->updateVTManagerParams()V

    .line 398
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    invoke-interface {v0, v1}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->pushVTManagerParams(Lcom/android/services/telephony/common/VTManagerParams;)V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 403
    return-void
.end method

.method private updateVTManagerParams()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getCameraSensorCount()I

    move-result v1

    iput v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mCameraSensorCount:I

    .line 368
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v1

    iput v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mVideoQuality:I

    .line 369
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecBrightness:Z

    .line 370
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncBrightness:Z

    .line 371
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecZoom:Z

    .line 372
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncZoom:Z

    .line 373
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecContrast:Z

    .line 374
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncContrast:Z

    .line 375
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->isSupportNightMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mIsSupportNightMode:Z

    .line 376
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getNightMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mIsNightModeOn:Z

    .line 377
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mColorEffect:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManagerParams:Lcom/android/services/telephony/common/VTManagerParams;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/services/telephony/common/VTManagerParams;->mSupportedColorEffects:Ljava/util/List;

    .line 379
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTManagerParams / mVTManager.getColorEffect(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTManagerParams / mVTManager.getSupportedColorEffects(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 385
    :cond_1
    return-void
.end method


# virtual methods
.method public decBrightness()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    :cond_0
    const-string v0, "decBrightness() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_1
    const-string v0, "decBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 553
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public decContrast()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    :cond_0
    const-string v0, "decContrast() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 574
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v0, "decContrast()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 573
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public decZoom()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    :cond_0
    const-string v0, "decZoom() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_1
    const-string v0, "decZoom()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 523
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getSimId()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/mediatek/vt/VTManager$State;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    return-object v0
.end method

.method public getVTManager()Lcom/mediatek/vt/VTManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    return-object v0
.end method

.method public handleVTStatusInfo(Landroid/os/AsyncResult;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 6
    .param p1, "asyncResult"    # Landroid/os/AsyncResult;
    .param p2, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "isDisconent":Z
    if-eqz p1, :cond_0

    .line 132
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 133
    .local v1, "result":I
    if-eqz v1, :cond_1

    move v0, v3

    .line 134
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVTStatusInfo, result="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 137
    .end local v1    # "result":I
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v3, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTStatusActive:Z

    .line 139
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p2, v2, :cond_3

    .line 140
    const-string v2, "handleVTStatusInfo, IDLE, just return! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 145
    :goto_2
    return-void

    .restart local v1    # "result":I
    :cond_1
    move v0, v4

    .line 133
    goto :goto_0

    .end local v1    # "result":I
    :cond_2
    move v3, v4

    .line 137
    goto :goto_1

    .line 144
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTConnected()V

    goto :goto_2
.end method

.method public hideLocal(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 474
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 475
    const-string v0, "hideLocal() error --> called when VTManager is CLOSE."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVTHideMeClick()...on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 479
    if-eqz p1, :cond_1

    .line 480
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->updatePicToReplaceLocalVideo()V

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalView(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public incBrightness()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    :cond_0
    const-string v0, "incBrightness() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_1
    const-string v0, "incBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 543
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public incContrast()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    :cond_0
    const-string v0, "incContrast() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_1
    const-string v0, "incContrast()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 563
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public incZoom()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    :cond_0
    const-string v0, "incZoom() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_1
    const-string v0, "incZoom()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 533
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public incomingVTCall(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incomingVTCall()... flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTManager;->incomingVTCall(I)V

    .line 593
    return-void
.end method

.method public lockPeerVideo()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 635
    const-string v0, "lockPeerVideo() error --> called when VTManager is CLOSE."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    const-string v0, "lockPeerVideo()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 171
    const-string v0, "- call VTManager.onDisconnected() begin ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 173
    const-string v0, "- call VTManager.onDisconnected() end ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onUserInput(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 583
    const-string v0, "onUserInput() error --> called when VTManager is CLOSE."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserInput()... input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTManager;->onUserInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerDefaultVTListener()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->registerVTListener(Landroid/os/Handler;)V

    .line 52
    return-void
.end method

.method public savePeerPhoto()V
    .locals 4

    .prologue
    const/16 v3, 0x7f

    .line 435
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const-string v0, "onVTTakePeerPhotoClick: failed, SD card is full."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    invoke-interface {v0, v3}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    .line 471
    :goto_0
    return-void

    .line 443
    :cond_0
    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    const-string v0, "onVTTakePeerPhotoClick: failed, SD card space is not enough."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x83

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    invoke-interface {v0, v3}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 452
    :cond_2
    const-string v0, "savePeerPhoto() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    invoke-interface {v0, v3}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto :goto_0

    .line 457
    :cond_3
    new-instance v0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTManagerWrapper$3;-><init>(Lcom/mediatek/phone/vt/VTManagerWrapper;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->start()V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 2
    .param p1, "colorEffect"    # Ljava/lang/String;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    :cond_0
    const-string v0, "setColorEffect() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setColorEffect()...colorEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTManager;->setColorEffect(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 3
    .param p1, "local"    # Landroid/view/Surface;
    .param p2, "peer"    # Landroid/view/Surface;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mSurfaceReady:Z

    .line 61
    const-string v0, "VTManagerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    .line 63
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    .line 358
    return-void
.end method

.method public setLocalView(ILjava/lang/String;)V
    .locals 2
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalView()...videoType / path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/vt/VTManager;->setLocalView(ILjava/lang/String;)V

    .line 631
    return-void
.end method

.method public setNightMode(Z)V
    .locals 2
    .param p1, "isOnNight"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    :cond_0
    const-string v0, "setNightMode() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 491
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightMode()...isOnNight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTManager;->setNightMode(Z)V

    .line 493
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public setPeerView(ILjava/lang/String;)V
    .locals 2
    .param p1, "bEnableReplacePeerVideo"    # I
    .param p2, "sReplacePeerVideoPicturePath"    # Ljava/lang/String;

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPeerView()...bEnableReplacePeerVideo / sReplacePeerVideoPicturePath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/vt/VTManager;->setPeerView(ILjava/lang/String;)V

    .line 626
    return-void
.end method

.method public setVTClose()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 164
    const-string v0, "- call VTManager.setVTClose() begin ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 166
    const-string v0, "- call VTManager.setVTClose() end ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setVTConnected()V
    .locals 3

    .prologue
    .line 153
    const-string v0, "VTManagerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTConnected VT State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTStatusActive:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "- call VTManager.setVTConnected() begin ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTConnected()V

    .line 158
    const-string v0, "- call VTManager.setVTConnected() end ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public setVTOpen(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 104
    const-string v0, "VTManagerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTOpen VT State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 106
    const-string v0, "- call VTManager.setVTOpen() begin ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;I)V

    .line 108
    const-string v0, "- call VTManager.setVTOpen() end ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setVTReady()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "VTManagerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTReady VT State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSurfaceReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mSurfaceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mSurfaceReady:Z

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setSpeakerForVT(Z)V

    .line 117
    const-string v0, "- call VTManager.setVTReady() begin ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 119
    const-string v0, "- call VTManager.setVTReady() end ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setVTVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_0
    const-string v0, "setVTVisible() error --> called when VTManager is CLOSE or VT Call is IDLE."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    const-string v0, "VTManagerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSurfaceReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mSurfaceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p1, :cond_3

    .line 83
    iget-boolean v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mSurfaceReady:Z

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "- call VTManager.setVTVisible(true) begin ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 86
    const-string v0, "- call VTManager.setVTVisible(true) end ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    const-string v0, "- call VTManager.setVTVisible(false) begin ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 91
    const-string v0, "- call VTManager.setVTVisible(false) end ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 2
    .param p1, "quality"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    const-string v0, "setVideoQuality() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoQuality()...quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTManager;->setVideoQuality(I)V

    .line 503
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V

    goto :goto_0
.end method

.method public startRecording(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "maxSize"    # J

    .prologue
    .line 596
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    :cond_0
    const-string v0, "startRecording() error --> called when VTManager is CLOSE or no active VT call exist."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording()... type / maxSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/vt/VTManager;->startRecording(IJ)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 606
    const-string v0, "stopRecording() error --> called when VTManager is CLOSE."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    const-string v0, "stopRecording()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->stopRecording()I

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 411
    const-string v0, "switchCamera() error --> called when VTManager is CLOSE."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    .line 432
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Lcom/mediatek/phone/vt/VTManagerWrapper$2;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTManagerWrapper$2;-><init>(Lcom/mediatek/phone/vt/VTManagerWrapper;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper$2;->start()V

    goto :goto_0
.end method

.method public unlockPeerVideo()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 644
    const-string v0, "unlockPeerVideo() error --> called when VTManager is CLOSE."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    const-string v0, "unlockPeerVideo()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->unlockPeerVideo()V

    goto :goto_0
.end method

.method public updatePicToReplaceLocalVideo()V
    .locals 1

    .prologue
    .line 577
    const-string v0, "updatePicToReplaceLocalVideo()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->updatePicToReplaceLocalVideo()V

    .line 579
    return-void
.end method

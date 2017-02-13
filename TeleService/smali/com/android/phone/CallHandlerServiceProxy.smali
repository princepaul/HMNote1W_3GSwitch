.class public Lcom/android/phone/CallHandlerServiceProxy;
.super Landroid/os/Handler;
.source "CallHandlerServiceProxy.java"

# interfaces
.implements Lcom/android/phone/CallModeler$Listener;
.implements Lcom/android/phone/AudioRouter$AudioModeListener;
.implements Lcom/mediatek/settings/VTSettingUtils$Listener;
.implements Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;
.implements Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
.implements Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;
.implements Lcom/android/phone/CallCommandService$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallHandlerServiceProxy$1;,
        Lcom/android/phone/CallHandlerServiceProxy$QueueParams;,
        Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_RETRY_MSG:I = 0x1

.field private static final DBG:Z

.field private static final MAX_SHORT_DELAY_RETRY_COUNT:I = 0x5

.field public static final RETRY_DELAY_LONG_MILLIS:I = 0x7530

.field public static final RETRY_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioRouter:Lcom/android/phone/AudioRouter;

.field private mBindRetryCount:I

.field private mCallCommandService:Lcom/android/phone/CallCommandService;

.field private mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

.field private mCallModeler:Lcom/android/phone/CallModeler;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFullUpdateOnConnect:Z

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallHandlerServiceProxy$QueueParams;",
            ">;"
        }
    .end annotation
.end field

.field private mRebindConnection:Z

.field private final mServiceAndQueueLock:Ljava/lang/Object;

.field private mVoLteConfModeler:Lcom/mediatek/phone/volte/VoLteConfModeler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    const-class v2, Lcom/android/phone/CallHandlerServiceProxy;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    .line 72
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/CallModeler;Lcom/android/phone/CallCommandService;Lcom/android/phone/AudioRouter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callModeler"    # Lcom/android/phone/CallModeler;
    .param p3, "callCommandService"    # Lcom/android/phone/CallCommandService;
    .param p4, "audioRouter"    # Lcom/android/phone/AudioRouter;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    iput-boolean v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mRebindConnection:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    .line 92
    iput v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 107
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "init CallHandlerServiceProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallCommandService:Lcom/android/phone/CallCommandService;

    .line 112
    iput-object p2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 113
    iput-object p4, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    .line 115
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v0, p0}, Lcom/android/phone/AudioRouter;->addAudioModeListener(Lcom/android/phone/AudioRouter$AudioModeListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallModeler;->addListener(Lcom/android/phone/CallModeler$Listener;)V

    .line 117
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/VTSettingUtils;->setListener(Lcom/mediatek/settings/VTSettingUtils$Listener;)V

    .line 118
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setListener(Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallCommandService:Lcom/android/phone/CallCommandService;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallCommandService;->addListener(Lcom/android/phone/CallCommandService$Listener;)V

    .line 121
    invoke-static {}, Lcom/mediatek/phone/volte/VoLteConfModeler;->getInstance()Lcom/mediatek/phone/volte/VoLteConfModeler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mVoLteConfModeler:Lcom/mediatek/phone/volte/VoLteConfModeler;

    .line 122
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mVoLteConfModeler:Lcom/mediatek/phone/volte/VoLteConfModeler;

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/volte/VoLteConfModeler;->addListener(Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;)V

    .line 124
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallHandlerServiceProxy;)Lcom/android/services/telephony/common/ICallHandlerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/services/telephony/common/ICallHandlerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy;
    .param p1, "x1"    # Lcom/android/services/telephony/common/ICallHandlerService;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->onCallHandlerServiceConnected(Lcom/android/services/telephony/common/ICallHandlerService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->resetConnectRetryCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallHandlerServiceProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallHandlerServiceProxy;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->reconnectOnRemainingCalls()V

    return-void
.end method

.method private enqueueConnectRetry()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 521
    iget v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    move v1, v2

    .line 522
    .local v1, "isLongDelay":Z
    :goto_0
    if-eqz v1, :cond_1

    const/16 v0, 0x7530

    .line 524
    .local v0, "delay":I
    :goto_1
    sget-object v3, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InCallUI Connection failed. Enqueuing delayed retry for "

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

    iget v5, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy;->sendEmptyMessageDelayed(IJ)Z

    .line 528
    return-void

    .line 521
    .end local v0    # "delay":I
    .end local v1    # "isLongDelay":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 522
    .restart local v1    # "isLongDelay":Z
    :cond_1
    const/16 v0, 0x7d0

    goto :goto_1
.end method

.method private enqueueDialVTCallSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 764
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    return-void
.end method

.method private enqueueDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v2, 0x3

    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, p1}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    return-void
.end method

.method private enqueueIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, p1}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    return-void
.end method

.method private enqueueUpdate(Ljava/util/List;)V
    .locals 7
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
    .line 626
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 627
    .local v1, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 628
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, v0}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, v6}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    return-void
.end method

.method private enqueueVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "params"    # Lcom/android/services/telephony/common/VTSettingParams;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 742
    new-instance v0, Lcom/android/services/telephony/common/VTSettingParams;

    invoke-direct {v0, p1}, Lcom/android/services/telephony/common/VTSettingParams;-><init>(Lcom/android/services/telephony/common/VTSettingParams;)V

    .line 743
    .local v0, "paramsCopy":Lcom/android/services/telephony/common/VTSettingParams;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, p2, v4}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    return-void
.end method

.method private enqueueVTStateChange(I)V
    .locals 5
    .param p1, "vtMessage"    # I

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v2, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    return-void
.end method

.method private static getInCallServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 389
    return-object v1
.end method

.method private getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallHandlerServiceProxy$QueueParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 612
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method private handleConnectRetry()V
    .locals 3

    .prologue
    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallHandlerServiceProxy;->removeMessages(I)V

    .line 488
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 489
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "Retry: already connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->incrementRetryCount()V

    .line 498
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    goto :goto_0

    .line 501
    :cond_1
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "Canceling connection retry since there are no calls."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 509
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->resetConnectRetryCount()V

    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private incrementRetryCount()V
    .locals 2

    .prologue
    .line 475
    const v0, 0x7fffffff

    iget v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    if-ne v0, v1, :cond_0

    .line 476
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    .line 479
    :cond_0
    iget v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    .line 480
    return-void
.end method

.method private makeInitialServiceCalls()V
    .locals 3

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallCommandService:Lcom/android/phone/CallCommandService;

    invoke-interface {v1, v2}, Lcom/android/services/telephony/common/ICallHandlerService;->startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V

    .line 601
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1}, Lcom/android/phone/AudioRouter;->getSupportedAudioModes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallHandlerServiceProxy;->onSupportedAudioModeChange(I)V

    .line 602
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1}, Lcom/android/phone/AudioRouter;->getAudioMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v2}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/CallHandlerServiceProxy;->onAudioModeChange(IZ)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 605
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception calling CallHandlerService::setCallCommandService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onCallHandlerServiceConnected(Lcom/android/services/telephony/common/ICallHandlerService;)V
    .locals 2
    .param p1, "callHandlerService"    # Lcom/android/services/telephony/common/ICallHandlerService;

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_0
    iput-object p1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    .line 572
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->makeInitialServiceCalls()V

    .line 574
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->processQueue()V

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mRebindConnection:Z

    .line 577
    iget-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    .line 579
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->getFullList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallHandlerServiceProxy;->onUpdate(Ljava/util/List;)V

    .line 581
    :cond_0
    monitor-exit v1

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processDialVTCallSuccess()V
    .locals 3

    .prologue
    .line 768
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 769
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "processDialVTCallSuccess()... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 773
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallHandlerService;->dialVTCallSuccess()V

    .line 776
    :cond_1
    monitor-exit v2

    .line 782
    :goto_0
    return-void

    .line 776
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 779
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling processDialVTCallSuccess"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 156
    :try_start_0
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 163
    :cond_1
    monitor-exit v2

    .line 169
    :goto_0
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 166
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onDisconnect "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 190
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncoming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-static {}, Lcom/android/phone/RejectWithTextMessageManager;->loadCannedResponses()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/services/telephony/common/ICallHandlerService;->onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    .line 201
    :cond_1
    monitor-exit v2

    .line 207
    :goto_0
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 204
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processPushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "params"    # Lcom/android/services/telephony/common/VTSettingParams;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 725
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 726
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPushVTSettingParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/VTSettingParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 730
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 731
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallHandlerService;->pushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V

    .line 733
    :cond_1
    monitor-exit v2

    .line 739
    :goto_0
    return-void

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 736
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling pushVTSettingParams"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processQueue()V
    .locals 6

    .prologue
    .line 634
    iget-object v4, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 635
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 636
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    .line 637
    .local v1, "params":Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1000(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 659
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1000(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " not recognized."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "params":Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 639
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "params":Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
    :pswitch_0
    :try_start_1
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1100(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v2}, Lcom/android/phone/CallHandlerServiceProxy;->processIncoming(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 642
    :pswitch_1
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1100(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/phone/CallHandlerServiceProxy;->processUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 645
    :pswitch_2
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1100(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v2}, Lcom/android/phone/CallHandlerServiceProxy;->processDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 649
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->processDialVTCallSuccess()V

    goto :goto_0

    .line 652
    :pswitch_4
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1100(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/VTSettingParams;

    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArgExtra:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1200(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallHandlerServiceProxy;->processPushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 655
    :pswitch_5
    # getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1100(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallHandlerServiceProxy;->processVTStateChanged(I)V

    goto :goto_0

    .line 663
    .end local v1    # "params":Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 664
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    .line 666
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    return-void

    .line 637
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

.method private processUpdate(Ljava/util/List;)V
    .locals 4
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
    .line 225
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 226
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onUpdate(Ljava/util/List;)V

    .line 233
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    :cond_2
    :goto_0
    return-void

    .line 233
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 245
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processUpdateRecordState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 839
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 840
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateRecordState: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", customValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 844
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallHandlerService;->onUpdateRecordState(II)V

    .line 847
    :cond_1
    monitor-exit v2

    .line 853
    :goto_0
    return-void

    .line 847
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 850
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 851
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdateRecordState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processVTStateChanged(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 883
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 884
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processVTStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 888
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onVTStateChanged(I)V

    .line 891
    :cond_1
    monitor-exit v2

    .line 897
    :goto_0
    return-void

    .line 891
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 894
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onVTSettingUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private rebindService()V
    .locals 3

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mRebindConnection:Z

    if-eqz v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 545
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mRebindConnection:Z

    .line 546
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v0, :cond_1

    .line 548
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "dead object, rebind service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    .line 550
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 552
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->reconnectOnRemainingCalls()V

    .line 554
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reconnectOnRemainingCalls()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    .line 590
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 592
    :cond_0
    return-void
.end method

.method private resetConnectRetryCount()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    .line 471
    return-void
.end method

.method private setupServiceConnection()V
    .locals 11

    .prologue
    .line 396
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v7, :cond_0

    .line 467
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/CallHandlerServiceProxy;->getInCallServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    .line 401
    .local v5, "serviceIntent":Landroid/content/Intent;
    sget-boolean v7, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v7, :cond_1

    .line 402
    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binding to service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    iget-object v8, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v8

    .line 411
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v7, :cond_a

    .line 413
    :cond_2
    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-nez v7, :cond_3

    .line 414
    new-instance v7, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v9}, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;-><init>(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    iput-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 418
    :cond_3
    const/4 v0, 0x0

    .line 419
    .local v0, "failedConnection":Z
    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 420
    .local v3, "packageManger":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 423
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 425
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 426
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 427
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_7

    .line 428
    const-string v7, "android.permission.BIND_CALL_SERVICE"

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 430
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 436
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    if-nez v4, :cond_8

    .line 441
    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v9, "Default call handler service not found."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v0, 0x1

    .line 459
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 460
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 461
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueConnectRetry()V

    .line 466
    .end local v0    # "failedConnection":Z
    .end local v1    # "i":I
    .end local v3    # "packageManger":Landroid/content/pm/PackageManager;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    :goto_3
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 425
    .restart local v0    # "failedConnection":Z
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "packageManger":Landroid/content/pm/PackageManager;
    .restart local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 445
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_8
    :try_start_1
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 447
    sget-boolean v7, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v7, :cond_9

    .line 448
    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "binding to service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_9
    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v10, 0x1

    invoke-virtual {v7, v5, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 453
    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not bind to default call handler service: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x1

    goto :goto_2

    .line 464
    .end local v0    # "failedConnection":Z
    .end local v1    # "i":I
    .end local v3    # "packageManger":Landroid/content/pm/PackageManager;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    sget-object v7, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v9, "Service connection to in call service already started."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private unbind()V
    .locals 3

    .prologue
    .line 531
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 534
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 536
    .local v0, "statusBarHelper":Lcom/android/phone/NotificationMgr$StatusBarHelper;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 537
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 538
    monitor-exit v2

    .line 539
    return-void

    .line 538
    .end local v0    # "statusBarHelper":Lcom/android/phone/NotificationMgr$StatusBarHelper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wakeUpScreen()V
    .locals 3

    .prologue
    .line 149
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "wakeUpScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 151
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 152
    return-void
.end method


# virtual methods
.method public answerVTCallPre()V
    .locals 4

    .prologue
    .line 789
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 790
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 791
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 792
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping answerVTCallPre()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    monitor-exit v2

    .line 805
    :goto_0
    return-void

    .line 797
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService answerVTCallPre()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallHandlerService;->answerVTCallPre()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 797
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 802
    :catch_1
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onStorageFull"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 5
    .param p1, "showDialpad"    # Z

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    :try_start_1
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bringToForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->bringToForeground(Z)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 381
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 380
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 376
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Exception handling bringToForeground"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public dialVTCallSuccess()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 752
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 753
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue dialVTCallSuccess."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueDialVTCallSuccess()V

    .line 756
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 757
    monitor-exit v1

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->processDialVTCallSuccess()V

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->handleConnectRetry()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioModeChange(IZ)V
    .locals 4
    .param p1, "newMode"    # I
    .param p2, "muted"    # Z

    .prologue
    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 279
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 280
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onAudioModeChange()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    monitor-exit v2

    .line 297
    :goto_0
    return-void

    .line 285
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating with new audio mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with mute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallHandlerService;->onAudioModeChange(IZ)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 285
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 294
    :catch_1
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onAudioModeChange"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCrssSuppServiceNumberUpdate(ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 996
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 997
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 998
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 999
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onCrssSuppServiceNumberUpdate..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    monitor-exit v2

    .line 1012
    :goto_0
    return-void

    .line 1004
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCrssSuppServiceNumberUpdate, callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallHandlerService;->onCrssSuppServiceNumberUpdate(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 1004
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1009
    :catch_1
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onCrssSuppServiceNumberUpdate()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getBlockType()I

    move-result v0

    .line 131
    .local v0, "blockType":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->wakeUpScreen()V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_2

    .line 137
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_1

    .line 138
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not connected.  Enqueue disconnect"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 141
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 142
    monitor-exit v2

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->resetConnectRetryCount()V

    .line 176
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 178
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue incoming."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueIncoming(Lcom/android/services/telephony/common/Call;)V

    .line 182
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 183
    monitor-exit v1

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processIncoming(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/telephony/Connection$PostDialState;
    .param p2, "callId"    # I
    .param p3, "remainingChars"    # Ljava/lang/String;
    .param p4, "currentChar"    # C

    .prologue
    .line 254
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 256
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_2

    .line 258
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_1

    .line 259
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onPostDialWait()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 264
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    :try_start_4
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p2, p3}, Lcom/android/services/telephony/common/ICallHandlerService;->onPostDialWait(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 269
    :catch_1
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStorageFull()V
    .locals 4

    .prologue
    .line 809
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 810
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 811
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 812
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onStorageFull()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    monitor-exit v2

    .line 825
    :goto_0
    return-void

    .line 817
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService onStorageFull()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallHandlerService;->onStorageFull()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 817
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 822
    :catch_1
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onStorageFull"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSuppServiceFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 930
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 931
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 932
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 933
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping oonSuppServiceFailed(message)."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    monitor-exit v2

    .line 946
    :goto_0
    return-void

    .line 938
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService onSuppServiceFailed(message)."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onSuppServiceFailed(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 938
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 943
    :catch_1
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onSuppServiceFailed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 4
    .param p1, "modeMask"    # I

    .prologue
    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 304
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. SkippingonSupportedAudioModeChange()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    monitor-exit v2

    .line 323
    :goto_0
    return-void

    .line 310
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :try_start_2
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_2

    .line 313
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSupportAudioModeChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onSupportedAudioModeChange(I)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 310
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 319
    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onAudioModeChange"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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
    .line 211
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 213
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue update."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueUpdate(Ljava/util/List;)V

    .line 217
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 218
    monitor-exit v1

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onVTStateChanged(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 869
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 871
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 872
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallHandlerService not connected. Enqueue VTStateChange. msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueVTStateChange(I)V

    .line 875
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 876
    monitor-exit v1

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processVTStateChanged(I)V

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onVoLteConferenceUpdate(ILjava/util/List;)V
    .locals 4
    .param p1, "conferenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 975
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 976
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 977
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onVoLteConferenceUpdate."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    monitor-exit v2

    .line 990
    :goto_0
    return-void

    .line 982
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVoLteConferenceUpdate, conferenceId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallHandlerService;->onVoLteConferenceUpdate(ILjava/util/List;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 982
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 987
    :catch_1
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onVoLteConferenceUpdate()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pushVTManagerParams(Lcom/android/services/telephony/common/VTManagerParams;)V
    .locals 4
    .param p1, "params"    # Lcom/android/services/telephony/common/VTManagerParams;

    .prologue
    .line 909
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 910
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 911
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 912
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping pushVTManagerParams(params)."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    monitor-exit v2

    .line 925
    :goto_0
    return-void

    .line 917
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallHandlerService.pushVTManagerParams(params)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/VTManagerParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->pushVTManagerParams(Lcom/android/services/telephony/common/VTManagerParams;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 917
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 922
    :catch_1
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling pushVTManagerParams()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "params"    # Lcom/android/services/telephony/common/VTSettingParams;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 713
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 714
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue VTSetting."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V

    .line 717
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 718
    monitor-exit v1

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallHandlerServiceProxy;->processPushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestUpdateRecordState(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 829
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 830
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "CallHandlerService not connected.  Skip updateRecordState~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "[requestUpdateRecordState]do update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallHandlerServiceProxy;->processUpdateRecordState(II)V

    goto :goto_0
.end method

.method public unbindAfterUiUpdate()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V

    .line 562
    :cond_0
    return-void
.end method

.method public updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/services/telephony/common/DualtalkCallInfo;

    .prologue
    .line 950
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 951
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 952
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 953
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping updateDualtalkCallStatus()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    monitor-exit v2

    .line 966
    :goto_0
    return-void

    .line 958
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "updateDualtalkCallStatus."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->rebindService()V

    goto :goto_0

    .line 958
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 963
    :catch_1
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling updateDualtalkCallStatus()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

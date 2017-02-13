.class public Lcom/android/phone/NetworkQueryService;
.super Landroid/app/Service;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkQueryService$LocalBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CANCEL_NETWORK_SCAN_COMPLETED:I = 0xc8

.field private static final EVENT_CANCEL_NETWORK_SCAN_COMPLETED_2:I = 0xc9

.field private static final EVENT_CANCEL_NETWORK_SCAN_COMPLETED_3:I = 0xca

.field private static final EVENT_CANCEL_NETWORK_SCAN_COMPLETED_4:I = 0xcb

.field private static final EVENT_CANCEL_NETWORK_SCAN_COMPLETED_GEMINI:[I

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SCAN_COMPLETED_2:I = 0x65

.field private static final EVENT_NETWORK_SCAN_COMPLETED_3:I = 0x66

.field private static final EVENT_NETWORK_SCAN_COMPLETED_4:I = 0x67

.field private static final EVENT_NETWORK_SCAN_COMPLETED_GEMINI:[I

.field private static final EVENT_NETWORK_SCAN_LTEMMDC_COMPLETED:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/NetworkQuery"

.field public static final QUERY_EXCEPTION:I = 0x1

.field private static final QUERY_IS_RUNNING:I = -0x2

.field public static final QUERY_OK:I = 0x0

.field private static final QUERY_READY:I = -0x1


# instance fields
.field private final mBinder:Lcom/android/phone/INetworkQueryService$Stub;

.field mCEx:I

.field private mCList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/INetworkQueryServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mDEx:I

.field private mDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mLteDcPhone:Lcom/android/internal/telephony/Phone;

.field private mLteDcPhoneComplete:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneComplete:Z

.field private mSettingsExt:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mSlotId:I

.field private mState:I

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 518
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/NetworkQueryService;->EVENT_NETWORK_SCAN_COMPLETED_GEMINI:[I

    .line 528
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/NetworkQueryService;->EVENT_CANCEL_NETWORK_SCAN_COMPLETED_GEMINI:[I

    return-void

    .line 518
    :array_0
    .array-data 4
        0x64
        0x65
        0x66
        0x67
    .end array-data

    .line 528
    :array_1
    .array-data 4
        0xc8
        0xc9
        0xca
        0xcb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 118
    iput-boolean v1, p0, Lcom/android/phone/NetworkQueryService;->mLteDcPhoneComplete:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/phone/NetworkQueryService;->mPhoneComplete:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mCList:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mDList:Ljava/util/ArrayList;

    .line 123
    iput v1, p0, Lcom/android/phone/NetworkQueryService;->mCEx:I

    .line 124
    iput v1, p0, Lcom/android/phone/NetworkQueryService;->mDEx:I

    .line 137
    new-instance v0, Lcom/android/phone/NetworkQueryService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$LocalBinder;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    .line 143
    new-instance v0, Lcom/android/phone/NetworkQueryService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$1;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 212
    new-instance v0, Lcom/android/phone/NetworkQueryService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$2;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkQueryService;)Lcom/android/phone/INetworkQueryService$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkQueryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/phone/NetworkQueryService;->mLteDcPhoneComplete:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkQueryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/NetworkQueryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/phone/NetworkQueryService;->mLteDcPhoneComplete:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkQueryService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService;->getSimMsgType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1300()[I
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/phone/NetworkQueryService;->EVENT_CANCEL_NETWORK_SCAN_COMPLETED_GEMINI:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkQueryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/phone/NetworkQueryService;->mPhoneComplete:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkQueryService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkQueryService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkQueryService;->broadcastQueryResultsForMmdc(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkQueryService;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService;->isValidMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkQueryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/NetworkQueryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkQueryService;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return p1
.end method

.method private broadcastQueryResults(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 351
    iget-object v5, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 352
    const/4 v4, -0x1

    :try_start_0
    iput v4, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 355
    if-nez p1, :cond_0

    .line 357
    const-string v4, "AsyncResult is null."

    invoke-static {v4}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 359
    monitor-exit v5

    .line 385
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 366
    .local v2, "exception":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AsyncResult has exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 370
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_2

    .line 371
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback;

    .line 373
    .local v0, "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcasting results to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :try_start_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v0, v4, v2}, Lcom/android/phone/INetworkQueryServiceCallback;->onQueryComplete(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 364
    .end local v0    # "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v2    # "exception":I
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 377
    .restart local v0    # "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    .restart local v2    # "exception":I
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 384
    .end local v0    # "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "exception":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 383
    .restart local v2    # "exception":I
    .restart local v3    # "i":I
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 384
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized broadcastQueryResultsForMmdc(Landroid/os/AsyncResult;I)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "what"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 399
    const/4 v7, -0x1

    :try_start_1
    iput v7, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 401
    if-nez p1, :cond_0

    .line 402
    const-string v7, "AsyncResult is null."

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 403
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :goto_0
    monitor-exit p0

    return-void

    .line 406
    :cond_0
    :try_start_2
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    .line 407
    .local v2, "exception":I
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AsyncResult has exception "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " mPhoneComplete = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v10, p0, Lcom/android/phone/NetworkQueryService;->mPhoneComplete:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " mLteDcPhoneComplete = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v10, p0, Lcom/android/phone/NetworkQueryService;->mLteDcPhoneComplete:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 410
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 411
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 413
    .local v5, "ni":Lcom/android/internal/telephony/OperatorInfo;
    const/16 v7, 0x64

    if-ne v7, p2, :cond_2

    .line 414
    const-string v7, "Default phone query result:"

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 415
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mCList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 417
    iput v2, p0, Lcom/android/phone/NetworkQueryService;->mCEx:I

    .line 418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default phone exception "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lcom/android/phone/NetworkQueryService;->mCEx:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 421
    :cond_2
    const/16 v7, 0x3e8

    if-ne v7, p2, :cond_1

    .line 422
    const-string v7, "ltdDc phone query result:"

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    const-string v10, "4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 424
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 428
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 429
    iput v2, p0, Lcom/android/phone/NetworkQueryService;->mDEx:I

    .line 430
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ltdDc phone exception "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lcom/android/phone/NetworkQueryService;->mDEx:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 507
    .end local v2    # "exception":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_3
    move v2, v8

    .line 406
    goto/16 :goto_1

    .line 426
    .restart local v2    # "exception":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 435
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_5
    iget-boolean v7, p0, Lcom/android/phone/NetworkQueryService;->mPhoneComplete:Z

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/android/phone/NetworkQueryService;->mLteDcPhoneComplete:Z

    if-eqz v7, :cond_e

    .line 436
    const-string v7, "broadcastQueryResultsForMmdc next to broadcast and reset flag"

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 437
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/NetworkQueryService;->mPhoneComplete:Z

    .line 438
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/NetworkQueryService;->mLteDcPhoneComplete:Z

    .line 439
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, "operatorNumeric":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operatorNumeric"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 441
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 442
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 443
    .restart local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add to mDcList"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 445
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 451
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_7
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mCList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 452
    .restart local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add to mDcList"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 454
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 460
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_9
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 461
    .restart local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 462
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add to mDcList"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 463
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 469
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_b
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mCList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 470
    .restart local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add to mDcList"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 472
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 478
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_d
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 479
    .restart local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 482
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    .end local v6    # "operatorNumeric":Ljava/lang/String;
    :cond_e
    monitor-exit v9

    goto/16 :goto_0

    .line 485
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "operatorNumeric":Ljava/lang/String;
    :cond_f
    iget v7, p0, Lcom/android/phone/NetworkQueryService;->mDEx:I

    if-ne v7, v8, :cond_10

    iget v7, p0, Lcom/android/phone/NetworkQueryService;->mCEx:I

    if-ne v7, v8, :cond_10

    .line 486
    const/4 v2, 0x1

    .line 487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AsyncResult lte and default has exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 493
    :goto_9
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 494
    .local v3, "i":I
    :goto_a
    if-ltz v3, :cond_11

    .line 495
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback;

    .line 497
    .local v0, "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "broadcasting results to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 500
    :try_start_5
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;

    invoke-interface {v0, v7, v2}, Lcom/android/phone/INetworkQueryServiceCallback;->onQueryComplete(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 494
    :goto_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 489
    .end local v0    # "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v3    # "i":I
    :cond_10
    const/4 v2, 0x0

    .line 490
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AsyncResult lte and default has exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 501
    .restart local v0    # "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 506
    .end local v0    # "cb":Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_11
    iget-object v7, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 507
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private getSimMsgType(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 573
    const/16 v0, 0x64

    .line 574
    .local v0, "msgType":I
    iget v1, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    packed-switch v1, :pswitch_data_0

    .line 588
    const-string v1, "Error wrong sim id"

    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 590
    :goto_0
    return v0

    .line 576
    :pswitch_0
    const/16 v0, 0x64

    .line 577
    goto :goto_0

    .line 579
    :pswitch_1
    const/16 v0, 0x65

    .line 580
    goto :goto_0

    .line 582
    :pswitch_2
    const/16 v0, 0x66

    .line 583
    goto :goto_0

    .line 585
    :pswitch_3
    const/16 v0, 0x67

    .line 586
    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isValidMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 546
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/android/phone/NetworkQueryService;->EVENT_NETWORK_SCAN_COMPLETED_GEMINI:[I

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 547
    .local v0, "slotId":I
    const-string v1, "Settings/NetworkQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSlotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current messget slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    if-eq v1, v0, :cond_0

    .line 550
    const-string v1, "Settings/NetworkQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receives the query result of slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 552
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkQueryService;->getSimMsgType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    invoke-static {v1, v2, v3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getAvailableNetworks(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V

    .line 553
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 554
    const/4 v1, 0x0

    .line 556
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string v0, "Settings/NetworkQuery"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 334
    const-string v0, "binding service implementation"

    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mSettingsExt:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/SettingsExtension;->shouldPublicRemoteBinder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 310
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 311
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getLteDcPhone()Lcom/android/internal/telephony/gsm/LteDcPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLteDcPhone:Lcom/android/internal/telephony/Phone;

    .line 313
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mSettingsExt:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 314
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, -0x1

    .line 562
    if-eqz p1, :cond_0

    .line 563
    invoke-static {p1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    .line 568
    :goto_0
    const-string v0, "Settings/NetworkQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand, slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x2

    return v0

    .line 565
    :cond_0
    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mSlotId:I

    goto :goto_0
.end method

.class public Lcom/mediatek/CellConnService/CellConnMgr;
.super Ljava/lang/Object;
.source "CellConnMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;
    }
.end annotation


# static fields
.field public static final ACTION_UNLOCK_SIM_LOCK:Ljava/lang/String; = "com.android.phone.ACTION_UNLOCK_SIM_LOCK"

.field public static final EXTRA_SIMME_LOCK_TYPE:Ljava/lang/String; = "com.android.phone.EXTRA_SIMME_LOCK_TYPE"

.field public static final EXTRA_SIM_SLOT:Ljava/lang/String; = "com.android.phone.EXTRA_SIM_SLOT"

.field public static final EXTRA_UNLOCK_TYPE:Ljava/lang/String; = "com.android.phone.EXTRA_UNLOCK_TYPE"

.field public static final FLAG_REQUEST_NOPREFER:I = 0x40000000

.field public static final FLAG_SUPPRESS_CONFIRMDLG:I = -0x80000000

.field public static final REQUEST_TYPE_FDN:I = 0x130

.field public static final REQUEST_TYPE_ROAMING:I = 0x132

.field public static final REQUEST_TYPE_SIMLOCK:I = 0x12e

.field public static final REQUEST_TYPE_UNKNOWN:I = 0x12c

.field public static final RESULT_ABORT:I = 0x2

.field public static final RESULT_EXCEPTION:I = 0x3

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_STATE_NORMAL:I = 0x4

.field public static final RESULT_UNKNOWN:I = -0x1

.field public static final RESULT_WAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CellConnMgr"

.field public static final VERIFY_TYPE_PIN:I = 0x1f5

.field public static final VERIFY_TYPE_PIN2:I = 0x1f8

.field public static final VERIFY_TYPE_PUK:I = 0x1f6

.field public static final VERIFY_TYPE_PUK2:I = 0x1f9

.field public static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7


# instance fields
.field private mCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback$Stub;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCtx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsVerifying:Z

.field private mOnServiceComplete:Ljava/lang/Runnable;

.field private mPreferSlot:I

.field private mResult:I

.field private mService:Lcom/mediatek/CellConnService/IPhoneStatesMgrService;

.field private workerThread:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr$1;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr$1;-><init>(Lcom/mediatek/CellConnService/CellConnMgr;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback$Stub;

    .line 213
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr$2;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr$2;-><init>(Lcom/mediatek/CellConnService/CellConnMgr;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mConnection:Landroid/content/ServiceConnection;

    .line 423
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;-><init>(Lcom/mediatek/CellConnService/CellConnMgr;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->workerThread:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr$1;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr$1;-><init>(Lcom/mediatek/CellConnService/CellConnMgr;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback$Stub;

    .line 213
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr$2;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr$2;-><init>(Lcom/mediatek/CellConnService/CellConnMgr;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mConnection:Landroid/content/ServiceConnection;

    .line 423
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-direct {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;-><init>(Lcom/mediatek/CellConnService/CellConnMgr;)V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->workerThread:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    .line 136
    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/CellConnService/CellConnMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/CellConnService/CellConnMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/CellConnService/CellConnMgr;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/CellConnService/CellConnMgr;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/CellConnService/CellConnMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mIsVerifying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/CellConnService/CellConnMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/CellConnService/CellConnMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/CellConnService/CellConnMgr;)Lcom/mediatek/CellConnService/IPhoneStatesMgrService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mService:Lcom/mediatek/CellConnService/IPhoneStatesMgrService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/CellConnService/CellConnMgr;Lcom/mediatek/CellConnService/IPhoneStatesMgrService;)Lcom/mediatek/CellConnService/IPhoneStatesMgrService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;
    .param p1, "x1"    # Lcom/mediatek/CellConnService/IPhoneStatesMgrService;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mService:Lcom/mediatek/CellConnService/IPhoneStatesMgrService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/CellConnService/CellConnMgr;)Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->workerThread:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/CellConnService/CellConnMgr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/CellConnService/CellConnMgr;II)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/CellConnService/CellConnMgr;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/CellConnService/CellConnMgr;->verifyCellState(II)I

    move-result v0

    return v0
.end method

.method public static resultToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "ret"    # I

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    const-string v0, "RESULT_OK"

    .line 132
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 121
    const-string v0, "RESULT_WAIT"

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p0, :cond_2

    .line 123
    const-string v0, "RESULT_ABORT"

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, -0x1

    if-ne v0, p0, :cond_3

    .line 125
    const-string v0, "RESULT_UNKNOWN"

    goto :goto_0

    .line 126
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p0, :cond_4

    .line 127
    const-string v0, "RESULT_EXCEPTION"

    goto :goto_0

    .line 128
    :cond_4
    const/4 v0, 0x4

    if-ne v0, p0, :cond_5

    .line 129
    const-string v0, "RESULT_STATE_NORMAL"

    goto :goto_0

    .line 132
    :cond_5
    const-string v0, "null"

    goto :goto_0
.end method

.method private verifyCellState(II)I
    .locals 6
    .param p1, "slot"    # I
    .param p2, "reqType"    # I

    .prologue
    const/4 v5, 0x3

    .line 304
    const-string v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyCellState slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reqType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, -0x1

    .line 307
    .local v1, "nRet":I
    iget-object v2, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mService:Lcom/mediatek/CellConnService/IPhoneStatesMgrService;

    if-eqz v2, :cond_1

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback$Stub;

    if-eqz v2, :cond_0

    .line 310
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mIsVerifying:Z

    .line 311
    iget-object v2, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mService:Lcom/mediatek/CellConnService/IPhoneStatesMgrService;

    iget-object v3, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCallback:Lcom/mediatek/CellConnService/IPhoneStatesCallback$Stub;

    invoke-interface {v2, p1, p2, v3}, Lcom/mediatek/CellConnService/IPhoneStatesMgrService;->verifyPhoneState(IILcom/mediatek/CellConnService/IPhoneStatesCallback;)I

    move-result v1

    .line 331
    :goto_0
    return v1

    .line 313
    :cond_0
    const-string v2, "CellConnMgr"

    const-string v3, "verifyCellState mCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    const/4 v1, 0x3

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CellConnMgr"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v2, "CellConnMgr"

    const-string v3, "verifyCellState excpetion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput v5, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I

    .line 320
    iget-object v2, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    const/4 v1, 0x3

    .line 322
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "CellConnMgr"

    const-string v3, "verifyCellState mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput v5, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I

    .line 327
    iget-object v2, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    const/4 v1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getPreferSlot()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I

    return v0
.end method

.method public handleCellConn(II)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "reqType"    # I

    .prologue
    const/4 v0, 0x1

    .line 251
    const-string v1, "CellConnMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCellConn slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput p1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I

    .line 254
    iget-boolean v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mIsVerifying:Z

    if-ne v1, v0, :cond_2

    .line 255
    const-string v0, "CellConnMgr"

    const-string v1, "There exists a comment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "CellConnMgr"

    const-string v1, "IPhoneStatesCallback call service complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    :cond_0
    const/4 v0, 0x2

    .line 278
    :cond_1
    :goto_0
    return v0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mService:Lcom/mediatek/CellConnService/IPhoneStatesMgrService;

    if-nez v1, :cond_3

    .line 264
    const-string v1, "CellConnMgr"

    const-string v2, "handleCellConn mService is not ready and start thread to handle this request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->workerThread:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->addElem(II)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->workerThread:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->isThreadStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    const-string v1, "CellConnMgr"

    const-string v2, "handleCellConn start workerThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->workerThread:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->setThreadStarted()V

    .line 272
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/mediatek/CellConnService/CellConnMgr;->workerThread:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 278
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/mediatek/CellConnService/CellConnMgr;->verifyCellState(II)I

    move-result v0

    goto :goto_0
.end method

.method public handleCellConn(IILjava/lang/Runnable;)I
    .locals 3
    .param p1, "slot"    # I
    .param p2, "reqType"    # I
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 282
    const-string v0, "CellConnMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCellConn slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and Runable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iput p1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I

    .line 285
    iget-boolean v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mIsVerifying:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 286
    const-string v0, "CellConnMgr"

    const-string v1, "There exists a comment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz p3, :cond_0

    .line 288
    const-string v0, "CellConnMgr"

    const-string v1, "IPhoneStatesCallback call service complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :cond_0
    const/4 v0, 0x2

    .line 300
    :goto_0
    return v0

    .line 294
    :cond_1
    if-nez p3, :cond_2

    .line 295
    const-string v0, "CellConnMgr"

    const-string v1, "handleCellConn runable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    iput-object p3, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    move-result v0

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 154
    const-string v1, "CellConnMgr"

    const-string v2, "register"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCtx:Landroid/content/Context;

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 161
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "CellConnMgr"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mService:Lcom/mediatek/CellConnService/IPhoneStatesMgrService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 168
    :cond_0
    return-void
.end method

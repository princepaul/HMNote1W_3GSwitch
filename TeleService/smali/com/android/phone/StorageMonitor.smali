.class public Lcom/android/phone/StorageMonitor;
.super Ljava/lang/Object;
.source "StorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/StorageMonitor$Listener;,
        Lcom/android/phone/StorageMonitor$MonitorHandler;
    }
.end annotation


# static fields
.field public static final CHECK_STORAGE_SPACE_DELAY:I = 0xea60

.field public static final ERROR_LOW_STORAGE:I = 0x1

.field public static final ERROR_SDCARD_UNMOUNTED:I = 0x2

.field public static final ERROR_SUCCESS:I = 0x0

.field public static final EVENT_CHECK_STORAGE_SPACE:I = 0x0

.field public static final LOW_STORAGE_ABS_THRESHOLD:I = 0x100000


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsingExternalStorage:Z

.field private mListener:Lcom/android/phone/StorageMonitor$Listener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mReceiverRegistered:Z

    .line 48
    new-instance v0, Lcom/android/phone/StorageMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/phone/StorageMonitor$1;-><init>(Lcom/android/phone/StorageMonitor;)V

    iput-object v0, p0, Lcom/android/phone/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/phone/StorageMonitor;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    .line 62
    new-instance v0, Lcom/android/phone/StorageMonitor$MonitorHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/StorageMonitor$MonitorHandler;-><init>(Lcom/android/phone/StorageMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/StorageMonitor;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/StorageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/StorageMonitor;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/phone/StorageMonitor;->checkStorageSpace()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/StorageMonitor;)Lcom/android/phone/StorageMonitor$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/StorageMonitor;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    return-object v0
.end method

.method private checkStorageSpace()V
    .locals 4

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/StorageMonitor;->isStorageSpaceLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/phone/StorageMonitor$Listener;->onError(I)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private isStorageSpaceLow()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 66
    iget-boolean v6, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    if-nez v6, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v5

    .line 70
    :cond_1
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "stats":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 73
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 74
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isUsingExternalStorage()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    return v0
.end method

.method public startMonitor(Lcom/android/phone/StorageMonitor$Listener;)I
    .locals 5
    .param p1, "listener"    # Lcom/android/phone/StorageMonitor$Listener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    .line 96
    invoke-direct {p0}, Lcom/android/phone/StorageMonitor;->isStorageSpaceLow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    :goto_0
    return v1

    .line 100
    :cond_0
    if-eqz p1, :cond_2

    .line 101
    iput-object p1, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    .line 102
    iget-boolean v3, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    if-eqz v3, :cond_1

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/android/phone/StorageMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iput-boolean v1, p0, Lcom/android/phone/StorageMonitor;->mReceiverRegistered:Z

    .line 110
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/StorageMonitor;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    move v1, v2

    .line 113
    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mIsUsingExternalStorage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/StorageMonitor;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/phone/StorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    iput-boolean v2, p0, Lcom/android/phone/StorageMonitor;->mReceiverRegistered:Z

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/StorageMonitor;->mListener:Lcom/android/phone/StorageMonitor$Listener;

    .line 123
    return-void
.end method

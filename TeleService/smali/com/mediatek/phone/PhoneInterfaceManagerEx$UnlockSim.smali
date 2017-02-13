.class Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnlockSim"
.end annotation


# static fields
.field private static final QUERY_NETWORK_STATUS_COMPLETE:I = 0x64

.field private static final SUPPLY_NETWORK_LOCK_COMPLETE:I = 0x65


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private mSIMMELockRetryCount:I

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;

.field private mVerifyResult:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 2
    .param p1, "simCard"    # Lcom/android/internal/telephony/IccCard;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 711
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 699
    iput-boolean v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mDone:Z

    .line 700
    iput-boolean v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mResult:Z

    .line 708
    iput v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mVerifyResult:I

    .line 709
    iput v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mSIMMELockRetryCount:I

    .line 712
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 713
    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mResult:Z

    return p1
.end method

.method static synthetic access$402(Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mDone:Z

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;
    .param p1, "x1"    # I

    .prologue
    .line 695
    iput p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mSIMMELockRetryCount:I

    return p1
.end method

.method static synthetic access$602(Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;
    .param p1, "x1"    # I

    .prologue
    .line 695
    iput p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mVerifyResult:I

    return p1
.end method


# virtual methods
.method declared-synchronized queryNetworkLock(I)Landroid/os/Bundle;
    .locals 10
    .param p1, "category"    # I

    .prologue
    .line 772
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 774
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v9

    .line 776
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 772
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 780
    :cond_0
    :try_start_3
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "Enter queryNetworkLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 782
    .local v7, "callback":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 784
    :goto_1
    iget-boolean v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_1

    .line 786
    :try_start_4
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 788
    :catch_1
    move-exception v9

    .line 790
    .restart local v9    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 794
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v0, "com.android.phone.QUERY_SIMME_LOCK_RESULT"

    iget-boolean v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mResult:Z

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 796
    const-string v0, "com.android.phone.SIMME_LOCK_LEFT_COUNT"

    iget v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mSIMMELockRetryCount:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 799
    monitor-exit p0

    return-object v8
.end method

.method public run()V
    .locals 1

    .prologue
    .line 717
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 718
    monitor-enter p0

    .line 719
    :try_start_0
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim$1;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;)V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mHandler:Landroid/os/Handler;

    .line 765
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 766
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 768
    return-void

    .line 766
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized supplyNetworkLock(Ljava/lang/String;)I
    .locals 4
    .param p1, "strPasswd"    # Ljava/lang/String;

    .prologue
    .line 804
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 806
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v1

    .line 808
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 804
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 812
    :cond_0
    :try_start_3
    const-string v2, "PhoneInterfaceManagerEx"

    const-string v3, "Enter supplyNetworkLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 814
    .local v0, "callback":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 816
    :goto_1
    iget-boolean v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 818
    :try_start_4
    const-string v2, "PhoneInterfaceManagerEx"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 820
    :catch_1
    move-exception v1

    .line 822
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 826
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManagerEx"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->mVerifyResult:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

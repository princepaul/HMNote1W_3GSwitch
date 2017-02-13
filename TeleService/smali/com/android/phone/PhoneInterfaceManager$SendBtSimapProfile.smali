.class Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendBtSimapProfile"
.end annotation


# static fields
.field private static final BTSAP_CONNECT_COMPLETE:I = 0x12c

.field private static final BTSAP_DISCONNECT_COMPLETE:I = 0x12d

.field private static final BTSAP_POWEROFF_COMPLETE:I = 0x12f

.field private static final BTSAP_POWERON_COMPLETE:I = 0x12e

.field private static final BTSAP_RESETSIM_COMPLETE:I = 0x130

.field private static final BTSAP_TRANSFER_APDU_COMPLETE:I = 0x131

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;


# instance fields
.field private mBtRsp:Landroid/telephony/BtSimapOperResponse;

.field private mBtSapPhone:Lcom/android/internal/telephony/Phone;

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Ljava/util/ArrayList;

.field private mRet:I

.field private mStrResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1451
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v1, 0x0

    .line 1468
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 1444
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    .line 1446
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 1469
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    .line 1470
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    .line 1471
    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 1441
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .prologue
    .line 1441
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .param p1, "x1"    # I

    .prologue
    .line 1441
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1461
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1462
    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    if-nez v0, :cond_0

    .line 1463
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .line 1465
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    return-object v0

    .line 1465
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized btSimapApduRequest(ILjava/lang/String;)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "cmdAPDU"    # Ljava/lang/String;

    .prologue
    .line 1882
    monitor-enter p0

    const/4 v2, 0x0

    .line 1883
    .local v2, "ret":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 1885
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1886
    :catch_0
    move-exception v1

    .line 1887
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1882
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1890
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 1891
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x131

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1893
    .local v0, "callback":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1894
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v4

    .line 1895
    .local v4, "slotId":I
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapApduRequest GEMINI connect slotId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1897
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v5, v6, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 1906
    .end local v4    # "slotId":I
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    .line 1908
    :try_start_4
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "wait for done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1910
    :catch_1
    move-exception v1

    .line 1912
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1899
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "slotId":I
    :cond_1
    const/4 v2, 0x7

    move v3, v2

    .line 1923
    .end local v2    # "ret":I
    .end local v4    # "slotId":I
    .local v3, "ret":I
    :goto_2
    monitor-exit p0

    return v3

    .line 1903
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    :try_start_6
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x5

    invoke-interface {v5, v6, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1915
    :cond_3
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v5, :cond_4

    .line 1917
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btSimapApduRequest APDU "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getApduString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :goto_3
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapApduRequest ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1923
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_2

    .line 1919
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_4
    iget v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method declared-synchronized btSimapConnectSIM(I)I
    .locals 7
    .param p1, "simId"    # I

    .prologue
    .line 1662
    monitor-enter p0

    const/4 v2, 0x0

    .line 1663
    .local v2, "ret":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1665
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1666
    :catch_0
    move-exception v1

    .line 1667
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1662
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1670
    :cond_0
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 1671
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12c

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1672
    .local v0, "callback":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1673
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 1678
    :goto_1
    iget-boolean v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_2

    .line 1680
    :try_start_4
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "wait for done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1682
    :catch_1
    move-exception v1

    .line 1684
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1675
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1688
    :cond_2
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v3, :cond_4

    .line 1691
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1692
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setBtConnectedSimId(I)V

    .line 1693
    const-string v4, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "synchronized btSimapConnectSIM GEMINI connect Sim is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_3
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btSimapConnectSIM curType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v5}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SupType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v5}, Landroid/telephony/BtSimapOperResponse;->getSupportType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ATR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v5}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :goto_2
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "synchronized btSimapConnectSIM ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1703
    monitor-exit p0

    return v2

    .line 1699
    :cond_4
    :try_start_6
    iget v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized btSimapDisconnectSIM()I
    .locals 9

    .prologue
    .line 1707
    monitor-enter p0

    const/4 v2, 0x0

    .line 1708
    .local v2, "ret":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 1710
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1711
    :catch_0
    move-exception v1

    .line 1712
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1707
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1715
    :cond_0
    :try_start_3
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "synchronized btSimapDisconnectSIM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 1717
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x12d

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1718
    .local v0, "callback":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1719
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v4

    .line 1720
    .local v4, "slotId":I
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapDisconnectSIM GEMINI connect Sim is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1722
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 1732
    .end local v4    # "slotId":I
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    .line 1734
    :try_start_4
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "wait for done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1736
    :catch_1
    move-exception v1

    .line 1738
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1724
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "slotId":I
    :cond_1
    const/4 v2, 0x7

    move v3, v2

    .line 1749
    .end local v2    # "ret":I
    .end local v4    # "slotId":I
    .local v3, "ret":I
    :goto_2
    monitor-exit p0

    return v3

    .line 1728
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    :try_start_6
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "synchronized btSimapDisconnectSIM  not gemini "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1741
    :cond_3
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v5, :cond_4

    .line 1743
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1744
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setBtConnectedSimId(I)V

    .line 1747
    :cond_4
    iget v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 1748
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapDisconnectSIM ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v3, v2

    .line 1749
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_2
.end method

.method declared-synchronized btSimapPowerOffSIM()I
    .locals 9

    .prologue
    .line 1842
    monitor-enter p0

    const/4 v2, 0x0

    .line 1843
    .local v2, "ret":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 1845
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1846
    :catch_0
    move-exception v1

    .line 1847
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1842
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1850
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 1851
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x12f

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1853
    .local v0, "callback":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1854
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v4

    .line 1855
    .local v4, "slotId":I
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapResetSIM GEMINI connect slot is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1857
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 1866
    .end local v4    # "slotId":I
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    .line 1868
    :try_start_4
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "wait for done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1870
    :catch_1
    move-exception v1

    .line 1872
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1859
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "slotId":I
    :cond_1
    const/4 v2, 0x7

    move v3, v2

    .line 1878
    .end local v2    # "ret":I
    .end local v4    # "slotId":I
    .local v3, "ret":I
    :goto_2
    monitor-exit p0

    return v3

    .line 1863
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    :try_start_6
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1875
    :cond_3
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 1877
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapPowerOffSIM ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v3, v2

    .line 1878
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_2
.end method

.method declared-synchronized btSimapPowerOnSIM(I)I
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 1798
    monitor-enter p0

    const/4 v2, 0x0

    .line 1799
    .local v2, "ret":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 1801
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1802
    :catch_0
    move-exception v1

    .line 1803
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1798
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1806
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 1807
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x12e

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1809
    .local v0, "callback":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1810
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v4

    .line 1811
    .local v4, "slotId":I
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapResetSIM GEMINI connect slot is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1813
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, v7, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 1822
    .end local v4    # "slotId":I
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    .line 1824
    :try_start_4
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "wait for done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1826
    :catch_1
    move-exception v1

    .line 1828
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1815
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "slotId":I
    :cond_1
    const/4 v2, 0x7

    move v3, v2

    .line 1838
    .end local v2    # "ret":I
    .end local v4    # "slotId":I
    .local v3, "ret":I
    :goto_2
    monitor-exit p0

    return v3

    .line 1819
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    :try_start_6
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, v7, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1831
    :cond_3
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    iget v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v5, :cond_4

    .line 1833
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btSimapPowerOnSIM curType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ATR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :goto_3
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapPowerOnSIM ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1838
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_2

    .line 1835
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_4
    iget v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method declared-synchronized btSimapResetSIM(I)I
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 1753
    monitor-enter p0

    const/4 v2, 0x0

    .line 1754
    .local v2, "ret":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 1756
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1757
    :catch_0
    move-exception v1

    .line 1758
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1753
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1761
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 1762
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x130

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1764
    .local v0, "callback":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1765
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v4

    .line 1766
    .local v4, "slotId":I
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapResetSIM GEMINI connect slot is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1768
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, v7, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 1777
    .end local v4    # "slotId":I
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    .line 1779
    :try_start_4
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "wait for done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1781
    :catch_1
    move-exception v1

    .line 1783
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1770
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "slotId":I
    :cond_1
    const/4 v2, 0x7

    move v3, v2

    .line 1794
    .end local v2    # "ret":I
    .end local v4    # "slotId":I
    .local v3, "ret":I
    :goto_2
    monitor-exit p0

    return v3

    .line 1774
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_2
    :try_start_6
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, v7, v0}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1786
    :cond_3
    const-string v5, "PhoneInterfaceManager"

    const-string v6, "done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget v5, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v5, :cond_4

    .line 1788
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btSimapResetSIM curType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ATR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v7}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :goto_3
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronized btSimapResetSIM ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1794
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_2

    .line 1790
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_4
    iget v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1480
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1481
    monitor-enter p0

    .line 1482
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    .line 1656
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1657
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1659
    return-void

    .line 1657
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBtOperResponse(Landroid/telephony/BtSimapOperResponse;)V
    .locals 0
    .param p1, "btRsp"    # Landroid/telephony/BtSimapOperResponse;

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    .line 1476
    return-void
.end method

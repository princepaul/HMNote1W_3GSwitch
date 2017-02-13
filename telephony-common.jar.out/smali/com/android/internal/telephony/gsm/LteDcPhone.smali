.class public Lcom/android/internal/telephony/gsm/LteDcPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "LteDcPhone.java"


# static fields
.field private static final LOCAL_DEBUG:Z = true

.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE_MMDC:I = 0x0

.field private static final MESSAGE_QUERY_AVAILABLE_NETWORK_MMDC:I = 0x2

.field private static final MESSAGE_SET_NW_MANUAL_COMPLETE_MMDC:I = 0x3

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_MMDC:I = 0x1


# instance fields
.field private mNetworkType:I

.field private mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "simId"    # I
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create LteDcPhone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 89
    const-string v0, "setPhoneComponent() with mPeerGsmPhone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-interface {p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneComponent(Lcom/android/internal/telephony/Phone;)V

    .line 91
    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 286
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 288
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object v3, v4

    check-cast v3, Landroid/os/Message;

    .line 290
    .local v3, "response":Landroid/os/Message;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 291
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v2, v4

    check-cast v2, [I

    .line 293
    .local v2, "modemNetworkMode":[I
    array-length v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 294
    aget v0, v2, v6

    .line 295
    .local v0, "P1NetworkType":I
    sparse-switch v0, :sswitch_data_0

    .line 372
    const-string v4, "RAT mode is not support"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGE(Ljava/lang/String;)V

    .line 373
    aput v0, v2, v6

    .line 374
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v3, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 382
    .end local v0    # "P1NetworkType":I
    .end local v2    # "modemNetworkMode":[I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 383
    return-void

    .line 312
    .restart local v0    # "P1NetworkType":I
    .restart local v2    # "modemNetworkMode":[I
    :sswitch_0
    const/16 v4, 0x1f

    aput v4, v2, v6

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 317
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 324
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    aput v6, v2, v6

    .line 333
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 336
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 331
    :cond_1
    const/4 v4, 0x2

    aput v4, v2, v6

    goto :goto_1

    .line 342
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    const/16 v4, 0x22

    aput v4, v2, v6

    .line 351
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 354
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 348
    :cond_2
    const/16 v4, 0xb

    aput v4, v2, v6

    goto :goto_2

    .line 359
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 360
    const/16 v4, 0x9

    aput v4, v2, v6

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "and radio2 is on -> transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 368
    :goto_3
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 364
    :cond_3
    const/16 v4, 0xc

    aput v4, v2, v6

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "and radio2 is off -> transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_3

    .line 380
    .end local v0    # "P1NetworkType":I
    .end local v2    # "modemNetworkMode":[I
    :cond_4
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected LOGD(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method protected LOGE(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method protected LOGI(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method protected LOGW(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 96
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 445
    const-string v0, "LteDcPhone finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 431
    const-string v1, "before query available network, cleanup all data connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 434
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const-string v0, "LteDc"

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 417
    .local v0, "mCurrentNetworkMode":I
    if-ne v0, v5, :cond_0

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredNetworkType() mCurrentNetworkMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return GSM_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 419
    new-array v1, v5, [I

    .line 420
    .local v1, "modemNetworkMode":[I
    aput v5, v1, v4

    .line 421
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 422
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 426
    .end local v1    # "modemNetworkMode":[I
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    const-string v0, "handleMessage"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 136
    :goto_0
    :sswitch_0
    return-void

    .line 116
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 124
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string v0, "Override - notifyDataConnection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 398
    const-string v0, "Override - notifyLocationChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .param p1, "otaspMode"    # I

    .prologue
    .line 393
    const-string v0, "Override - notifyOtaspChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 441
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    .line 442
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 140
    const/4 v0, 0x1

    .line 141
    .local v0, "isNeedTurnOnRadio1":Z
    const/4 v1, 0x1

    .line 143
    .local v1, "isNeedTurnOnRadio2":Z
    const/4 v4, 0x0

    .line 147
    .local v4, "isRequestFromBootUpFlow":Z
    if-eqz p2, :cond_0

    iget v6, p2, Landroid/os/Message;->arg1:I

    if-ne v6, v9, :cond_1

    .line 148
    :cond_0
    const/4 v4, 0x1

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 156
    .local v5, "mCurrentNetworkMode":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPreferredNetworkTypeLteDc currentType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  networkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 165
    sparse-switch p1, :sswitch_data_0

    .line 234
    const-string v6, "RAT mode is not support"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGE(Ljava/lang/String;)V

    .line 236
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v4, 0x1

    .line 246
    :goto_0
    if-nez v4, :cond_c

    .line 247
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    .line 248
    .local v2, "isRadioOn1":Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    .line 250
    .local v3, "isRadioOn2":Z
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 251
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 252
    :cond_2
    const-string v6, "need to setRadioMode(MODE_DUAL_SIM) but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 255
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x3

    invoke-interface {v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    .line 283
    .end local v2    # "isRadioOn1":Z
    .end local v3    # "isRadioOn2":Z
    :cond_3
    :goto_1
    return-void

    .line 169
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 175
    :sswitch_1
    const/16 p1, 0x20

    .line 176
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 182
    :sswitch_2
    const/4 p1, 0x2

    .line 183
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 188
    :sswitch_3
    const/16 p1, 0x23

    .line 189
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 194
    :sswitch_4
    const/16 p1, 0xc

    .line 195
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 196
    const/4 v1, 0x0

    .line 197
    goto :goto_0

    .line 201
    :sswitch_5
    const/4 p1, 0x2

    .line 202
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 203
    const/4 v1, 0x0

    .line 204
    goto :goto_0

    .line 208
    :sswitch_6
    const/16 p1, 0xb

    .line 209
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 210
    const/4 v1, 0x0

    .line 211
    goto :goto_0

    .line 214
    :sswitch_7
    if-nez v4, :cond_4

    .line 215
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :cond_4
    if-nez p2, :cond_5

    .line 218
    const-string v6, "response is NULL"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_5
    if-ne v5, v9, :cond_6

    iget v6, p2, Landroid/os/Message;->arg1:I

    if-ne v6, v9, :cond_6

    .line 220
    const-string v6, "boot up with 2G only"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v4, 0x1

    .line 228
    const-string v6, "exception on set to 2G only"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    .restart local v2    # "isRadioOn1":Z
    .restart local v3    # "isRadioOn2":Z
    :cond_7
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    .line 260
    if-eqz v2, :cond_8

    if-eqz v3, :cond_3

    .line 261
    :cond_8
    const-string v6, "need ot setRadioMode(MODE_SIM1_ONLY) but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 264
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_1

    .line 266
    :cond_9
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 268
    if-nez v2, :cond_a

    if-nez v3, :cond_b

    .line 269
    :cond_a
    const-string v6, "need ot switch mode to GSM_ONLY, but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 271
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    invoke-interface {v6, v7, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 273
    :cond_b
    if-eqz p2, :cond_3

    .line 274
    const-string v6, "no need to change Radio Mode"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 275
    invoke-static {p2, v10, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 276
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 281
    .end local v2    # "isRadioOn1":Z
    .end local v3    # "isRadioOn2":Z
    :cond_c
    const-string v6, "RAT mode not support or in bootup flow"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_7
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x9 -> :sswitch_0
        0xb -> :sswitch_6
        0xc -> :sswitch_4
        0x1f -> :sswitch_1
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 387
    const-string v0, "updateSimIndicateState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 389
    return-void
.end method

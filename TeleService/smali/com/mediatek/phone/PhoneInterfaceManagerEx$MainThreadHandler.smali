.class final Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;


# direct methods
.method private constructor <init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx;
    .param p2, "x1"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 336
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 338
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 339
    .local v21, "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    const/16 v4, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 341
    .local v12, "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 344
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    .line 345
    .local v22, "sca":Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->simId:I

    move/from16 v23, v0

    .line 348
    .local v23, "simId":I
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca get sc gemini"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v12}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    goto :goto_0

    .line 358
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v22    # "sca":Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    .end local v23    # "simId":I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 359
    .local v14, "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 361
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 362
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca get result"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 369
    :goto_1
    monitor-enter v21

    .line 370
    :try_start_0
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca notify sleep thread"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 372
    monitor-exit v21

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 365
    :cond_1
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca Fail to get sc address"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 376
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 377
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 379
    .restart local v12    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    .line 380
    .restart local v22    # "sca":Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    move-object/from16 v0, v22

    iget v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->simId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 384
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca set sc gemini"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v22

    iget v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->simId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->scAddr:Ljava/lang/String;

    invoke-interface {v4, v5, v12}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 394
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v22    # "sca":Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 395
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 396
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 397
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca Fail: set sc address"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_2
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 403
    monitor-enter v21

    .line 404
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 405
    monitor-exit v21

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 399
    :cond_2
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca Done: set sc address"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 409
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 410
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;

    .line 413
    .local v20, "parameters":Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->simSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 418
    .local v3, "iccCard":Lcom/android/internal/telephony/IccCard;
    const/16 v4, 0x16

    move-object/from16 v0, v20

    iget v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->simSlotId:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 419
    .restart local v12    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v20

    iget v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p3:I

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->pathId:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->pin2:Ljava/lang/String;

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/IccCard;->exchangeSimIo(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 424
    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v20    # "parameters":Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 425
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 426
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 428
    .local v24, "simSlotId":I
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 429
    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x0

    aput v5, v4, v24

    .line 441
    :cond_3
    :goto_3
    monitor-enter v21

    .line 442
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 443
    monitor-exit v21

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v4

    .line 432
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v6, 0x6f

    const/4 v7, 0x0

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-direct {v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x1

    aput v5, v4, v24

    .line 434
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_3

    .line 435
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_3

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x5

    aput v5, v4, v24

    goto :goto_3

    .line 447
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 448
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;

    .line 451
    .local v15, "argument":Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->simSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 456
    .restart local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    const/16 v4, 0x10

    iget v5, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->simSlotId:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 458
    .restart local v12    # "onCompleted":Landroid/os/Message;
    iget v4, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->cla:I

    iget v5, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->command:I

    iget v6, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->channel:I

    iget v7, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p1:I

    iget v8, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p2:I

    iget v9, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p3:I

    iget-object v10, v15, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->data:Ljava/lang/String;

    move-object v11, v12

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IccCard;->exchangeApdu(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 463
    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v15    # "argument":Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 464
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 465
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 466
    .restart local v24    # "simSlotId":I
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 467
    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x0

    aput v5, v4, v24

    .line 479
    :cond_5
    :goto_4
    monitor-enter v21

    .line 480
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 481
    monitor-exit v21

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v4

    .line 470
    :cond_6
    new-instance v5, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v6, 0x6f

    const/4 v7, 0x0

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-direct {v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x1

    aput v5, v4, v24

    .line 472
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_5

    .line 473
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_5

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x5

    aput v5, v4, v24

    goto :goto_4

    .line 485
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 486
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    .line 487
    .local v19, "openChannel":Landroid/os/Bundle;
    const-string v4, "AID"

    const-string v5, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 488
    .local v13, "aid":Ljava/lang/String;
    const-string v4, "SimSlotId"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 490
    .restart local v24    # "simSlotId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",aid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$200(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 498
    .restart local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 499
    .restart local v12    # "onCompleted":Landroid/os/Message;
    invoke-interface {v3, v13, v12}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 503
    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v13    # "aid":Ljava/lang/String;
    .end local v19    # "openChannel":Landroid/os/Bundle;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 504
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 505
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 506
    .restart local v24    # "simSlotId":I
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 507
    new-instance v5, Ljava/lang/Integer;

    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x0

    aput v5, v4, v24

    .line 524
    :cond_7
    :goto_5
    monitor-enter v21

    .line 525
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 526
    monitor-exit v21

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v4

    .line 510
    :cond_8
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x1

    aput v5, v4, v24

    .line 512
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_7

    .line 513
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_9

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x2

    aput v5, v4, v24

    goto :goto_5

    .line 517
    :cond_9
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_7

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x3

    aput v5, v4, v24

    goto :goto_5

    .line 530
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 531
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 532
    .local v18, "closeChannel":Landroid/os/Bundle;
    const-string v4, "Channel"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 533
    .local v17, "channel":I
    const-string v4, "SimSlotId"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 535
    .restart local v24    # "simSlotId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",channel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$200(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 543
    .restart local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 544
    .restart local v12    # "onCompleted":Landroid/os/Message;
    move/from16 v0, v17

    invoke-interface {v3, v0, v12}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 548
    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v17    # "channel":I
    .end local v18    # "closeChannel":Landroid/os/Bundle;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 549
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 550
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 551
    .restart local v24    # "simSlotId":I
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_b

    .line 552
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x0

    aput v5, v4, v24

    .line 564
    :cond_a
    :goto_6
    monitor-enter v21

    .line 565
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 566
    monitor-exit v21

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v4

    .line 555
    :cond_b
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x1

    aput v5, v4, v24

    .line 557
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_a

    .line 558
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_a

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x5

    aput v5, v4, v24

    goto :goto_6

    .line 570
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 571
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 573
    .restart local v24    # "simSlotId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$200(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 581
    .restart local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 582
    .restart local v12    # "onCompleted":Landroid/os/Message;
    invoke-interface {v3, v12}, Lcom/android/internal/telephony/IccCard;->iccGetAtr(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 586
    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 587
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 588
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 589
    .restart local v24    # "simSlotId":I
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 590
    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x0

    aput v5, v4, v24

    .line 596
    :goto_7
    monitor-enter v21

    .line 597
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 598
    monitor-exit v21

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v4

    .line 593
    :cond_c
    const-string v4, ""

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x1

    aput v5, v4, v24

    goto :goto_7

    .line 602
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 603
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;

    .line 606
    .local v16, "argument3":Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v16

    iget v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->simSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 611
    .restart local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    const/16 v4, 0x1a

    move-object/from16 v0, v16

    iget v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->simSlotId:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 613
    .restart local v12    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface {v3, v4, v12}, Lcom/android/internal/telephony/IccCard;->openLogicalChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 617
    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v16    # "argument3":Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 618
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 619
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 620
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 621
    .restart local v24    # "simSlotId":I
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_d

    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_d

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x0

    aput v5, v4, v24

    .line 627
    :goto_8
    monitor-enter v21

    .line 628
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 629
    monitor-exit v21

    goto/16 :goto_0

    :catchall_7
    move-exception v4

    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v4

    .line 624
    :cond_d
    new-instance v5, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-direct {v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I
    invoke-static {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I

    move-result-object v4

    const/4 v5, 0x1

    aput v5, v4, v24

    goto :goto_8

    .line 635
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v24    # "simSlotId":I
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 636
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    const/16 v4, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 640
    .restart local v12    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    if-nez v4, :cond_e

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v12}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 643
    :cond_e
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Integer;

    .line 644
    .local v23, "simId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iget-object v4, v4, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v12}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 650
    .end local v12    # "onCompleted":Landroid/os/Message;
    .end local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v23    # "simId":Ljava/lang/Integer;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 651
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 652
    .restart local v21    # "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_f

    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_f

    .line 653
    iget-object v4, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 659
    :goto_9
    monitor-enter v21

    .line 660
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 661
    monitor-exit v21

    goto/16 :goto_0

    :catchall_8
    move-exception v4

    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v4

    .line 656
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_9

    .line 336
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

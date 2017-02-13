.class Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;
.super Landroid/os/Handler;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/UserPLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_EF_DONE:I = 0x1

.field private static final MESSAGE_GET_UPLMN_LIST:I = 0x0

.field private static final MESSAGE_SET_EF_DONE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/UserPLMNListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/UserPLMNListPreference;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/UserPLMNListPreference;Lcom/android/phone/settings/UserPLMNListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p2, "x1"    # Lcom/android/phone/settings/UserPLMNListPreference$1;

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    return-void
.end method


# virtual methods
.method public handleGetEFDone(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 622
    const-string v12, "UserPLMNListPreference"

    const-string v13, "handleGetEFDone: done"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 627
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_0

    .line 628
    const-string v12, "UserPLMNListPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleGetEFDone with exception = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;
    invoke-static {v12}, Lcom/android/phone/settings/UserPLMNListPreference;->access$900(Lcom/android/phone/settings/UserPLMNListPreference;)Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 631
    .local v6, "message":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v6, Landroid/os/Message;->what:I

    .line 632
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 634
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;
    invoke-static {v12}, Lcom/android/phone/settings/UserPLMNListPreference;->access$900(Lcom/android/phone/settings/UserPLMNListPreference;)Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    :goto_0
    return-void

    .line 636
    .end local v6    # "message":Landroid/os/Message;
    :cond_0
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v3, v12

    check-cast v3, [B

    .line 637
    .local v3, "data":[B
    const-string v12, "UserPLMNListPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    array-length v13, v3

    div-int/lit8 v13, v13, 0x5

    # setter for: Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I
    invoke-static {v12, v13}, Lcom/android/phone/settings/UserPLMNListPreference;->access$1002(Lcom/android/phone/settings/UserPLMNListPreference;I)I

    .line 639
    const-string v12, "UserPLMNListPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mNumRec = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I
    invoke-static {v14}, Lcom/android/phone/settings/UserPLMNListPreference;->access$1000(Lcom/android/phone/settings/UserPLMNListPreference;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I
    invoke-static {v12}, Lcom/android/phone/settings/UserPLMNListPreference;->access$1000(Lcom/android/phone/settings/UserPLMNListPreference;)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 643
    .local v10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v12, 0x3

    new-array v5, v12, [B

    .line 644
    .local v5, "mcc":[B
    const/4 v12, 0x3

    new-array v7, v12, [B

    .line 645
    .local v7, "mnc":[B
    const/4 v9, 0x0

    .line 646
    .local v9, "num_mnc_digits":I
    const/4 v1, 0x0

    .line 647
    .local v1, "access_tech":I
    const/4 v11, 0x0

    .line 648
    .local v11, "strOperName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I
    invoke-static {v12}, Lcom/android/phone/settings/UserPLMNListPreference;->access$1000(Lcom/android/phone/settings/UserPLMNListPreference;)I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 649
    const/4 v1, 0x0

    .line 650
    const/4 v12, 0x0

    mul-int/lit8 v13, v4, 0x5

    aget-byte v13, v3, v13

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 651
    const/4 v12, 0x1

    mul-int/lit8 v13, v4, 0x5

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 652
    const/4 v12, 0x2

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 654
    const/4 v12, 0x0

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    .line 655
    const/4 v12, 0x1

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    .line 656
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    const/16 v13, -0x10

    if-ne v12, v13, :cond_7

    .line 657
    const/4 v9, 0x2

    .line 658
    const/4 v12, 0x2

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    .line 664
    :goto_2
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, v3, v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_1

    .line 665
    or-int/lit8 v1, v1, 0x8

    .line 667
    :cond_1
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_2

    .line 668
    or-int/lit8 v1, v1, 0x4

    .line 670
    :cond_2
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x4

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_3

    .line 671
    or-int/lit8 v1, v1, 0x1

    .line 674
    :cond_3
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x4

    aget-byte v12, v3, v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_4

    .line 675
    or-int/lit8 v1, v1, 0x2

    .line 678
    :cond_4
    mul-int/lit8 v12, v4, 0x5

    aget-byte v12, v3, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v3, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x2

    aget-byte v12, v3, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    .line 681
    const/4 v12, 0x2

    if-ne v9, v12, :cond_8

    .line 682
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-virtual {v13, v5}, Lcom/android/phone/settings/UserPLMNListPreference;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-virtual {v13, v7}, Lcom/android/phone/settings/UserPLMNListPreference;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 688
    :cond_5
    :goto_3
    new-instance v12, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-direct {v12, v13, v11, v1, v4}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/lang/String;II)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 660
    :cond_7
    const/4 v9, 0x3

    .line 661
    const/4 v12, 0x2

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    goto/16 :goto_2

    .line 684
    :cond_8
    const/4 v12, 0x3

    if-ne v9, v12, :cond_5

    .line 685
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-virtual {v13, v5}, Lcom/android/phone/settings/UserPLMNListPreference;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-virtual {v13, v7}, Lcom/android/phone/settings/UserPLMNListPreference;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 692
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;
    invoke-static {v12}, Lcom/android/phone/settings/UserPLMNListPreference;->access$900(Lcom/android/phone/settings/UserPLMNListPreference;)Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 693
    .restart local v6    # "message":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v6, Landroid/os/Message;->what:I

    .line 694
    if-nez v10, :cond_a

    .line 695
    const-string v12, "UserPLMNListPreference"

    const-string v13, "handleGetEFDone : NULL ret list!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_4
    new-instance v8, Landroid/os/AsyncResult;

    iget-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {v8, v12, v10, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 701
    .local v8, "mret":Landroid/os/AsyncResult;
    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;
    invoke-static {v12}, Lcom/android/phone/settings/UserPLMNListPreference;->access$900(Lcom/android/phone/settings/UserPLMNListPreference;)Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 697
    .end local v8    # "mret":Landroid/os/AsyncResult;
    :cond_a
    const-string v12, "UserPLMNListPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleGetEFDone : ret.size() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public handleGetUPLMNList(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 583
    const-string v1, "UserPLMNListPreference"

    const-string v2, "handleGetUPLMNList: done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$500(Lcom/android/phone/settings/UserPLMNListPreference;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/settings/UserPLMNListPreference;->onFinished(Landroid/preference/Preference;Z)V

    .line 592
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 593
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 594
    const-string v1, "UserPLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetUPLMNList with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/phone/settings/UserPLMNListPreference;->access$600(Lcom/android/phone/settings/UserPLMNListPreference;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$602(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/util/List;)Ljava/util/List;

    .line 602
    :cond_0
    :goto_1
    return-void

    .line 589
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/phone/settings/UserPLMNListPreference;->access$500(Lcom/android/phone/settings/UserPLMNListPreference;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/settings/UserPLMNListPreference;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 600
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    # invokes: Lcom/android/phone/settings/UserPLMNListPreference;->refreshUPLMNListPreference(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->access$700(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 564
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 579
    :goto_0
    return-void

    .line 566
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->handleGetUPLMNList(Landroid/os/Message;)V

    goto :goto_0

    .line 570
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->handleSetEFDone(Landroid/os/Message;)V

    goto :goto_0

    .line 574
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->handleGetEFDone(Landroid/os/Message;)V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleSetEFDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 606
    const-string v1, "UserPLMNListPreference"

    const-string v2, "handleSetEFDone: done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 609
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 610
    const-string v1, "UserPLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetEFDone with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    # invokes: Lcom/android/phone/settings/UserPLMNListPreference;->getUPLMNInfoFromEf()V
    invoke-static {v1}, Lcom/android/phone/settings/UserPLMNListPreference;->access$800(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 618
    return-void

    .line 614
    :cond_0
    const-string v1, "UserPLMNListPreference"

    const-string v2, "handleSetEFDone: with OK result!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

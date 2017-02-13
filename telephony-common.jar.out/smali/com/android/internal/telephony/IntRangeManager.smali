.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 185
    return-void
.end method

.method private populateAllClientRanges()V
    .locals 9

    .prologue
    .line 638
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 639
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 640
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 642
    .local v5, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 643
    .local v0, "clientLen":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 644
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 645
    .local v4, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 639
    .end local v4    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v0    # "clientLen":I
    .end local v2    # "j":I
    .end local v5    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 5

    .prologue
    .line 625
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 627
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 629
    .local v0, "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_0

    .line 631
    .end local v0    # "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public clearAllRanges()V
    .locals 2

    .prologue
    .line 656
    const-string v0, "IntRangeManager"

    const-string v1, "clear all the ranges"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 658
    return-void
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 19
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 444
    .local v9, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_12

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 446
    .local v14, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 447
    const/16 v17, 0x0

    .line 580
    .end local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_1
    monitor-exit p0

    return v17

    .line 448
    .restart local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    :try_start_1
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_11

    .line 451
    iget-object v2, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 454
    .local v2, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 455
    .local v5, "crLength":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_3

    .line 456
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 457
    .local v3, "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 462
    const/16 v17, 0x1

    goto :goto_1

    .line 465
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 466
    const/16 v17, 0x0

    goto :goto_1

    .line 469
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 479
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/high16 v8, -0x80000000

    .line 480
    .local v8, "largestEndId":I
    const/16 v16, 0x0

    .line 483
    .local v16, "updateStarted":Z
    const/4 v4, 0x0

    .local v4, "crIndex":I
    :goto_2
    if-ge v4, v5, :cond_11

    .line 484
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 485
    .restart local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_f

    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 487
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    .line 488
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_4

    .line 491
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 495
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 496
    iput v8, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 498
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 500
    :cond_5
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 501
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 502
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 510
    :cond_6
    new-instance v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 512
    .local v15, "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v4, :cond_8

    .line 518
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .line 519
    .local v13, "nextStartId":I
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_7

    .line 520
    const/16 v16, 0x1

    .line 521
    iput v13, v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 524
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 531
    .end local v13    # "nextStartId":I
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v10, "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object v6, v15

    .line 534
    .local v6, "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v12, v4, 0x1

    .local v12, "nextIndex":I
    :goto_3
    if-ge v12, v5, :cond_c

    .line 535
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 536
    .local v11, "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 537
    const/16 v16, 0x1

    .line 538
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 539
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 547
    .restart local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_4
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_9

    .line 548
    iget v8, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 534
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 542
    :cond_a
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 543
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 545
    :cond_b
    iget-object v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 442
    .end local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4    # "crIndex":I
    .end local v5    # "crLength":I
    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v7    # "i":I
    .end local v8    # "largestEndId":I
    .end local v9    # "len":I
    .end local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v11    # "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v12    # "nextIndex":I
    .end local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v16    # "updateStarted":Z
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 553
    .restart local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v4    # "crIndex":I
    .restart local v5    # "crLength":I
    .restart local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v7    # "i":I
    .restart local v8    # "largestEndId":I
    .restart local v9    # "len":I
    .restart local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v12    # "nextIndex":I
    .restart local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v16    # "updateStarted":Z
    :cond_c
    move/from16 v0, p2

    if-ge v8, v0, :cond_d

    .line 554
    const/16 v16, 0x1

    .line 555
    :try_start_2
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 557
    :cond_d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 562
    if-eqz v16, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-nez v17, :cond_e

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 566
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 569
    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 572
    .end local v6    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v10    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v12    # "nextIndex":I
    .end local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_f
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_10

    .line 573
    iget v8, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 444
    .end local v2    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4    # "crIndex":I
    .end local v5    # "crLength":I
    .end local v8    # "largestEndId":I
    .end local v16    # "updateStarted":Z
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 580
    .end local v14    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 20
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 201
    .local v10, "len":I
    if-nez v10, :cond_1

    .line 202
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    const/16 v17, 0x1

    .line 427
    :goto_0
    monitor-exit p0

    return v17

    .line 206
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 210
    :cond_1
    const/4 v14, 0x0

    .local v14, "startIndex":I
    :goto_1
    if-ge v14, v10, :cond_21

    .line 211
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 212
    .local v13, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 217
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 218
    const/16 v17, 0x1

    goto :goto_0

    .line 219
    :cond_2
    add-int/lit8 v17, p1, -0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 222
    move/from16 v11, p2

    .line 223
    .local v11, "newRangeEndId":I
    const/4 v12, 0x0

    .line 224
    .local v12, "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    if-ge v0, v10, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    check-cast v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 226
    .restart local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_6

    .line 228
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 230
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 237
    :cond_3
    :goto_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 238
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 239
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 242
    if-eqz v12, :cond_5

    .line 243
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 245
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 247
    :cond_4
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 234
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 252
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 254
    .end local v11    # "newRangeEndId":I
    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 258
    add-int/lit8 v17, p2, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 261
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 263
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 265
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 267
    :cond_a
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 270
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 271
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 272
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 273
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 275
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 279
    :cond_c
    add-int/lit8 v5, v14, 0x1

    .local v5, "endIndex":I
    :goto_3
    if-ge v5, v10, :cond_13

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 281
    .local v6, "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    .line 284
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 285
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 286
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 288
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 294
    add-int/lit8 v8, v14, 0x1

    .line 295
    .local v8, "joinIndex":I
    move v7, v8

    .local v7, "i":I
    :goto_4
    if-ge v7, v5, :cond_d

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 298
    .local v9, "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 301
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 303
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 305
    :cond_f
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_12

    .line 309
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 310
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 311
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 313
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 319
    add-int/lit8 v8, v14, 0x1

    .line 320
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_5
    if-gt v7, v5, :cond_10

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 322
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 325
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 327
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 279
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 334
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 335
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 336
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 338
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 344
    add-int/lit8 v8, v14, 0x1

    .line 345
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_6
    if-ge v7, v10, :cond_14

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 348
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 351
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 353
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 356
    .end local v5    # "endIndex":I
    :cond_16
    add-int/lit8 v17, p1, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_20

    .line 358
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_17

    .line 361
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 362
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 366
    :cond_17
    move v5, v14

    .line 367
    .restart local v5    # "endIndex":I
    add-int/lit8 v15, v14, 0x1

    .local v15, "testIndex":I
    :goto_7
    if-ge v15, v10, :cond_18

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 369
    .local v16, "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    .line 376
    .end local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_18
    if-ne v5, v14, :cond_1b

    .line 380
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 381
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 382
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 383
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 372
    .restart local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_19
    move v5, v15

    .line 367
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 385
    .end local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 389
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 394
    .restart local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 397
    .restart local v11    # "newRangeEndId":I
    :goto_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 398
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1d

    iget v11, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 399
    :goto_9
    iput v11, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 401
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 407
    add-int/lit8 v8, v14, 0x1

    .line 408
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_a
    if-gt v7, v5, :cond_1e

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 410
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11    # "newRangeEndId":I
    :cond_1c
    move/from16 v11, p2

    .line 394
    goto :goto_8

    .restart local v11    # "newRangeEndId":I
    :cond_1d
    move/from16 v11, p2

    .line 398
    goto :goto_9

    .line 413
    .restart local v7    # "i":I
    .restart local v8    # "joinIndex":I
    :cond_1e
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 415
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 210
    .end local v5    # "endIndex":I
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11    # "newRangeEndId":I
    .end local v15    # "testIndex":I
    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 423
    .end local v13    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_21
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 427
    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 198
    .end local v10    # "len":I
    .end local v14    # "startIndex":I
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "selected"    # Z

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 606
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 608
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method

.method public updateRanges()Z
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 592
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method

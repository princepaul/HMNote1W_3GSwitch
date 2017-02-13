.class public abstract Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "SimSelectionCallOptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;,
        Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    }
.end annotation


# static fields
.field private static final MAKE_CALL_REASON_ASK:I = 0x5

.field private static final MAKE_CALL_REASON_ASSOCIATE_MISSING:I = 0x6

.field private static final MAKE_CALL_REASON_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimSelectionCallOptionHandler"


# instance fields
.field private mAssociateMissingCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mAssociateMissingClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAssociateMissingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

.field private mReasonAskCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mReasonAskClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mReasonAskDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mRequest:Lcom/mediatek/calloption/Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    .line 534
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 557
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$2;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 564
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$3;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 579
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 614
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$5;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$5;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 620
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$6;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$6;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->doSipCallOptionHandle()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    return-object v0
.end method

.method private doSipCallOptionHandle()V
    .locals 4

    .prologue
    .line 629
    const-string v1, "doSipCallOptionHandle()"

    invoke-static {v1}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 631
    const-string v1, "doSipCallOptionHandle(), mRequest.getIntent() == null"

    invoke-static {v1}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "follow_sim_management"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sip"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 644
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getInternetCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1, v2}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 648
    const-string v0, "SimSelectionCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 32
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    .line 117
    const-string v3, "handleRequest()"

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 118
    const/16 v19, 0x0

    .line 119
    .local v19, "isVoiceMail":Z
    const-string v3, "voicemail:"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const/16 v19, 0x1

    .line 123
    :cond_0
    const/4 v3, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "com.android.phone.extra.slot"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v3, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 411
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "number":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;ILjava/lang/String;JLjava/lang/Object;)V

    .line 137
    .local v2, "callbackArgs":Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.ORIGINAL_SIM_ID"

    const-wide/16 v6, -0x5

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    .line 140
    .local v21, "originalSim":J
    const-wide/16 v27, -0x5

    .line 141
    .local v27, "suggestedSim":J
    const-wide/16 v9, -0x5

    .line 142
    .local v9, "associateSim":J
    const/4 v11, 0x0

    .line 143
    .local v11, "associateSimInserts":I
    const/16 v23, 0x0

    .line 145
    .local v23, "originalSimInsert":Z
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v25

    .line 147
    .local v25, "simInfoWrapper":Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_call_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    .line 150
    .local v14, "defaultSim":J
    const/16 v24, 0x0

    .line 151
    .local v24, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mediatek/calloption/SimAssociateHandler;->query(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 152
    .local v13, "associateSims":Ljava/util/ArrayList;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/16 v16, 0x1

    .line 153
    .local v16, "hasAssociateSims":Z
    :goto_1
    if-eqz v16, :cond_5

    .line 154
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 155
    .local v20, "item":Ljava/lang/Object;
    check-cast v20, Ljava/lang/Integer;

    .end local v20    # "item":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 156
    .local v29, "temp":I
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v26

    .line 157
    .local v26, "slot":I
    if-ltz v26, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    add-int/lit8 v11, v11, 0x1

    .line 159
    move/from16 v0, v29

    int-to-long v9, v0

    goto :goto_2

    .line 152
    .end local v16    # "hasAssociateSims":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v26    # "slot":I
    .end local v29    # "temp":I
    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    .line 164
    .restart local v16    # "hasAssociateSims":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_internet_call_value"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 168
    .local v18, "internetEnableSetting":I
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v3

    if-nez v3, :cond_7

    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-eqz v3, :cond_7

    .line 173
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_6

    .line 175
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 176
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 182
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 179
    :cond_6
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 180
    const-wide/16 v3, -0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_3

    .line 186
    :cond_7
    const-wide/16 v3, -0x5

    cmp-long v3, v14, v3

    if-nez v3, :cond_8

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 190
    :cond_8
    const-wide/16 v3, -0x5

    cmp-long v3, v21, v3

    if-eqz v3, :cond_9

    .line 191
    move-wide/from16 v0, v21

    long-to-int v3, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v26

    .line 192
    .restart local v26    # "slot":I
    if-ltz v26, :cond_a

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v23, 0x1

    .line 193
    :goto_4
    const-wide/16 v3, -0x2

    cmp-long v3, v21, v3

    if-nez v3, :cond_9

    .line 194
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_b

    const/16 v23, 0x1

    .line 198
    .end local v26    # "slot":I
    :cond_9
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeVoiceCall, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originalSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", defaultSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", associateSims = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 202
    const-wide/16 v3, -0x1

    cmp-long v3, v14, v3

    if-nez v3, :cond_11

    .line 211
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_c

    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v3

    if-nez v3, :cond_c

    .line 212
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 192
    .restart local v26    # "slot":I
    :cond_a
    const/16 v23, 0x0

    goto :goto_4

    .line 194
    :cond_b
    const/16 v23, 0x0

    goto :goto_5

    .line 218
    .end local v26    # "slot":I
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "always, associateSimInserts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " originalSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 219
    const/4 v3, 0x1

    if-le v11, v3, :cond_f

    .line 220
    const-wide/16 v27, -0x5

    .line 228
    :cond_d
    :goto_6
    if-eqz v19, :cond_e

    .line 229
    const-wide/16 v27, -0x5

    .line 232
    :cond_e
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 233
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 221
    :cond_f
    const/4 v3, 0x1

    if-ne v11, v3, :cond_10

    .line 222
    move-wide/from16 v27, v9

    goto :goto_6

    .line 223
    :cond_10
    if-eqz v23, :cond_d

    .line 224
    move-wide/from16 v27, v21

    goto :goto_6

    .line 239
    :cond_11
    if-nez v16, :cond_13

    const-wide/16 v3, -0x5

    cmp-long v3, v21, v3

    if-eqz v3, :cond_13

    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-nez v3, :cond_13

    cmp-long v3, v21, v14

    if-eqz v3, :cond_13

    .line 242
    if-eqz v23, :cond_12

    .line 243
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 247
    :goto_7
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 245
    :cond_12
    const-wide/16 v3, -0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_7

    .line 253
    :cond_13
    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-nez v3, :cond_19

    .line 254
    if-nez v16, :cond_14

    const-wide/16 v3, -0x5

    cmp-long v3, v21, v3

    if-eqz v3, :cond_18

    const-wide/16 v3, -0x2

    cmp-long v3, v21, v3

    if-eqz v3, :cond_18

    .line 257
    :cond_14
    const/4 v3, 0x1

    if-le v11, v3, :cond_16

    .line 258
    const-wide/16 v27, -0x5

    .line 265
    :cond_15
    :goto_8
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 266
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 267
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 259
    :cond_16
    const/4 v3, 0x1

    if-ne v11, v3, :cond_17

    .line 260
    move-wide/from16 v27, v9

    goto :goto_8

    .line 261
    :cond_17
    if-eqz v23, :cond_15

    .line 262
    move-wide/from16 v27, v21

    goto :goto_8

    .line 270
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->doSipCallOptionHandle()V

    goto/16 :goto_0

    .line 275
    :cond_19
    const-wide/16 v3, -0x5

    cmp-long v3, v21, v3

    if-nez v3, :cond_1a

    if-nez v16, :cond_1a

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deaultSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 277
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 278
    iput-wide v14, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 285
    :cond_1a
    const-wide/16 v3, -0x5

    cmp-long v3, v21, v3

    if-eqz v3, :cond_1e

    if-nez v16, :cond_1e

    .line 287
    cmp-long v3, v14, v21

    if-eqz v3, :cond_1b

    if-nez v23, :cond_1c

    .line 289
    :cond_1b
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 290
    iput-wide v14, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 291
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 296
    :cond_1c
    const-wide/16 v27, -0x5

    .line 297
    if-eqz v23, :cond_1d

    .line 298
    move-wide/from16 v27, v21

    .line 300
    :cond_1d
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 301
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 302
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 307
    :cond_1e
    const-wide/16 v3, -0x5

    cmp-long v3, v21, v3

    if-nez v3, :cond_24

    if-eqz v16, :cond_24

    .line 309
    const/4 v3, 0x2

    if-lt v11, v3, :cond_1f

    .line 310
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 311
    const-wide/16 v3, -0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 312
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 316
    :cond_1f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 317
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    .line 330
    :cond_20
    :goto_9
    const/4 v3, 0x1

    if-ne v11, v3, :cond_24

    .line 331
    cmp-long v3, v14, v9

    if-nez v3, :cond_23

    .line 332
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 333
    iput-wide v14, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 338
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 318
    :cond_21
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_20

    .line 320
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 321
    .restart local v20    # "item":Ljava/lang/Object;
    check-cast v20, Ljava/lang/Integer;

    .end local v20    # "item":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 322
    .restart local v29    # "temp":I
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v26

    .line 323
    .restart local v26    # "slot":I
    if-ltz v26, :cond_22

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 324
    move/from16 v0, v29

    int-to-long v9, v0

    .line 325
    goto :goto_9

    .line 335
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v26    # "slot":I
    .end local v29    # "temp":I
    :cond_23
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 336
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_a

    .line 344
    :cond_24
    cmp-long v3, v14, v21

    if-nez v3, :cond_25

    cmp-long v3, v14, v9

    if-nez v3, :cond_25

    .line 345
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 346
    iput-wide v14, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 352
    :cond_25
    cmp-long v3, v14, v21

    if-nez v3, :cond_26

    if-eqz v16, :cond_26

    if-nez v11, :cond_26

    .line 353
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 354
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 360
    :cond_26
    const-wide/16 v3, -0x5

    cmp-long v3, v21, v3

    if-eqz v3, :cond_27

    if-eqz v16, :cond_27

    if-nez v11, :cond_27

    .line 362
    move-wide/from16 v0, v21

    long-to-int v3, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v26

    .line 363
    .restart local v26    # "slot":I
    if-ltz v26, :cond_27

    cmp-long v3, v21, v14

    if-eqz v3, :cond_27

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 365
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 366
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 367
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 372
    .end local v26    # "slot":I
    :cond_27
    const/4 v3, 0x2

    if-lt v11, v3, :cond_28

    .line 373
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 374
    const-wide/16 v3, -0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 375
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 379
    :cond_28
    const/4 v3, 0x1

    if-ne v11, v3, :cond_29

    .line 380
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 381
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 410
    .end local v21    # "originalSim":J
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 384
    .restart local v21    # "originalSim":J
    :cond_29
    const-wide/16 v3, -0x5

    cmp-long v3, v9, v3

    if-nez v3, :cond_2a

    .line 385
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    .line 387
    :cond_2a
    iput-wide v9, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 388
    const/4 v3, 0x6

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 389
    new-instance v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    .line 390
    .local v12, "associateSimMissingArgs":Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2e

    .line 391
    const/4 v3, 0x0

    iput v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->type:I

    .line 393
    if-eqz v23, :cond_2c

    move-wide/from16 v30, v21

    .line 395
    .local v30, "viaSimId":J
    :goto_c
    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-nez v3, :cond_2d

    .line 396
    const-wide/16 v3, -0x2

    iput-wide v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->suggested:J

    .line 408
    .end local v21    # "originalSim":J
    .end local v30    # "viaSimId":J
    :cond_2b
    :goto_d
    iput-object v12, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_b

    .restart local v21    # "originalSim":J
    :cond_2c
    move-wide/from16 v30, v14

    .line 393
    goto :goto_c

    .line 398
    .restart local v30    # "viaSimId":J
    :cond_2d
    move-wide/from16 v0, v30

    long-to-int v3, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    iput-object v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    goto :goto_d

    .line 401
    .end local v30    # "viaSimId":J
    :cond_2e
    const/4 v3, 0x1

    iput v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->type:I

    .line 402
    if-eqz v23, :cond_2f

    .end local v21    # "originalSim":J
    :goto_e
    move-wide/from16 v0, v21

    iput-wide v0, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->suggested:J

    .line 403
    const-wide/16 v3, -0x1

    cmp-long v3, v14, v3

    if-eqz v3, :cond_2b

    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-eqz v3, :cond_2b

    .line 405
    long-to-int v3, v14

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    iput-object v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    goto :goto_d

    .restart local v21    # "originalSim":J
    :cond_2f
    move-wide/from16 v21, v14

    .line 402
    goto :goto_e
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, dialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    move-object v0, p1

    .line 482
    check-cast v0, Landroid/app/AlertDialog;

    .line 483
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 484
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 487
    .local v2, "slot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 488
    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 489
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 490
    invoke-direct {p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->doSipCallOptionHandle()V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 493
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v4, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3, v4}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method

.method public onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V
    .locals 14
    .param p1, "args"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMakeCall, reason = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " args = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 421
    iget v0, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    sparse-switch v0, :sswitch_data_0

    .line 468
    const-string v0, "onMakeCall: no match case found!"

    invoke-static {v0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 423
    :sswitch_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-wide v5, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    long-to-int v1, v5

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v13

    .line 427
    .local v13, "slot":I
    const/4 v0, -0x1

    if-ne v13, v0, :cond_1

    .line 428
    const/4 v13, 0x0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0, v1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 438
    .end local v13    # "slot":I
    :sswitch_1
    iget-object v0, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    if-nez v0, :cond_5

    const-wide/16 v2, -0x5

    .line 440
    .local v2, "suggestedSim":J
    :goto_1
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "com.android.phone.IS_IPCALL"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "com.android.phone.extra.international"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v4, v0, :cond_6

    .line 448
    .local v4, "addInternet":Z
    :goto_2
    const-string v0, "voicemail:"

    iget-object v5, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "com.mediatek.phone.extra.ims"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    :cond_3
    const/4 v4, 0x0

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    iget-object v5, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->showReasonAskDialog(Lcom/mediatek/calloption/Request;JZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 438
    .end local v2    # "suggestedSim":J
    .end local v4    # "addInternet":Z
    :cond_5
    iget-object v0, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .restart local v2    # "suggestedSim":J
    :cond_6
    move v4, v1

    .line 440
    goto :goto_2

    .line 458
    .end local v2    # "suggestedSim":J
    :sswitch_2
    iget-object v0, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    .line 459
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-wide v5, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    long-to-int v1, v5

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v7

    .line 460
    .local v7, "associateSimInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v6, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    iget-object v8, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->number:Ljava/lang/String;

    iget-object v9, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    iget-object v10, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v11, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v12, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->showAssociateMissingDialog(Lcom/mediatek/calloption/Request;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract showAssociateMissingDialog(Lcom/mediatek/calloption/Request;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method

.method protected abstract showReasonAskDialog(Lcom/mediatek/calloption/Request;JZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method

.class Lcom/mediatek/settings/CellBroadcastSettings$4;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CellBroadcastSettings;->showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;

.field final synthetic val$channelName:Landroid/widget/EditText;

.field final synthetic val$channelNum:Landroid/widget/EditText;

.field final synthetic val$channelState:Landroid/widget/CheckBox;

.field final synthetic val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/mediatek/settings/CellBroadcastChannel;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iput-object p2, p0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$channelName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$channelNum:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$channelState:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$channelName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 426
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$channelNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 427
    .local v14, "num":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$channelState:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 428
    .local v9, "checked":Z
    const-string v10, ""

    .line 429
    .local v10, "errorInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelName(Ljava/lang/String;)Z
    invoke-static {v1, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->access$300(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const v4, 0x7f0b00b6

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 432
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelNumber(Ljava/lang/String;)Z
    invoke-static {v1, v14}, Lcom/mediatek/settings/CellBroadcastSettings;->access$400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const v4, 0x7f0b00b5

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 435
    :cond_1
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 437
    .local v13, "newChannelId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v2

    .line 438
    .local v2, "tempOldChannelId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v3

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelIdExist(II)Z
    invoke-static {v1, v13, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1500(Lcom/mediatek/settings/CellBroadcastSettings;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 439
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 440
    new-instance v12, Lcom/mediatek/settings/CellBroadcastChannel;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v1}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v1

    invoke-direct {v12, v1, v13, v11, v9}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 442
    .local v12, "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 443
    invoke-virtual {v12}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v16

    .line 444
    .local v16, "tempNewChannelId":I
    const/4 v1, 0x2

    new-array v15, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 445
    .local v15, "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    const/4 v7, 0x0

    new-instance v1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v3, v2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v1, v15, v7

    .line 447
    const/4 v1, 0x1

    new-instance v3, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v12}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v8

    move/from16 v4, v16

    move/from16 v5, v16

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v3, v15, v1

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    invoke-static {v1, v3, v12}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1600(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    invoke-static {v1, v15}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1100(Lcom/mediatek/settings/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 460
    .end local v2    # "tempOldChannelId":I
    .end local v12    # "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v13    # "newChannelId":I
    .end local v15    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v16    # "tempNewChannelId":I
    :goto_0
    return-void

    .line 452
    .restart local v2    # "tempOldChannelId":I
    .restart local v12    # "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .restart local v13    # "newChannelId":I
    .restart local v15    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .restart local v16    # "tempNewChannelId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    goto :goto_0

    .line 455
    .end local v12    # "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v15    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v16    # "tempNewChannelId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const v4, 0x7f0b00b8

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    .end local v2    # "tempOldChannelId":I
    .end local v13    # "newChannelId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/CellBroadcastSettings$4;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)V

    goto :goto_0
.end method

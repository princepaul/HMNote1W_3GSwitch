.class Lcom/mediatek/settings/CellBroadcastSettings$3;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CellBroadcastSettings;->showAddChannelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;

.field final synthetic val$setView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iput-object p2, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->val$setView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 341
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->val$setView:Landroid/view/View;

    const v11, 0x7f07008a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 343
    .local v2, "channelName":Landroid/widget/EditText;
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->val$setView:Landroid/view/View;

    const v11, 0x7f07008b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 345
    .local v3, "channelNum":Landroid/widget/EditText;
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->val$setView:Landroid/view/View;

    const v11, 0x7f07008c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 347
    .local v4, "channelState":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, "num":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 351
    .local v5, "checked":Z
    const-string v6, ""

    .line 352
    .local v6, "errorInfo":Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelName(Ljava/lang/String;)Z
    invoke-static {v10, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->access$300(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 353
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const v12, 0x7f0b00b6

    invoke-virtual {v11, v12}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 355
    :cond_0
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelNumber(Ljava/lang/String;)Z
    invoke-static {v10, v8}, Lcom/mediatek/settings/CellBroadcastSettings;->access$400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 356
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const v12, 0x7f0b00b5

    invoke-virtual {v11, v12}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 358
    :cond_1
    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 359
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 360
    .local v1, "channelId":I
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelIdExist(I)Z
    invoke-static {v10, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$500(Lcom/mediatek/settings/CellBroadcastSettings;I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 361
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 362
    new-instance v0, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v0, v1, v7, v5}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 363
    .local v0, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v10, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$600(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v9

    .line 364
    .local v9, "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z
    invoke-static {v10, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->access$700(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 365
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/mediatek/settings/CellBroadcastSettings;->access$800(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/mediatek/settings/CellBroadcastSettings;->access$900(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelUIList()V
    invoke-static {v10}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1000(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 368
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 369
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    invoke-static {v10, v9}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1100(Lcom/mediatek/settings/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 380
    .end local v0    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v1    # "channelId":I
    .end local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    :goto_0
    return-void

    .line 372
    .restart local v0    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    .restart local v1    # "channelId":I
    .restart local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_3
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v10}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    goto :goto_0

    .line 375
    .end local v0    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_4
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const v11, 0x7f0b00b8

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(I)V
    invoke-static {v10, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1300(Lcom/mediatek/settings/CellBroadcastSettings;I)V

    goto :goto_0

    .line 378
    .end local v1    # "channelId":I
    :cond_5
    iget-object v10, p0, Lcom/mediatek/settings/CellBroadcastSettings$3;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V
    invoke-static {v10, v6}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)V

    goto :goto_0
.end method

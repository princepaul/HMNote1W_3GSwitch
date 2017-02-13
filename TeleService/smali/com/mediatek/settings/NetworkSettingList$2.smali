.class Lcom/mediatek/settings/NetworkSettingList$2;
.super Landroid/os/Handler;
.source "NetworkSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkSettingList;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NetworkSettingList;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 201
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-boolean v1, v1, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "networkslist activity in background, just retrun"

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 210
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED || mSlotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$500(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/List;I)V

    goto :goto_0

    .line 219
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED_2 || mSlotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 224
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$500(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/List;I)V

    goto :goto_0

    .line 228
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED_3 || mSlotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 233
    :cond_4
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$500(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 236
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED_4 || mSlotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$500(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 245
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SELECTION_LTEMMDC_DONE mFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mFlag:Lcom/mediatek/settings/NetworkSettingList$State;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$600(Lcom/mediatek/settings/NetworkSettingList;)Lcom/mediatek/settings/NetworkSettingList$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mFlag:Lcom/mediatek/settings/NetworkSettingList$State;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$600(Lcom/mediatek/settings/NetworkSettingList;)Lcom/mediatek/settings/NetworkSettingList$State;

    move-result-object v1

    sget-object v2, Lcom/mediatek/settings/NetworkSettingList$State;->THREEORFOURG:Lcom/mediatek/settings/NetworkSettingList$State;

    if-ne v1, v2, :cond_0

    .line 248
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "EVENT_NETWORK_SELECTION_LTEMMDC_DONE hideProgressPanel"

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    invoke-virtual {v1, v5}, Lcom/mediatek/settings/NetworkSettingList;->removeDialog(I)V

    .line 251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 252
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 254
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "EVENT_NETWORK_SELECTION_LTEMMDC_DONE manual network selection: failed!"

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$700(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 259
    :cond_6
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "EVENT_NETWORK_SELECTION_LTEMMDC_DONE manual network selection: succeeded!"

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionSucceeded()V
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$800(Lcom/mediatek/settings/NetworkSettingList;)V

    goto/16 :goto_0

    .line 265
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SELECTION_DONE mFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mFlag:Lcom/mediatek/settings/NetworkSettingList$State;
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$600(Lcom/mediatek/settings/NetworkSettingList;)Lcom/mediatek/settings/NetworkSettingList$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "hideProgressPanel"

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    invoke-virtual {v1, v5}, Lcom/mediatek/settings/NetworkSettingList;->removeDialog(I)V

    .line 282
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 283
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 285
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "manual network selection: failed!"

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$700(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 290
    :cond_7
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "manual network selection: succeeded!"

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionSucceeded()V
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$800(Lcom/mediatek/settings/NetworkSettingList;)V

    goto/16 :goto_0

    .line 296
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const-string v1, "phone"

    const-string v2, "EVENT_SERVICE_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/settings/NetworkSettingList;->access$200(Lcom/mediatek/settings/NetworkSettingList;Z)V

    goto/16 :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0xc8 -> :sswitch_5
        0x190 -> :sswitch_6
        0x7d0 -> :sswitch_4
    .end sparse-switch
.end method

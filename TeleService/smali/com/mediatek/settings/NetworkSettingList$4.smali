.class Lcom/mediatek/settings/NetworkSettingList$4;
.super Lcom/android/phone/INetworkQueryServiceCallback$Stub;
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
    .line 342
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Ljava/util/List;I)V
    .locals 5
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v3, "notifying message loop of query completion."

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 352
    const/16 v1, 0x64

    .line 353
    .local v1, "what":I
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 367
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v4}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 371
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkSettingList;->access$1100(Lcom/mediatek/settings/NetworkSettingList;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void

    .line 355
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_0
    const/16 v1, 0x64

    .line 356
    goto :goto_0

    .line 358
    :pswitch_1
    const/16 v1, 0x65

    .line 359
    goto :goto_0

    .line 361
    :pswitch_2
    const/16 v1, 0x66

    .line 362
    goto :goto_0

    .line 364
    :pswitch_3
    const/16 v1, 0x67

    .line 365
    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

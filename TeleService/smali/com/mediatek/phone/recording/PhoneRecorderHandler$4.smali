.class Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRecorderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/recording/PhoneRecorderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 372
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    :cond_0
    const-string v2, "storage_volume"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 376
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    if-nez v1, :cond_2

    .line 377
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    const-string v3, "storageVolume is null"

    # invokes: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderHandler;Ljava/lang/String;)V

    .line 398
    .end local v1    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_1
    :goto_0
    return-void

    .line 380
    .restart local v1    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_2
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "currentPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mRecordStoragePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$800(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mRecordStoragePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$800(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 382
    :cond_3
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    const-string v3, "not current used storage unmount or eject"

    # invokes: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_4
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mPhoneRecorderState:I
    invoke-static {v2}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$500(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)I

    move-result v2

    if-ne v4, v2, :cond_1

    .line 386
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mRecordType:I
    invoke-static {v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$900(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 387
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    const-string v3, "Current used sd card is ejected, stop voice record"

    # invokes: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderHandler;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    const/4 v3, 0x0

    # invokes: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVoiceRecord(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$1000(Lcom/mediatek/phone/recording/PhoneRecorderHandler;Z)V

    goto :goto_0

    .line 389
    :cond_5
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mRecordType:I
    invoke-static {v2}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$900(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)I

    move-result v2

    if-eq v4, v2, :cond_6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mRecordType:I
    invoke-static {v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$900(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 391
    :cond_6
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    const-string v3, "Current used sd card is ejected, stop video record"

    # invokes: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderHandler;Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$4;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    invoke-virtual {v2}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVideoRecord()V

    goto :goto_0
.end method

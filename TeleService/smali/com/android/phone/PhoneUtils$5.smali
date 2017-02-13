.class final Lcom/android/phone/PhoneUtils$5;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->showSelectCallDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5411
    move-object v0, p1

    check-cast v0, Lmiui/app/AlertDialog;

    .line 5412
    .local v0, "alert":Lmiui/app/AlertDialog;
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 5413
    .local v5, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v5, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 5414
    .local v1, "call":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 5415
    .local v3, "firstBgCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 5416
    .local v6, "secondBgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    .line 5417
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 5418
    .local v4, "firstPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 5420
    .local v7, "secondPhone":Lcom/android/internal/telephony/Phone;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select call at phone :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " firstPhone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " secondPhone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$400(Ljava/lang/String;)V

    .line 5424
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-ne v8, v4, :cond_2

    .line 5427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    # setter for: Lcom/android/phone/PhoneUtils;->mLastClickActionTime:J
    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->access$902(J)J

    .line 5428
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5430
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5441
    .end local v4    # "firstPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "secondPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5442
    return-void

    .line 5431
    .restart local v4    # "firstPhone":Lcom/android/internal/telephony/Phone;
    .restart local v7    # "secondPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v2

    .line 5432
    .local v2, "ce":Lcom/android/internal/telephony/CallStateException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectWhichCallActive switch exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$400(Ljava/lang/String;)V

    goto :goto_0

    .line 5435
    .end local v2    # "ce":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 5438
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->handleUnholdAndEnd(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

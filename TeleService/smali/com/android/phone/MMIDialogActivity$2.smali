.class Lcom/android/phone/MMIDialogActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MMIDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MMIDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MMIDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MMIDialogActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/MMIDialogActivity$2;->this$0:Lcom/android/phone/MMIDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/MMIDialogActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: cancel the request dialog. action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/phone/MMIDialogActivity$2;->this$0:Lcom/android/phone/MMIDialogActivity;

    # getter for: Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/MMIDialogActivity;->access$300(Lcom/android/phone/MMIDialogActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity$2;->this$0:Lcom/android/phone/MMIDialogActivity;

    iget v3, v3, Lcom/android/phone/MMIDialogActivity;->mSlot:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z

    .line 202
    iget-object v2, p0, Lcom/android/phone/MMIDialogActivity$2;->this$0:Lcom/android/phone/MMIDialogActivity;

    # invokes: Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V
    invoke-static {v2}, Lcom/android/phone/MMIDialogActivity;->access$400(Lcom/android/phone/MMIDialogActivity;)V

    .line 203
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cancelUssdDialog()V

    .line 204
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dismissUssdDialog()V

    .line 205
    sget-object v2, Lcom/android/phone/PhoneUtils;->sUssdActivity:Lcom/mediatek/phone/UssdAlertActivity;

    if-nez v2, :cond_1

    .line 206
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sNoNeedStartUssdActivity:Z

    .line 212
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v1    # "reason":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sNoNeedStartUssdActivity:Z

    goto :goto_0
.end method

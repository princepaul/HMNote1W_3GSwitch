.class Lcom/android/phone/settings/NetworkSetting$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/phone/settings/NetworkSetting$4;->this$0:Lcom/android/phone/settings/NetworkSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 470
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {p2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    .line 473
    .local v0, "slotId":I
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting$4;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mSlotId:I
    invoke-static {v3}, Lcom/android/phone/settings/NetworkSetting;->access$1100(Lcom/android/phone/settings/NetworkSetting;)I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 488
    .end local v0    # "slotId":I
    :cond_0
    :goto_0
    return-void

    .line 476
    .restart local v0    # "slotId":I
    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting$4;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/settings/NetworkSetting;->access$1200(Lcom/android/phone/settings/NetworkSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 478
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 479
    .local v2, "state":I
    if-nez v2, :cond_0

    .line 480
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting$4;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/settings/NetworkSetting;->access$1200(Lcom/android/phone/settings/NetworkSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting$4;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/settings/NetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting$4;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z
    invoke-static {v3}, Lcom/android/phone/settings/NetworkSetting;->access$300(Lcom/android/phone/settings/NetworkSetting;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting$4;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const/4 v4, 0x0

    # setter for: Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z
    invoke-static {v3, v4}, Lcom/android/phone/settings/NetworkSetting;->access$302(Lcom/android/phone/settings/NetworkSetting;Z)Z

    .line 483
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting$4;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # invokes: Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v3}, Lcom/android/phone/settings/NetworkSetting;->access$600(Lcom/android/phone/settings/NetworkSetting;)V

    goto :goto_0
.end method

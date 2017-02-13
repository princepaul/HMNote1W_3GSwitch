.class Lcom/android/phone/settings/GsmUmtsOptions$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmUmtsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/GsmUmtsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/GsmUmtsOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/GsmUmtsOptions;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    # getter for: Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/settings/GsmUmtsOptions;->access$000(Lcom/android/phone/settings/GsmUmtsOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    # getter for: Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/settings/GsmUmtsOptions;->access$100(Lcom/android/phone/settings/GsmUmtsOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {p2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 187
    .local v1, "slotId":I
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    # getter for: Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I
    invoke-static {v3}, Lcom/android/phone/settings/GsmUmtsOptions;->access$200(Lcom/android/phone/settings/GsmUmtsOptions;)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 188
    # getter for: Lcom/android/phone/settings/GsmUmtsOptions;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/GsmUmtsOptions;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mSimStateReceiver: slotId from intent is invalid, not equals mSlotId."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "slotId":I
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "slotId":I
    :cond_1
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "state":Ljava/lang/String;
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    # getter for: Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/settings/GsmUmtsOptions;->access$100(Lcom/android/phone/settings/GsmUmtsOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    # getter for: Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/settings/GsmUmtsOptions;->access$000(Lcom/android/phone/settings/GsmUmtsOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 198
    :cond_2
    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    # invokes: Lcom/android/phone/settings/GsmUmtsOptions;->isIccCardActivate()Z
    invoke-static {v3}, Lcom/android/phone/settings/GsmUmtsOptions;->access$400(Lcom/android/phone/settings/GsmUmtsOptions;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    # getter for: Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/settings/GsmUmtsOptions;->access$100(Lcom/android/phone/settings/GsmUmtsOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 201
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions$1;->this$0:Lcom/android/phone/settings/GsmUmtsOptions;

    # getter for: Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/settings/GsmUmtsOptions;->access$000(Lcom/android/phone/settings/GsmUmtsOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

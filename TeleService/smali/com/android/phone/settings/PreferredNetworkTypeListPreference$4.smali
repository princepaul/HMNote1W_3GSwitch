.class Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;
.super Landroid/content/BroadcastReceiver;
.source "PreferredNetworkTypeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "iccState":Ljava/lang/String;
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {p2, v2}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 372
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I
    invoke-static {v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$700(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const-string v2, "LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->updatePreferredNetworkTypes()V
    invoke-static {v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$800(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V

    .line 378
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$900(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 379
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V
    invoke-static {v2, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$1000(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Landroid/preference/Preference;)V

    goto :goto_0
.end method

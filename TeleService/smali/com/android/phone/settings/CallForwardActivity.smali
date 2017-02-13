.class public Lcom/android/phone/settings/CallForwardActivity;
.super Lmiui/app/Activity;
.source "CallForwardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v5

    invoke-static {v4, v5}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    .line 29
    .local v3, "slotId":I
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 30
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 31
    .local v2, "phoneType":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 33
    const-class v4, Lcom/android/phone/settings/CdmaCallForwardOptions;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    :goto_1
    invoke-static {v0, v3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallForwardActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardActivity;->finish()V

    goto :goto_0

    .line 35
    :cond_1
    const-class v4, Lcom/android/phone/settings/GsmUmtsCallForwardOptions;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method

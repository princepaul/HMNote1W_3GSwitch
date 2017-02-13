.class public Lcom/android/phone/settings/CallWaitingActivity;
.super Lmiui/preference/PreferenceActivity;
.source "CallWaitingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallWaitingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v4

    invoke-static {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    .line 28
    .local v2, "slotId":I
    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 30
    .local v1, "phoneType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 31
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallWaitingActivity;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallWaitingActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/phone/settings/CallWaitingActivity;->finish()V

    goto :goto_0
.end method

.class public Lcom/android/phone/settings/GsmUmtsCallOptions;
.super Lmiui/preference/PreferenceActivity;
.source "GsmUmtsCallOptions.java"


# static fields
.field private static final BUTTON_CF_EXPAND_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_MORE_EXPAND_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final LOG_TAG:Ljava/lang/String; = "GsmUmtsCallOptions"


# instance fields
.field private final DBG:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscription:I

.field private subscriptionPrefCFE:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->DBG:Z

    .line 43
    iput v0, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f050019

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsCallOptions;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->mSubscription:I

    .line 56
    const-string v1, "button_cf_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->subscriptionPrefCFE:Landroid/preference/PreferenceScreen;

    .line 57
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->subscriptionPrefCFE:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->mSubscription:I

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 59
    const-string v1, "button_more_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 61
    .local v0, "subscriptionPrefAdditionSettings":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->mSubscription:I

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 63
    const-string v1, "GsmUmtsCallOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting GsmUmtsCallOptions subscription ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    iget v1, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->mSubscription:I

    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 67
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 68
    const-string v1, "GsmUmtsCallOptions"

    const-string v2, "Non GSM Phone!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 72
    :cond_0
    return-void
.end method

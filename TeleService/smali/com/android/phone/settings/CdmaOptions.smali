.class public Lcom/android/phone/settings/CdmaOptions;
.super Ljava/lang/Object;
.source "CdmaOptions.java"


# static fields
.field private static final BUTTON_CDMA_ACTIVATE_DEVICE_KEY:Ljava/lang/String; = "cdma_activate_device_key"

.field private static final BUTTON_CDMA_SUBSCRIPTION_KEY:Ljava/lang/String; = "cdma_subscription_key"

.field private static final BUTTON_CDMA_SYSTEM_SELECT_KEY:Ljava/lang/String; = "cdma_system_select_key"

.field private static final BUTTON_PREFER_NETWORK_TYPE_KEY:Ljava/lang/String; = "button_prefer_network_type_key"

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaOptions"


# instance fields
.field private mButtonCdmaSubscription:Lcom/android/phone/settings/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 50
    iput-object p2, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 51
    iput-object p3, p0, Lcom/android/phone/settings/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaOptions;->create()V

    .line 53
    return-void
.end method

.method private deviceSupportsNvAndRuim()Z
    .locals 9

    .prologue
    .line 85
    const-string v7, "ril.subscription.types"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "subscriptionsSupported":Ljava/lang/String;
    const/4 v3, 0x0

    .line 87
    .local v3, "nvSupported":Z
    const/4 v4, 0x0

    .line 89
    .local v4, "ruimSupported":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/settings/CdmaOptions;->log(Ljava/lang/String;)V

    .line 90
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 93
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 94
    .local v5, "subscriptionType":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 95
    const-string v7, "NV"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 96
    const/4 v3, 0x1

    .line 98
    :cond_0
    const-string v7, "RUIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 99
    const/4 v4, 0x1

    .line 93
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "subscriptionType":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ruimSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/settings/CdmaOptions;->log(Ljava/lang/String;)V

    .line 106
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected create()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 56
    iget-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 58
    iget-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "cdma_system_select_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    .line 61
    iget-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CdmaSubscriptionListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/settings/CdmaSubscriptionListPreference;

    .line 64
    iget-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 65
    invoke-direct {p0}, Lcom/android/phone/settings/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const-string v1, "Both NV and Ruim supported, ENABLE subscription type selection"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaOptions;->log(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/settings/CdmaSubscriptionListPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 75
    .local v0, "isLTE":Z
    :goto_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "cdma_activate_device_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    :cond_1
    return-void

    .line 69
    .end local v0    # "isLTE":Z
    :cond_2
    const-string v1, "Both NV and Ruim NOT supported, REMOVE subscription type selection"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaOptions;->log(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "cdma_subscription_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "CdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_system_select_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v1, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaOptions;->log(Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const-string v1, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_prefer_network_type_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/settings/CdmaSubscriptionListPreference;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/settings/CdmaSubscriptionListPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/settings/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 142
    :cond_1
    return-void
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/settings/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

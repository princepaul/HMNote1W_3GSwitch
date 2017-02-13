.class public Lcom/mediatek/settings/CallSettings$CallSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "CallSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CallSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallSettingsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private isOnlyVt()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "siminfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getBaseband(I)I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->addPreferencesFromResource(I)V

    .line 82
    const-string v1, "button_vedio_call_key"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sput-object v1, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 83
    const-string v1, "button_voice_call_key"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sput-object v1, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 85
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    .line 86
    .local v0, "voipSupported":Z
    if-eqz v0, :cond_0

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    sget-object v2, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 95
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_internet_call_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 98
    sget-object v1, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->isOnlyVt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 106
    const/4 v1, 0x1

    .line 108
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return v1

    .line 103
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 108
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

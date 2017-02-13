.class public Lcom/mediatek/settings/SipCallSetting;
.super Landroid/app/Activity;
.source "SipCallSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;
    }
.end annotation


# static fields
.field private static final BUTTON_SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options_key"

.field private static final BUTTON_SIP_CALL_OPTIONS_WIFI_ONLY:Ljava/lang/String; = "sip_call_options_wifi_only_key"

.field private static final SIP_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "sip_settings_category_key"

.field private static final TAG:Ljava/lang/String; = "Settings/SipCallSetting"

.field private static final TAG_SIP_SETTING_FRAGMENT:Ljava/lang/String; = "sip_setting"


# instance fields
.field private mAccountPreference:Landroid/preference/Preference;

.field private mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

.field private mListSipCallOptions:Landroid/preference/ListPreference;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/settings/SipCallSetting;Landroid/net/sip/SipManager;)Landroid/net/sip/SipManager;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;
    .param p1, "x1"    # Landroid/net/sip/SipManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/SipCallSetting;->mSipManager:Landroid/net/sip/SipManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/settings/SipCallSetting;Lcom/android/phone/sip/SipSharedPreferences;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;
    .param p1, "x1"    # Lcom/android/phone/sip/SipSharedPreferences;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/SipCallSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/SipCallSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/SipCallSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/settings/SipCallSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/SipCallSetting;->mAccountPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/SipCallSetting;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/SipCallSetting;->mAccountPreference:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$602(Lcom/mediatek/settings/SipCallSetting;Lcom/android/phone/sip/SipProfileDb;)Lcom/android/phone/sip/SipProfileDb;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;
    .param p1, "x1"    # Lcom/android/phone/sip/SipProfileDb;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/SipCallSetting;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/SipCallSetting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/settings/SipCallSetting;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/settings/SipCallSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/settings/SipCallSetting;->checkAndSetDefaultSim()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/SipCallSetting;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SipCallSetting;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/settings/SipCallSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    return-void
.end method

.method private checkAndSetDefaultSim()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_call_sim_setting"

    invoke-static {v3, v4, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 250
    .local v0, "defaultSim":J
    const-wide/16 v3, -0x2

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    .line 251
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 252
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 253
    .local v2, "sims":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_sim_setting"

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 283
    .end local v2    # "sims":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 263
    .restart local v2    # "sims":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_call_sim_setting"

    invoke-static {v3, v4, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 267
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 268
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_sim_setting"

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 272
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v3, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_sim_setting"

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 277
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_sim_setting"

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 6

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "sip_setting"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 225
    .local v0, "fragment":Landroid/preference/PreferenceFragment;
    const-string v4, "sip_call_options_key"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 227
    .local v2, "wifiAnd3G":Landroid/preference/ListPreference;
    const-string v4, "sip_call_options_wifi_only_key"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 229
    .local v3, "wifiOnly":Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 230
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    .end local v3    # "wifiOnly":Landroid/preference/ListPreference;
    :goto_0
    return-object v3

    .line 234
    .restart local v3    # "wifiOnly":Landroid/preference/ListPreference;
    :cond_0
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v2

    .line 235
    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "option":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 335
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/mediatek/settings/SipCallSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v6}, Lcom/android/phone/sip/SipSharedPreferences;->getReceivingCallsEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 292
    .local v2, "isReceiveCall":Z
    if-eqz p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez v2, :cond_2

    .line 314
    :cond_1
    monitor-exit p0

    return-void

    .line 295
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/settings/SipCallSetting;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v6}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v4

    .line 296
    .local v4, "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/sip/SipProfile;

    .line 297
    .local v3, "p":Landroid/net/sip/SipProfile;
    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "sipUri":Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/mediatek/settings/SipCallSetting;->updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Z)Landroid/net/sip/SipProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 300
    if-eqz p1, :cond_4

    .line 301
    :try_start_2
    iget-object v6, p0, Lcom/mediatek/settings/SipCallSetting;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v8}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_2
    .catch Landroid/net/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/net/sip/SipException;
    :try_start_3
    const-string v6, "Settings/SipCallSetting"

    const-string v7, "register failed"

    invoke-static {v6, v7, v0}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 291
    .end local v0    # "e":Landroid/net/sip/SipException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isReceiveCall":Z
    .end local v3    # "p":Landroid/net/sip/SipProfile;
    .end local v4    # "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    .end local v5    # "sipUri":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 304
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "isReceiveCall":Z
    .restart local v3    # "p":Landroid/net/sip/SipProfile;
    .restart local v4    # "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    .restart local v5    # "sipUri":Ljava/lang/String;
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/mediatek/settings/SipCallSetting;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v6, v5}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V

    .line 305
    iget-object v6, p0, Lcom/mediatek/settings/SipCallSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v6, v5}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    iget-object v6, p0, Lcom/mediatek/settings/SipCallSetting;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v6, v3}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V
    :try_end_4
    .catch Landroid/net/sip/SipException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Z)Landroid/net/sip/SipProfile;
    .locals 4
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .param p2, "enabled"    # Z

    .prologue
    .line 318
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v2, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    invoke-virtual {v2, p2}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 322
    .local v1, "newProfile":Landroid/net/sip/SipProfile;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 323
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2, v1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Settings/SipCallSetting"

    const-string v3, "updateAutoRegistrationFlag error"

    invoke-static {v2, v3, v0}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;-><init>()V

    const-string v3, "sip_setting"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 211
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 213
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting;->finish()V

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "enable_internet_call_value"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, "enable":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v4, :cond_2

    .line 185
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 187
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 197
    :cond_0
    :goto_0
    if-ne v0, v2, :cond_5

    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 198
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    .end local v0    # "enable":I
    :cond_1
    :goto_1
    return-void

    .line 191
    .restart local v0    # "enable":I
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/SipCallSetting;->mAccountPreference:Landroid/preference/Preference;

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 193
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 194
    iget-object v4, p0, Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;

    if-ne v0, v2, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 191
    goto :goto_2

    :cond_4
    move v1, v3

    .line 194
    goto :goto_3

    .line 199
    :cond_5
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 203
    .end local v0    # "enable":I
    :cond_6
    const-string v1, "Settings/SipCallSetting"

    const-string v2, "in onResume, don\'t support sip call"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

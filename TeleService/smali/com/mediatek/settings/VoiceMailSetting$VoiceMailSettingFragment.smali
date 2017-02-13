.class public Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "VoiceMailSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceMailSettingFragment"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/VoiceMailSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1380
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 1382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1385
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1386
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VoiceMailSetting;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1387
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VoiceMailSetting;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1, v2}, Lcom/mediatek/settings/VoiceMailSetting;->access$702(Lcom/mediatek/settings/VoiceMailSetting;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1388
    const v1, 0x7f05003e

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->addPreferencesFromResource(I)V

    .line 1390
    invoke-virtual {p0}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1391
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->initSlotId()V
    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->access$800(Lcom/mediatek/settings/VoiceMailSetting;)V

    .line 1397
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->initUIState()V
    invoke-static {v1}, Lcom/mediatek/settings/VoiceMailSetting;->access$900(Lcom/mediatek/settings/VoiceMailSetting;)V

    .line 1398
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    .line 1422
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    # getter for: Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->access$1100(Lcom/mediatek/settings/VoiceMailSetting;)Landroid/preference/ListPreference;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 1423
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->access$1200(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "currentProviderKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    iput-object v0, v5, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object v2, p2

    .line 1425
    check-cast v2, Ljava/lang/String;

    .line 1427
    .local v2, "newProviderKey":Ljava/lang/String;
    const-string v6, "Settings/VoiceMailSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM provider changes to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    iget-object v5, v5, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    iget-object v5, v5, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1432
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "No change "

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    .end local v0    # "currentProviderKey":Ljava/lang/String;
    .end local v2    # "newProviderKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 1438
    .restart local v0    # "currentProviderKey":Ljava/lang/String;
    .restart local v2    # "newProviderKey":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1439
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1440
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1441
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button_voicemail_provider_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    # getter for: Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I
    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->access$1300(Lcom/mediatek/settings/VoiceMailSetting;)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1442
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1445
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/mediatek/settings/VoiceMailSetting;->access$1400(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;)V

    .line 1447
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    iput-object v0, v5, Lcom/mediatek/settings/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1449
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    invoke-static {v5, v2}, Lcom/mediatek/settings/VoiceMailSetting;->access$1500(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;)Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 1458
    .local v3, "newProviderSettings":Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_3

    .line 1461
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "Saved preferences not found - invoking config"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    iput-boolean v8, v5, Lcom/mediatek/settings/VoiceMailSetting;->mVMProviderSettingsForced:Z

    goto :goto_0

    .line 1466
    :cond_3
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "Saved preferences found - switching to them"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    iput-boolean v8, v5, Lcom/mediatek/settings/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1470
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V
    invoke-static {v5, v2, v3}, Lcom/mediatek/settings/VoiceMailSetting;->access$1600(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VoiceMailSetting;

    # getter for: Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/mediatek/settings/VoiceMailSetting;->access$1000(Lcom/mediatek/settings/VoiceMailSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1405
    const-string v0, "Settings/VoiceMailSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking cfg intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailSettingFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/VoiceMailSetting;

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/VoiceMailSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1408
    const/4 v0, 0x1

    .line 1410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

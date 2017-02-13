.class public Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "OthersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/OthersSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OthersSettingsFragment"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/OthersSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    .line 99
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/phone/ext/ExtensionManager;->getOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;

    move-result-object v4

    # setter for: Lcom/mediatek/settings/OthersSettings;->mExtension:Lcom/mediatek/phone/ext/OthersSettingsExtension;
    invoke-static {v3, v4}, Lcom/mediatek/settings/OthersSettings;->access$102(Lcom/mediatek/settings/OthersSettings;Lcom/mediatek/phone/ext/OthersSettingsExtension;)Lcom/mediatek/phone/ext/OthersSettingsExtension;

    .line 100
    const v3, 0x7f050027

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->addPreferencesFromResource(I)V

    .line 101
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    const-string v4, "button_fdn_key"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    # setter for: Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;
    invoke-static {v3, v4}, Lcom/mediatek/settings/OthersSettings;->access$202(Lcom/mediatek/settings/OthersSettings;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 102
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    const-string v4, "minute_reminder_key"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;
    invoke-static {v3, v4}, Lcom/mediatek/settings/OthersSettings;->access$302(Lcom/mediatek/settings/OthersSettings;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 103
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    const-string v4, "dual_mic_key"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;
    invoke-static {v3, v4}, Lcom/mediatek/settings/OthersSettings;->access$402(Lcom/mediatek/settings/OthersSettings;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    const-string v4, "international_dialing_key"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;
    invoke-static {v3, v4}, Lcom/mediatek/settings/OthersSettings;->access$502(Lcom/mediatek/settings/OthersSettings;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 106
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mExtension:Lcom/mediatek/phone/ext/OthersSettingsExtension;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$100(Lcom/mediatek/settings/OthersSettings;)Lcom/mediatek/phone/ext/OthersSettingsExtension;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/ext/OthersSettingsExtension;->customizeCallRejectFeature(Landroid/preference/PreferenceScreen;)V

    .line 108
    const-string v3, "DUAL_MIC"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$400(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$300(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$300(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$400(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$400(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    const-string v4, "button_tty_mode_key"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    # setter for: Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v3, v4}, Lcom/mediatek/settings/OthersSettings;->access$602(Lcom/mediatek/settings/OthersSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 121
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$600(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 122
    const-string v3, "TTY"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 123
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$600(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$500(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 130
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$500(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    invoke-virtual {v3}, Lcom/mediatek/settings/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "international_dialing_key"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, "checkedStatus":I
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$500(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    if-eqz v1, :cond_8

    move v3, v5

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    const-string v3, "Settings/OthersSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume isChecked in DB:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v1    # "checkedStatus":I
    :cond_5
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    new-instance v4, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;
    invoke-static {v3, v4}, Lcom/mediatek/settings/OthersSettings;->access$702(Lcom/mediatek/settings/OthersSettings;Lcom/mediatek/settings/PreCheckForRunning;)Lcom/mediatek/settings/PreCheckForRunning;

    .line 139
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 140
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 142
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    :cond_6
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$800(Lcom/mediatek/settings/OthersSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void

    .line 125
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/mediatek/settings/OthersSettings;->access$600(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/OthersSettings;

    const/4 v4, 0x0

    # setter for: Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v3, v4}, Lcom/mediatek/settings/OthersSettings;->access$602(Lcom/mediatek/settings/OthersSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    goto/16 :goto_0

    .restart local v1    # "checkedStatus":I
    :cond_8
    move v3, v6

    .line 133
    goto/16 :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 164
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/settings/OthersSettings;->access$400(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/settings/OthersSettings;->access$400(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "Settings/OthersSettings"

    const-string v1, "onPreferenceChange mButtonDualmic turn on"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "0"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setDualMicMode(Ljava/lang/String;)V

    .line 183
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 169
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string v0, "Settings/OthersSettings"

    const-string v1, "onPreferenceChange mButtonDualmic turn off"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "1"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setDualMicMode(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/mediatek/settings/OthersSettings;->access$600(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # invokes: Lcom/mediatek/settings/OthersSettings;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    invoke-static {v0, p1, p2}, Lcom/mediatek/settings/OthersSettings;->access$1100(Lcom/mediatek/settings/OthersSettings;Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/settings/OthersSettings;->access$500(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    invoke-virtual {v0}, Lcom/mediatek/settings/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "international_dialing_key"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    :goto_1
    const-string v1, "Settings/OthersSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange mButtonInter turn :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    invoke-virtual {v0}, Lcom/mediatek/settings/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "international_dialing_key"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    invoke-virtual {v0}, Lcom/mediatek/settings/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "international_dialing_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/mediatek/settings/OthersSettings;->access$200(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 153
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # setter for: Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;
    invoke-static {v0, p2}, Lcom/mediatek/settings/OthersSettings;->access$902(Lcom/mediatek/settings/OthersSettings;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 154
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x1030079

    invoke-static {v1, v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/mediatek/settings/OthersSettings;->mSlotId:I
    invoke-static {v0, v1}, Lcom/mediatek/settings/OthersSettings;->access$1002(Lcom/mediatek/settings/OthersSettings;I)I

    .line 155
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mSlotId:I
    invoke-static {v0}, Lcom/mediatek/settings/OthersSettings;->access$1000(Lcom/mediatek/settings/OthersSettings;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mSlotId:I
    invoke-static {v0}, Lcom/mediatek/settings/OthersSettings;->access$1000(Lcom/mediatek/settings/OthersSettings;)I

    move-result v1

    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/OthersSettings;

    # getter for: Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;
    invoke-static {v0}, Lcom/mediatek/settings/OthersSettings;->access$700(Lcom/mediatek/settings/OthersSettings;)Lcom/mediatek/settings/PreCheckForRunning;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    .line 158
    :cond_0
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

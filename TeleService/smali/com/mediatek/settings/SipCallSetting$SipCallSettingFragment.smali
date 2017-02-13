.class public Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "SipCallSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/SipCallSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SipCallSettingFragment"
.end annotation


# instance fields
.field instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/SipCallSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 107
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/SipCallSetting;->mSipManager:Landroid/net/sip/SipManager;
    invoke-static {v1, v2}, Lcom/mediatek/settings/SipCallSetting;->access$002(Lcom/mediatek/settings/SipCallSetting;Landroid/net/sip/SipManager;)Landroid/net/sip/SipManager;

    .line 109
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    new-instance v2, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mediatek/settings/SipCallSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v1, v2}, Lcom/mediatek/settings/SipCallSetting;->access$102(Lcom/mediatek/settings/SipCallSetting;Lcom/android/phone/sip/SipSharedPreferences;)Lcom/android/phone/sip/SipSharedPreferences;

    .line 110
    const v1, 0x7f050039

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->addPreferencesFromResource(I)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    const-string v2, "open_sip_call_option_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/SipCallSetting;->access$202(Lcom/mediatek/settings/SipCallSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/settings/SipCallSetting;->access$200(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # invokes: Lcom/mediatek/settings/SipCallSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$400(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/SipCallSetting;->access$302(Lcom/mediatek/settings/SipCallSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 114
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    const-string v2, "sip_account_settings_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/SipCallSetting;->mAccountPreference:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/SipCallSetting;->access$502(Lcom/mediatek/settings/SipCallSetting;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 115
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    new-instance v2, Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mediatek/settings/SipCallSetting;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;
    invoke-static {v1, v2}, Lcom/mediatek/settings/SipCallSetting;->access$602(Lcom/mediatek/settings/SipCallSetting;Lcom/android/phone/sip/SipProfileDb;)Lcom/android/phone/sip/SipProfileDb;

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/mediatek/settings/SipCallSetting;->access$300(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    iget-object v1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SipCallSetting;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;
    invoke-static {v1, v2}, Lcom/mediatek/settings/SipCallSetting;->access$302(Lcom/mediatek/settings/SipCallSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 133
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/mediatek/settings/SipCallSetting;->access$300(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/SipCallSetting;

    # invokes: Lcom/mediatek/settings/SipCallSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V
    invoke-static {v0, p2}, Lcom/mediatek/settings/SipCallSetting;->access$900(Lcom/mediatek/settings/SipCallSetting;Ljava/lang/Object;)V

    .line 173
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 140
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$200(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mButtonSipCallOptions:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$200(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 143
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 144
    .local v1, "intEnable":I
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "enable_internet_call_value"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment$1;-><init>(Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;I)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 152
    if-ne v1, v3, :cond_2

    .line 153
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mAccountPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$500(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 154
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$300(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$300(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 165
    .end local v0    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v1    # "intEnable":I
    :cond_0
    :goto_1
    return v4

    .restart local v0    # "cp":Landroid/preference/CheckBoxPreference;
    :cond_1
    move v1, v4

    .line 143
    goto :goto_0

    .line 158
    .restart local v1    # "intEnable":I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # invokes: Lcom/mediatek/settings/SipCallSetting;->checkAndSetDefaultSim()V
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$800(Lcom/mediatek/settings/SipCallSetting;)V

    .line 159
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mAccountPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$500(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$300(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/SipCallSetting;

    # getter for: Lcom/mediatek/settings/SipCallSetting;->mListSipCallOptions:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/mediatek/settings/SipCallSetting;->access$300(Lcom/mediatek/settings/SipCallSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

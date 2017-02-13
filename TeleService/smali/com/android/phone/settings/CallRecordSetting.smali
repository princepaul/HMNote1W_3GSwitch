.class public Lcom/android/phone/settings/CallRecordSetting;
.super Lmiui/preference/PreferenceActivity;
.source "CallRecordSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AUTO_RECORD_CUSTOM_CATEGORY:Ljava/lang/String; = "auto_record_custom_category"

.field static final AUTO_RECORD_SCENARIO:Ljava/lang/String; = "button_auto_record_scenario"

.field static final AUTO_RECORD_SCENARIO_ALWAYS:I = 0x0

.field static final AUTO_RECORD_SCENARIO_CUSTOM:I = 0x1

.field private static final AUTO_RECORD_SWITCH:Ljava/lang/String; = "button_auto_record_call"

.field private static final AUTO_RECORD_UNKNOWN:Ljava/lang/String; = "button_auto_record_unknown"

.field private static final AUTO_RECORD_WHITELIST:Ljava/lang/String; = "button_call_record_auto_whitelist"

.field private static final AUTO_RECORD_YELLOWPAGE:Ljava/lang/String; = "button_auto_record_yellowpage"

.field private static final CALL_RECORDING_NOTIFICATION_SWITCHER:Ljava/lang/String; = "button_call_recording_notification"

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AutoRecordSetting"


# instance fields
.field private mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

.field private mCustomCategory:Landroid/preference/PreferenceCategory;

.field private mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

.field private mWhitelist:Lmiui/preference/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CallRecordSetting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallRecordSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V

    return-void
.end method

.method private checkRemovePreferences()V
    .locals 2

    .prologue
    .line 144
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/phone/settings/CallRecordSetting;->mCustomCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "button_auto_record_yellowpage"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    :cond_0
    return-void
.end method

.method private createScenarios()V
    .locals 8

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "button_auto_record_scenario"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 100
    .local v3, "scenario":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "scenarioStrings":[Ljava/lang/String;
    new-instance v1, Lcom/android/phone/settings/CallRecordSetting$1;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/settings/CallRecordSetting$1;-><init>(Lcom/android/phone/settings/CallRecordSetting;[Ljava/lang/String;)V

    .line 115
    .local v1, "listener":Landroid/preference/Preference$OnPreferenceClickListener;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 116
    new-instance v2, Lmiui/preference/RadioButtonPreference;

    invoke-direct {v2, p0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 117
    .local v2, "pref":Lmiui/preference/RadioButtonPreference;
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v2, v1}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    iget-object v5, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "pref":Lmiui/preference/RadioButtonPreference;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPosition(I)V

    .line 122
    return-void
.end method

.method public static isAutoRecordForAllOrCustom(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "button_auto_record_scenario"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, "index":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isAutoRecordForUnknown(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_auto_record_unknown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoRecordForYellowPage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_auto_record_yellowpage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAutoRecordOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_auto_record_call"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCallRecordNotificationOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_call_recording_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAutoRecord(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Z

    .prologue
    .line 180
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "button_auto_record_call"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setAutoRecordForAll(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Z

    .prologue
    .line 200
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "button_auto_record_scenario"

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setAutoRecordForUnknown(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Z

    .prologue
    .line 220
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "button_auto_record_unknown"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setAutoRecordForYellowPage(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Z

    .prologue
    .line 240
    if-eqz p1, :cond_0

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 241
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "button_auto_record_yellowpage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 240
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static setCallRecordNotification(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Z

    .prologue
    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "button_call_recording_notification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private updateCustomCategory(Z)V
    .locals 2
    .param p1, "shoudShowCustomCategory"    # Z

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mCustomCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    iget-object v0, p0, Lcom/android/phone/settings/CallRecordSetting;->mWhitelist:Lmiui/preference/ValuePreference;

    invoke-static {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mCustomCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->addPreferencesFromResource(I)V

    .line 67
    const-string v1, "button_auto_record_call"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    .line 68
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string v1, "button_auto_record_scenario"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 70
    const-string v1, "auto_record_custom_category"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mCustomCategory:Landroid/preference/PreferenceCategory;

    .line 71
    const-string v1, "button_call_record_auto_whitelist"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mWhitelist:Lmiui/preference/ValuePreference;

    .line 72
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mWhitelist:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 73
    invoke-direct {p0}, Lcom/android/phone/settings/CallRecordSetting;->createScenarios()V

    .line 74
    invoke-direct {p0}, Lcom/android/phone/settings/CallRecordSetting;->checkRemovePreferences()V

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 77
    .local v0, "bar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 127
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->finish()V

    .line 129
    const/4 v1, 0x1

    .line 131
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 51
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 52
    check-cast v0, Ljava/lang/Boolean;

    .line 53
    .local v0, "enable":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreferenceCategory;->getCheckedPosition()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V

    .line 57
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_0
    return v2

    .line 54
    .restart local v0    # "enable":Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 86
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    iget-object v4, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "shoudShowCustomCategory":Z
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v3, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 90
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v3}, Lmiui/preference/RadioButtonPreferenceCategory;->getCheckedPosition()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 94
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V

    .line 95
    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method

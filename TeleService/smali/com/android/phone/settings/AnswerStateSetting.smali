.class public Lcom/android/phone/settings/AnswerStateSetting;
.super Lmiui/preference/PreferenceActivity;
.source "AnswerStateSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AnswerStateSetting"


# instance fields
.field private mAntiStrange:Landroid/preference/CheckBoxPreference;

.field private mFlashWhenRing:Landroid/preference/CheckBoxPreference;

.field private mProximitySensor:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 40
    :cond_0
    const/high16 v1, 0x7f050000

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->addPreferencesFromResource(I)V

    .line 41
    const-string v1, "button_enable_antispam_strange"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mAntiStrange:Landroid/preference/CheckBoxPreference;

    .line 43
    const-string v1, "button_enable_proximity"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    .line 44
    iget-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v1, "button_flash_when_ring"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mFlashWhenRing:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mFlashWhenRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 82
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->finish()V

    .line 84
    const/4 v1, 0x1

    .line 86
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/settings/AnswerStateSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setProximitySensorEnable(Landroid/content/ContentResolver;Z)V

    .line 76
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 72
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/AnswerStateSetting;->mFlashWhenRing:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_when_ring_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 52
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 53
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 54
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "button_enable_antispam_strange"

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportsDefaultAntiStrange(Landroid/content/Context;)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    .local v0, "antiStrange":Z
    iget-object v4, p0, Lcom/android/phone/settings/AnswerStateSetting;->mAntiStrange:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Telephony;->isProximitySensorEnable(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 60
    .local v2, "isProximitySensor":Z
    iget-object v4, p0, Lcom/android/phone/settings/AnswerStateSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flash_when_ring_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "isFlashWhenRingEnable":Z
    iget-object v4, p0, Lcom/android/phone/settings/AnswerStateSetting;->mFlashWhenRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    return-void
.end method

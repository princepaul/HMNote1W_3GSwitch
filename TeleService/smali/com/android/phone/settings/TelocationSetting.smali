.class public Lcom/android/phone/settings/TelocationSetting;
.super Lmiui/preference/PreferenceActivity;
.source "TelocationSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final COUNTRY_CODE_BUTTON:Ljava/lang/String; = "button_auto_country_code"

.field public static final COUNTRY_CODE_ENABLED_DIALOG:I = 0x64

.field private static final DBG:Z = false

.field static final DEFAULT_COUNTRY_CODE_BUTTON:Ljava/lang/String; = "button_text_telocation_contacts_countrycode"

.field private static final LOG_TAG:Ljava/lang/String; = "TelocationSetting"

.field static final TELOCATION_BUTTON:Ljava/lang/String; = "button_enable_telocation"


# instance fields
.field private mAutoCountryCode:Landroid/preference/CheckBoxPreference;

.field private mCountryCode:Ljava/lang/String;

.field private mIsAutoAddCountryCode:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mShowLocationEnable:Landroid/preference/CheckBoxPreference;

.field private mTextCountryCode:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/TelocationSetting;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/TelocationSetting;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/TelocationSetting;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/TelocationSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/settings/TelocationSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/settings/TelocationSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/TelocationSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/settings/TelocationSetting;->updateCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/settings/TelocationSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/TelocationSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/phone/settings/TelocationSetting;->mIsAutoAddCountryCode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/settings/TelocationSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/TelocationSetting;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public static getAutoCountryCode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static getContryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->getContactCountrycode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "rst":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    return-object v0
.end method

.method public static getShowLocation(Landroid/content/Context;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_telocation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v0, "TelocationSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public static setAutoCountryCode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "b"    # Z

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MiuiSettings$Telephony;->setAutoCountryCodeEnable(Landroid/content/ContentResolver;Z)V

    .line 256
    return-void
.end method

.method public static setCountryCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MiuiSettings$Telephony;->setContactCountrycode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 230
    const-string v0, "persist.radio.countrycode"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static setShowLocation(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_telocation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 268
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 269
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 275
    :cond_0
    return-void

    .line 268
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateCountryCode(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/android/phone/settings/TelocationSetting;->mCountryCode:Ljava/lang/String;

    .line 215
    invoke-static {p0, p1}, Lcom/android/phone/settings/TelocationSetting;->setCountryCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b03e5

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/TelocationSetting;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/settings/TelocationSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    iget-boolean v0, p0, Lcom/android/phone/settings/TelocationSetting;->mIsAutoAddCountryCode:Z

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/provider/MiuiSettings$Telephony;->setAutoCountryCodeEnable(Landroid/content/ContentResolver;Z)V

    .line 220
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    iput-boolean v6, p0, Lcom/android/phone/settings/TelocationSetting;->mIsAutoAddCountryCode:Z

    .line 223
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/TelocationSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 125
    const v3, 0x7f05001e

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/TelocationSetting;->addPreferencesFromResource(I)V

    .line 127
    const-string v3, "button_enable_telocation"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/TelocationSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/TelocationSetting;->mShowLocationEnable:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v3, "button_auto_country_code"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/TelocationSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/TelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v3, "button_text_telocation_contacts_countrycode"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/TelocationSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 132
    .local v0, "bar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 133
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 139
    const-string v3, "automatic_add_country_code"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 141
    .local v2, "isAutoAddCountryCode":Z
    if-eqz v2, :cond_1

    .line 142
    const-string v3, "voice_roaming_reminder_interval"

    invoke-virtual {p0, v3, v5}, Lcom/android/phone/settings/TelocationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "has_notification"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Telephony;->isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/TelocationSetting;->showDialog(I)V

    .line 152
    .end local v2    # "isAutoAddCountryCode":Z
    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 287
    packed-switch p1, :pswitch_data_0

    .line 311
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 289
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b03f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b03f8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/settings/TelocationSetting$4;

    invoke-direct {v3, p0}, Lcom/android/phone/settings/TelocationSetting$4;-><init>(Lcom/android/phone/settings/TelocationSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 308
    .local v0, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->finish()V

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f0b03e9

    const v6, 0x104000a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 63
    iget-object v5, p0, Lcom/android/phone/settings/TelocationSetting;->mShowLocationEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_2

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 65
    .local v1, "enable":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/phone/settings/TelocationSetting;->setShowLocation(Landroid/content/Context;I)Z

    .line 114
    .end local v1    # "enable":I
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v4

    .line 64
    goto :goto_0

    .line 66
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/settings/TelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_5

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 68
    .restart local v1    # "enable":I
    :goto_2
    if-ne v1, v3, :cond_3

    move v4, v3

    :cond_3
    invoke-static {p0, v4}, Lcom/android/phone/settings/TelocationSetting;->setAutoCountryCode(Landroid/content/Context;Z)V

    goto :goto_1

    .end local v1    # "enable":I
    :cond_4
    move v1, v4

    .line 67
    goto :goto_2

    .line 69
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    if-ne p1, v4, :cond_0

    move-object v2, p2

    .line 70
    check-cast v2, Ljava/lang/String;

    .line 71
    .local v2, "inCountryCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 72
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_6
    :goto_3
    move-object v0, v2

    .line 79
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 80
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 81
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b03e8

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/settings/TelocationSetting$2;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/settings/TelocationSetting$2;-><init>(Lcom/android/phone/settings/TelocationSetting;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/phone/settings/TelocationSetting$1;

    invoke-direct {v6, p0}, Lcom/android/phone/settings/TelocationSetting$1;-><init>(Lcom/android/phone/settings/TelocationSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 74
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_7
    const-string v4, "00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 75
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 97
    .restart local v0    # "countryCode":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/phone/settings/TelocationSetting;->updateCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_9
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b03ea

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/settings/TelocationSetting$3;

    invoke-direct {v5, p0}, Lcom/android/phone/settings/TelocationSetting$3;-><init>(Lcom/android/phone/settings/TelocationSetting;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 111
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/settings/TelocationSetting;->updateCountryCode(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/TelocationSetting;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 157
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mShowLocationEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/phone/settings/TelocationSetting;->mShowLocationEnable:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getShowLocation(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getAutoCountryCode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getContryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mCountryCode:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    const v3, 0x7f0b03e5

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/TelocationSetting;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/settings/TelocationSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 158
    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStop()V

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "automatic_add_country_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/settings/TelocationSetting;->finish()V

    .line 194
    :cond_0
    return-void
.end method

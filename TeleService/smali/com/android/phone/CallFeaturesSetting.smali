.class public Lcom/android/phone/CallFeaturesSetting;
.super Lmiui/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"


# static fields
.field static final ANSWER_WIDGET_KEY:Ljava/lang/String; = "button_answer_widget"

.field static final AUTO_ANSWER_KEY:Ljava/lang/String; = "button_auto_answer_screen"

.field public static final BUTTON_VOICEMAIL_NOTIFICATION_RINGTONE_KEY:Ljava/lang/String; = "button_voicemail_notification_ringtone_key"

.field public static final BUTTON_VOICEMAIL_NOTIFICATION_VIBRATE_KEY:Ljava/lang/String; = "button_voicemail_notification_vibrate_key"

.field public static final BUTTON_VOICEMAIL_NOTIFICATION_VIBRATE_WHEN_KEY:Ljava/lang/String; = "button_voicemail_notification_vibrate_when_key"

.field private static final CALL_FORWARDING_KEY:Ljava/lang/String; = "button_call_forwarding"

.field static final CALL_RECORD_SETTING:Ljava/lang/String; = "button_call_record_setting"

.field private static final CALL_WAITING_KEY:Ljava/lang/String; = "button_call_waiting"

.field private static final CDMA_CALL_FORWARDING_KEY:Ljava/lang/String; = "button_cdma_call_forwarding"

.field private static final CDMA_CALL_WAITING_KEY:Ljava/lang/String; = "button_cdma_cw"

.field public static final ENABLE_ANTISPAM_STRANGE:Ljava/lang/String; = "button_enable_antispam_strange"

.field public static final ENABLE_PROXIMITY_KEY:Ljava/lang/String; = "button_enable_proximity"

.field public static final FLASH_WHEN_RING_KEY:Ljava/lang/String; = "button_flash_when_ring"

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field private static final GSM_CALL_FORWARDING_KEY:Ljava/lang/String; = "button_gsm_call_forwarding"

.field private static final GSM_CALL_WAITING_KEY:Ljava/lang/String; = "button_gsm_call_waiting"

.field public static final HANDON_RINGER_KEY:Ljava/lang/String; = "button_handon_ringer"

.field private static final PREF_KEY_ANTISPAM:Ljava/lang/String; = "pref_key_antispam_setting"

.field private static final PREF_KEY_AUTO_IP:Ljava/lang/String; = "pref_key_auto_ip"

.field private static final PREF_KEY_CALL_NETWORK_SETTING:Ljava/lang/String; = "pref_key_call_network_setting"

.field private static final PREF_KEY_CLOUD_ANTISPAM:Ljava/lang/String; = "pref_key_cloud_antispam"

.field private static final PREF_KEY_RECORD:Ljava/lang/String; = "pref_key_call_record_setting"

.field private static final PREF_KEY_TELOCATION:Ljava/lang/String; = "pref_key_telocation"

.field private static final PREF_KEY_VOIP:Ljava/lang/String; = "pref_key_voip_setting"

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field public static final TURNOVER_MUTE_KEY:Ljava/lang/String; = "button_turnover_mute"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field private static final VOICEMAIL_VIBRATION_ALWAYS:Ljava/lang/String; = "always"

.field private static final VOICEMAIL_VIBRATION_NEVER:Ljava/lang/String; = "never"


# instance fields
.field private mAntispamSetting:Lmiui/preference/ValuePreference;

.field private mAutoAnswer:Lmiui/preference/ValuePreference;

.field private mCallRecord:Lmiui/preference/ValuePreference;

.field private mNetworkSetting:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelocation:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private isVoipAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    :goto_0
    return v1

    .line 363
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.miui.voip"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    const/4 v1, 0x1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, "ret":Z
    if-eqz p1, :cond_1

    .line 326
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 327
    if-nez v3, :cond_1

    .line 328
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 329
    .local v2, "prefCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 330
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 331
    .local v1, "p":Landroid/preference/Preference;
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 332
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1    # "p":Landroid/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v3

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    .end local v2    # "prefCount":I
    :cond_1
    return v3
.end method

.method public static removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v3, 0x0

    .line 342
    .local v3, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 343
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 344
    .local v2, "prefCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    if-nez v3, :cond_2

    .line 345
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 346
    .local v1, "p":Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 347
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 344
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .restart local v1    # "p":Landroid/preference/Preference;
    :cond_1
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 349
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1    # "p":Landroid/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 353
    .end local v0    # "i":I
    .end local v2    # "prefCount":I
    :cond_2
    return v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 144
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 147
    const v4, 0x7f050005

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 148
    const-string v4, "pref_key_call_network_setting"

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    .line 149
    const-string v4, "pref_key_telocation"

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    .line 150
    const-string v4, "pref_key_call_record_setting"

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lmiui/preference/ValuePreference;

    iput-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    .line 151
    const-string v4, "button_auto_answer_screen"

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lmiui/preference/ValuePreference;

    iput-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    .line 152
    const-string v4, "pref_key_antispam_setting"

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lmiui/preference/ValuePreference;

    iput-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 156
    .local v3, "prefScreen":Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 157
    .local v2, "phoneType":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v4

    if-le v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_7

    .line 159
    const-string v4, "button_cdma_cw"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 160
    const-string v4, "button_gsm_call_waiting"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 161
    const-string v4, "button_cdma_call_forwarding"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 162
    const-string v4, "button_gsm_call_forwarding"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 177
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    if-eqz v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    invoke-virtual {v4, v5}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 185
    :cond_1
    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportsCallRecording(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 186
    const-string v4, "button_call_record_setting"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 189
    :cond_2
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 190
    const-string v4, "pref_key_cloud_antispam"

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 200
    :cond_3
    :goto_1
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_4

    .line 201
    const-string v4, "pref_key_auto_ip"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 204
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isVoipAvailable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 205
    const-string v4, "pref_key_voip_setting"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 208
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 209
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_6

    .line 210
    invoke-virtual {v0, v5}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 213
    :cond_6
    return-void

    .line 164
    .end local v0    # "actionBar":Lmiui/app/ActionBar;
    :cond_7
    const-string v4, "button_call_forwarding"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 165
    const-string v4, "button_call_waiting"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 166
    if-ne v2, v6, :cond_8

    .line 167
    const-string v4, "button_gsm_call_forwarding"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 168
    const-string v4, "button_gsm_call_waiting"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 169
    :cond_8
    if-ne v2, v5, :cond_9

    .line 170
    const-string v4, "button_cdma_call_forwarding"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 171
    const-string v4, "button_cdma_cw"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 173
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.TURN_ON_SMART_ANTISPAM"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.miui.yellowpage"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3

    .line 196
    const-string v4, "pref_key_cloud_antispam"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 316
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 318
    const/4 v1, 0x1

    .line 320
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 21

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 218
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const v18, 0x7f0b04bf

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 225
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 229
    const v17, 0x7f0b04b9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, "summaryTeloc":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/provider/MiuiSettings$Telephony;->isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 234
    const v17, 0x7f0b04ba

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 238
    .local v15, "summaryCountryCode":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    .end local v15    # "summaryCountryCode":Ljava/lang/String;
    .end local v16    # "summaryTeloc":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 243
    invoke-static/range {p0 .. p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordOn(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0410

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 249
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 251
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "button_auto_answer"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_9

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b043d

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 267
    invoke-static/range {p0 .. p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0410

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 274
    :cond_4
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-lez v17, :cond_b

    const/4 v11, 0x1

    .line 275
    .local v11, "isAirPlane":Z
    :goto_6
    const/4 v6, 0x0

    .line 276
    .local v6, "fdnDisabled":Z
    const/4 v7, 0x0

    .line 277
    .local v7, "hasICC":Z
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v14

    .line 278
    .local v14, "slotCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v14, :cond_d

    .line 279
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->hasIccCard(I)Z

    move-result v8

    .line 280
    .local v8, "hasIccCard":Z
    if-eqz v8, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->isFdnEnabled(I)Z

    move-result v17

    if-nez v17, :cond_c

    const/16 v17, 0x1

    :goto_8
    or-int v6, v6, v17

    .line 281
    or-int/2addr v7, v8

    .line 278
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 221
    .end local v6    # "fdnDisabled":Z
    .end local v7    # "hasICC":Z
    .end local v8    # "hasIccCard":Z
    .end local v9    # "i":I
    .end local v11    # "isAirPlane":Z
    .end local v14    # "slotCount":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const v18, 0x7f0b0500

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    goto/16 :goto_0

    .line 231
    :cond_6
    const v17, 0x7f0b04b8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "summaryTeloc":Ljava/lang/String;
    goto/16 :goto_1

    .line 236
    :cond_7
    const v17, 0x7f0b04bd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "summaryCountryCode":Ljava/lang/String;
    goto/16 :goto_2

    .line 246
    .end local v15    # "summaryCountryCode":Ljava/lang/String;
    .end local v16    # "summaryTeloc":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0411

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_3

    .line 256
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "button_auto_answer_delay"

    const-string v19, "3"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "delay":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060016

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "autoAnswerSummary":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "button_auto_answer_scenario"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 262
    .local v10, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    aget-object v18, v3, v10

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b043e

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 270
    .end local v3    # "autoAnswerSummary":[Ljava/lang/String;
    .end local v5    # "delay":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0411

    invoke-virtual/range {v17 .. v18}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_5

    .line 274
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 280
    .restart local v6    # "fdnDisabled":Z
    .restart local v7    # "hasICC":Z
    .restart local v8    # "hasIccCard":Z
    .restart local v9    # "i":I
    .restart local v11    # "isAirPlane":Z
    .restart local v14    # "slotCount":I
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 283
    .end local v8    # "hasIccCard":Z
    :cond_d
    if-eqz v6, :cond_14

    if-eqz v7, :cond_14

    if-nez v11, :cond_14

    const/4 v4, 0x1

    .line 284
    .local v4, "canBeEnabled":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 285
    .local v13, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v17, "button_gsm_call_forwarding"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 286
    .local v12, "pref":Landroid/preference/Preference;
    if-eqz v12, :cond_e

    .line 287
    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 289
    :cond_e
    const-string v17, "button_call_forwarding"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 290
    if-eqz v12, :cond_f

    .line 291
    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 293
    :cond_f
    const-string v17, "button_gsm_call_waiting"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 294
    if-eqz v12, :cond_10

    .line 295
    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    :cond_10
    const-string v17, "button_call_waiting"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 298
    if-eqz v12, :cond_11

    .line 299
    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 301
    :cond_11
    const-string v17, "button_cdma_call_forwarding"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 302
    if-eqz v12, :cond_12

    .line 303
    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 305
    :cond_12
    const-string v17, "button_cdma_cw"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 306
    if-eqz v12, :cond_13

    .line 307
    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    :cond_13
    invoke-super/range {p0 .. p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 311
    return-void

    .line 283
    .end local v4    # "canBeEnabled":Z
    .end local v12    # "pref":Landroid/preference/Preference;
    .end local v13    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_14
    const/4 v4, 0x0

    goto :goto_9
.end method

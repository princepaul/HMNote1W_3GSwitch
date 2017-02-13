.class public Lcom/android/phone/settings/CallAdvancedSetting;
.super Lmiui/preference/PreferenceActivity;
.source "CallAdvancedSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final AUTO_REDIAL:Ljava/lang/String; = "button_auto_redial"

.field private static final BUTTON_CRYSTAL_TALK:Ljava/lang/String; = "button_crystal_talk_settings"

.field private static final BUTTON_DTMF_KEY:Ljava/lang/String; = "button_dtmf_settings"

.field private static final BUTTON_HAC_KEY:Ljava/lang/String; = "button_hac"

.field private static final BUTTON_RETRY_KEY:Ljava/lang/String; = "button_auto_retry"

.field private static final BUTTON_SIP_SETTING_KEY:Ljava/lang/String; = "button_sip_settings"

.field private static final BUTTON_T9_INDEX_METHOD_KEY:Ljava/lang/String; = "button_t9_index_method_settings"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode"

.field private static final CALLER_ID_KEY:Ljava/lang/String; = "button_caller_id"

.field public static final CALL_BACKGROUND:Ljava/lang/String; = "button_call_background"

.field public static final CALL_BACKGROUND_DEFAULT:Ljava/lang/String; = "0"

.field private static final CALL_BARRING_SETTING_KEY:Ljava/lang/String; = "button_call_barring"

.field public static final CALL_WAITING_TONE:Ljava/lang/String; = "button_call_waiting_tone"

.field public static final CALL_WAITING_TONE_DEFAULT:Ljava/lang/String; = "0"

.field private static final CDMA_DISPLAY_PRECISE_CALL_STATE:Ljava/lang/String; = "button_display_precise_call_state"

.field public static final CONNECT_DISCONNECT_VIBRATE:Ljava/lang/String; = "button_connect_disconnect_vibrate"

.field public static final CONNECT_DISCONNECT_VIBRATE_DEFAULT:Ljava/lang/String; = "100"

.field private static final DBG:Z = false

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final FDN_SETTINGS_KEY:Ljava/lang/String; = "button_fdn"

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field private static final LOG_TAG:Ljava/lang/String; = "CallAdvancedSetting"

.field private static final MISSED_CALL_NOTIFY_TIMES:Ljava/lang/String; = "button_missed_call_notify_times"

.field private static final PREF_KEY_AUTO_IP:Ljava/lang/String; = "pref_key_auto_ip"

.field private static final PREF_KEY_DIAL_PAD_TOUCH_TONE:Ljava/lang/String; = "pref_key_dial_pad_touch_tone"

.field private static final VOICEMAIL_SETTINGS_KEY:Ljava/lang/String; = "button_voicemail"

.field private static final VOICE_PRIVACY_KEY:Ljava/lang/String; = "button_voice_privacy"

.field static final preferredTtyMode:I


# instance fields
.field private mAutoIP:Lmiui/preference/ValuePreference;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallBackground:Lcom/android/phone/settings/ValueListPreference;

.field private mCallBarring:Landroid/preference/PreferenceScreen;

.field private mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

.field private mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

.field private mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

.field private mDialPadTouchTone:Lmiui/preference/ValuePreference;

.field private mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CallAdvancedSetting;)Lcom/android/phone/settings/CheckBoxTitleIconPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallAdvancedSetting;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    return-object v0
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 389
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 390
    .local v0, "buttonTtyMode":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 396
    .local v1, "settingsTtyMode":I
    if-eq v0, v1, :cond_0

    .line 397
    packed-switch v0, :pswitch_data_0

    .line 406
    const/4 v0, 0x0

    .line 409
    :goto_0
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, v0}, Lcom/android/phone/settings/CallAdvancedSetting;->updatePreferredTtyModeSummary(I)V

    .line 411
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "ttyModeChanged":Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 415
    .end local v2    # "ttyModeChanged":Landroid/content/Intent;
    :cond_0
    return-void

    .line 402
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initSimIcon()V
    .locals 7

    .prologue
    const v6, 0x7f0200ba

    const v5, 0x7f0200b9

    const/4 v4, 0x2

    .line 365
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const-string v3, "button_voice_privacy"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;

    .line 370
    .local v2, "voicePrivacy":Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;
    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {v2, v5}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->setTitleIconResource(I)V

    .line 373
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-eqz v3, :cond_3

    .line 374
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setTitleIconResource(I)V

    .line 376
    :cond_3
    const-string v3, "button_auto_redial"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    .line 377
    .local v0, "autoRedial":Lcom/android/phone/settings/CheckBoxTitleIconPreference;
    if-eqz v0, :cond_4

    .line 378
    invoke-virtual {v0, v6}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setTitleIconResource(I)V

    .line 380
    :cond_4
    const-string v3, "button_caller_id"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/TitleIconPreference;

    .line 381
    .local v1, "callerId":Lcom/android/phone/settings/TitleIconPreference;
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1, v6}, Lcom/android/phone/settings/TitleIconPreference;->setTitleIconResource(I)V

    .line 383
    invoke-virtual {v1}, Lcom/android/phone/settings/TitleIconPreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private isAllowShowT9Index()Z
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "region":Ljava/lang/String;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    const/4 v1, 0x0

    .line 439
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string v0, "CallAdvancedSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method private showRebuildT9IndexDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    new-instance v0, Lcom/android/phone/settings/CallAdvancedSetting$2;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting$2;-><init>(Lcom/android/phone/settings/CallAdvancedSetting;Landroid/app/FragmentManager;)V

    const v1, 0x7f0b042a

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CallAdvancedSetting$2;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 457
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .param p1, "TtyMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "txts":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 427
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 428
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    :goto_0
    return-void

    .line 424
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateScreen()V
    .locals 28

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "dtmf_tone"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "dial_pad_touch_tone"

    const/16 v27, -0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 466
    .local v23, "value":I
    const/16 v20, -0x1

    .line 467
    .local v20, "summaryId":I
    packed-switch v23, :pswitch_data_0

    .line 472
    const v20, 0x7f0b04bb

    .line 475
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 480
    .end local v20    # "summaryId":I
    .end local v23    # "value":I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 486
    :goto_2
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v22

    .line 487
    .local v22, "tm":Lmiui/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    .line 489
    .end local v22    # "tm":Lmiui/telephony/TelephonyManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f060008

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "callBackgroundSummary":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/settings/ValueListPreference;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    .line 493
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    aget-object v26, v3, v12

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 497
    .end local v3    # "callBackgroundSummary":[Ljava/lang/String;
    .end local v12    # "index":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f06000e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, "callWaitToneSummary":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/settings/ValueListPreference;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    .line 501
    .restart local v12    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    aget-object v26, v4, v12

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 504
    .end local v4    # "callWaitToneSummary":[Ljava/lang/String;
    .end local v12    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f06000c

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 507
    .local v24, "vibrateSummary":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/settings/ValueListPreference;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    .line 508
    .restart local v12    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    aget-object v26, v24, v12

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 511
    .end local v12    # "index":I
    .end local v24    # "vibrateSummary":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "cdma_precise_answer_state"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 515
    .local v15, "preciseCallState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    move-object/from16 v26, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v15, v0, :cond_e

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setChecked(Z)V

    .line 517
    .end local v15    # "preciseCallState":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "dtmf_tone_type"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 520
    .local v6, "dtmf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 522
    .end local v6    # "dtmf":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "call_auto_retry"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 525
    .local v2, "autoretry":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    if-eqz v2, :cond_f

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 527
    .end local v2    # "autoretry":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "hearing_aid"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 529
    .local v8, "hac":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    if-eqz v8, :cond_10

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 531
    .end local v8    # "hac":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "preferred_tty_mode"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 535
    .local v18, "settingsTtyMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->updatePreferredTtyModeSummary(I)V

    .line 538
    .end local v18    # "settingsTtyMode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "t9_indexing_key"

    invoke-static {}, Landroid/provider/MiuiSettings$System;->getT9IndexingKeyDefault()I

    move-result v27

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 542
    .local v14, "method":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f060006

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v14

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 546
    .end local v14    # "method":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/provider/MiuiSettings$Telephony;->getMissedCallNotifyTimes(Landroid/content/ContentResolver;)I

    move-result v21

    .line 548
    .local v21, "times":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    .line 549
    .restart local v12    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f06000a

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v12

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 553
    .end local v12    # "index":I
    .end local v21    # "times":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "airplane_mode_on"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-lez v25, :cond_11

    const/4 v13, 0x1

    .line 554
    .local v13, "isAirPlane":Z
    :goto_6
    const/4 v7, 0x0

    .line 555
    .local v7, "fdnDisabled":Z
    const/4 v9, 0x0

    .line 556
    .local v9, "hasICC":Z
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v19

    .line 557
    .local v19, "slotCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    move/from16 v0, v19

    if-ge v11, v0, :cond_13

    .line 558
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->hasIccCard(I)Z

    move-result v10

    .line 559
    .local v10, "hasIccCard":Z
    if-eqz v10, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->isFdnEnabled(I)Z

    move-result v25

    if-nez v25, :cond_12

    const/16 v25, 0x1

    :goto_8
    or-int v7, v7, v25

    .line 560
    or-int/2addr v9, v10

    .line 557
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 469
    .end local v7    # "fdnDisabled":Z
    .end local v9    # "hasICC":Z
    .end local v10    # "hasIccCard":Z
    .end local v11    # "i":I
    .end local v13    # "isAirPlane":Z
    .end local v19    # "slotCount":I
    .restart local v20    # "summaryId":I
    .restart local v23    # "value":I
    :pswitch_0
    const v20, 0x7f0b04bc

    .line 470
    goto/16 :goto_0

    .line 477
    .end local v20    # "summaryId":I
    .end local v23    # "value":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    const v26, 0x7f0b0501

    invoke-virtual/range {v25 .. v26}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_1

    .line 484
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    const v26, 0x7f0b04b6

    invoke-virtual/range {v25 .. v26}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_2

    .line 515
    .restart local v15    # "preciseCallState":I
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 525
    .end local v15    # "preciseCallState":I
    .restart local v2    # "autoretry":I
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 529
    .end local v2    # "autoretry":I
    .restart local v8    # "hac":I
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 553
    .end local v8    # "hac":I
    :cond_11
    const/4 v13, 0x0

    goto :goto_6

    .line 559
    .restart local v7    # "fdnDisabled":Z
    .restart local v9    # "hasICC":Z
    .restart local v10    # "hasIccCard":Z
    .restart local v11    # "i":I
    .restart local v13    # "isAirPlane":Z
    .restart local v19    # "slotCount":I
    :cond_12
    const/16 v25, 0x0

    goto :goto_8

    .line 562
    .end local v10    # "hasIccCard":Z
    :cond_13
    if-eqz v7, :cond_17

    if-eqz v9, :cond_17

    if-nez v13, :cond_17

    const/4 v5, 0x1

    .line 563
    .local v5, "canBeEnabled":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 564
    .local v17, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v25, "button_caller_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 565
    .local v16, "pref":Landroid/preference/Preference;
    if-eqz v16, :cond_14

    .line 566
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 568
    :cond_14
    const-string v25, "button_fdn"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 569
    if-eqz v16, :cond_15

    .line 570
    if-eqz v9, :cond_18

    if-nez v13, :cond_18

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 572
    :cond_15
    const-string v25, "button_voicemail"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 573
    if-eqz v16, :cond_16

    .line 574
    if-eqz v9, :cond_19

    if-nez v13, :cond_19

    const/16 v25, 0x1

    :goto_b
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 576
    :cond_16
    return-void

    .line 562
    .end local v5    # "canBeEnabled":Z
    .end local v16    # "pref":Landroid/preference/Preference;
    .end local v17    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_17
    const/4 v5, 0x0

    goto :goto_9

    .line 570
    .restart local v5    # "canBeEnabled":Z
    .restart local v16    # "pref":Landroid/preference/Preference;
    .restart local v17    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_18
    const/16 v25, 0x0

    goto :goto_a

    .line 574
    :cond_19
    const/16 v25, 0x0

    goto :goto_b

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 118
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->addPreferencesFromResource(I)V

    .line 120
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 121
    const-string v3, "pref_key_dial_pad_touch_tone"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiui/preference/ValuePreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    .line 122
    const-string v3, "button_call_background"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/ValueListPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    .line 123
    const-string v3, "pref_key_auto_ip"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiui/preference/ValuePreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    .line 124
    const-string v3, "button_missed_call_notify_times"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/ValueListPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    .line 125
    const-string v3, "button_connect_disconnect_vibrate"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/ValueListPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    .line 126
    const-string v3, "button_call_waiting_tone"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/ValueListPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    .line 127
    const-string v3, "button_dtmf_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 128
    const-string v3, "button_auto_retry"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v3, "button_hac"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v3, "button_tty_mode"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 131
    const-string v3, "button_display_precise_call_state"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    .line 132
    const-string v3, "button_t9_index_method_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/ValueListPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    .line 133
    const-string v3, "button_call_barring"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBarring:Landroid/preference/PreferenceScreen;

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 136
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 137
    .local v1, "phoneType":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v3

    if-le v3, v5, :cond_f

    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_f

    .line 152
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 154
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 163
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 172
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v3, :cond_4

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 181
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 189
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBarring:Landroid/preference/PreferenceScreen;

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 190
    iput-object v6, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBarring:Landroid/preference/PreferenceScreen;

    .line 193
    :cond_5
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-eqz v3, :cond_6

    .line 194
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    :cond_6
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    if-eqz v3, :cond_7

    .line 198
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->isAllowShowT9Index()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 199
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    if-eqz v3, :cond_8

    .line 206
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    invoke-virtual {v3, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    invoke-virtual {v3, v5}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 210
    :cond_8
    sget-boolean v3, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v3, :cond_9

    .line 211
    const-string v3, "button_auto_redial"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 212
    const-string v3, "button_sip_settings"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 215
    :cond_9
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 216
    const-string v3, "button_sip_settings"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 219
    :cond_a
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    if-eqz v3, :cond_b

    .line 220
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    invoke-virtual {v3, v5}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 221
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_b

    .line 222
    const-string v3, "pref_key_auto_ip"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 226
    :cond_b
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    if-eqz v3, :cond_c

    .line 227
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    :cond_c
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v3

    if-ne v3, v5, :cond_d

    .line 231
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    if-eqz v3, :cond_d

    .line 232
    const-string v3, "pref_key_dial_pad_touch_tone"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 233
    iput-object v6, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    .line 237
    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 238
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_e

    .line 239
    invoke-virtual {v0, v5}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 242
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->initSimIcon()V

    .line 244
    return-void

    .line 141
    .end local v0    # "actionBar":Lmiui/app/ActionBar;
    :cond_f
    if-ne v1, v4, :cond_10

    .line 143
    const-string v3, "button_caller_id"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 144
    const-string v3, "button_auto_redial"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 145
    :cond_10
    if-ne v1, v5, :cond_0

    .line 147
    const-string v3, "button_display_precise_call_state"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 148
    const-string v3, "button_voice_privacy"

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 156
    :cond_11
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 157
    iput-object v6, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_1

    .line 165
    :cond_12
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 166
    iput-object v6, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 174
    :cond_13
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 175
    iput-object v6, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_3

    .line 183
    :cond_14
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 184
    iput-object v6, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_4

    .line 201
    :cond_15
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/ValueListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 357
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->finish()V

    .line 359
    const/4 v1, 0x1

    .line 361
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 254
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 255
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "dtmf_tone_type"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v1    # "index":I
    :cond_0
    :goto_0
    move v3, v4

    .line 315
    :goto_1
    return v3

    .line 257
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/CallAdvancedSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-ne p1, v5, :cond_4

    .line 260
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    new-instance v4, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0497

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0499

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/phone/settings/CallAdvancedSetting$1;

    invoke-direct {v6, p0}, Lcom/android/phone/settings/CallAdvancedSetting$1;-><init>(Lcom/android/phone/settings/CallAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto :goto_1

    .line 275
    :cond_3
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v4, v3}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setChecked(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cdma_precise_answer_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 281
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v3, :cond_5

    .line 282
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 283
    .restart local v1    # "index":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06000e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "callWaitToneSummary":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    aget-object v5, v0, v1

    invoke-virtual {v3, v5}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v0    # "callWaitToneSummary":[Ljava/lang/String;
    .end local v1    # "index":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v3, :cond_6

    .line 286
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v5, v3}, Landroid/provider/MiuiSettings$Telephony;->setMissedCallNotifyTimes(Landroid/content/ContentResolver;I)V

    .line 288
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 289
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v1    # "index":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v3, :cond_7

    .line 292
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 293
    .restart local v1    # "index":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "vibrateSummary":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    .end local v1    # "index":I
    .end local v2    # "vibrateSummary":[Ljava/lang/String;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v3, :cond_9

    .line 296
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 297
    .restart local v1    # "index":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "t9_indexing_key"

    invoke-static {}, Landroid/provider/MiuiSettings$System;->getT9IndexingKeyDefault()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v3, :cond_8

    .line 300
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "t9_indexing_key"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->showRebuildT9IndexDialog()V

    .line 303
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    :cond_8
    move v3, v4

    .line 306
    goto/16 :goto_1

    .line 307
    .end local v1    # "index":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_9
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v3, :cond_0

    .line 308
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 309
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Landroid/provider/MiuiSettings$Telephony;->setCallBackgroundType(Landroid/content/ContentResolver;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v6, 0x7f0b04b7

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 320
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    if-ne p1, v5, :cond_1

    .line 321
    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.contacts"

    const-string v5, "com.android.contacts.preference.ContactsPreferenceActivity"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v3, ":android:show_fragment"

    const-string v5, "com.android.contacts.preference.DialpadTouchTonePreferenceFragment"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v3, ":android:show_fragment_title"

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->addWindowLable(Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallAdvancedSetting;->startActivity(Landroid/content/Intent;)V

    .line 351
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 330
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eq p1, v5, :cond_0

    .line 332
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p1, v5, :cond_0

    .line 334
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_3

    .line 335
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_auto_retry"

    iget-object v7, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 339
    :cond_3
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_6

    .line 340
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v4

    .line 342
    .local v1, "hac":I
    :goto_1
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_aid"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/CallAdvancedSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 347
    .local v0, "am":Landroid/media/AudioManager;
    const-string v5, "%s=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "HACSetting"

    aput-object v7, v6, v3

    if-eqz v1, :cond_5

    const-string v3, "ON"

    :goto_2
    aput-object v3, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "hac":I
    :cond_4
    move v1, v3

    .line 340
    goto :goto_1

    .line 347
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "hac":I
    :cond_5
    const-string v3, "OFF"

    goto :goto_2

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "hac":I
    :cond_6
    move v4, v3

    .line 351
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 249
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->updateScreen()V

    .line 250
    return-void
.end method

.class public Lcom/mediatek/settings/OthersSettings;
.super Landroid/app/Activity;
.source "OthersSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;
    }
.end annotation


# static fields
.field private static final BUTTON_INTER_KEY:Ljava/lang/String; = "international_dialing_key"

.field private static final BUTTON_OTHERS_DUAL_MIC_KEY:Ljava/lang/String; = "dual_mic_key"

.field private static final BUTTON_OTHERS_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_OTHERS_MINUTE_REMINDER_KEY:Ljava/lang/String; = "minute_reminder_key"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final DEFAULT_INTER_DIALING_VALUE:I = 0x0

.field private static final INTER_DIALING_OFF:I = 0x0

.field private static final INTER_DIALING_ON:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/OthersSettings"

.field private static final TAG_OTHER_SETTINGS:Ljava/lang/String; = "other_settings"

.field private static final TARGET_PREFERENCE_KEY:Ljava/lang/String; = "target_preference_key"


# instance fields
.field private mButtonDualMic:Landroid/preference/CheckBoxPreference;

.field private mButtonFdn:Landroid/preference/Preference;

.field private mButtonInter:Landroid/preference/CheckBoxPreference;

.field private mButtonMr:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mExtension:Lcom/mediatek/phone/ext/OthersSettingsExtension;

.field private mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mTargetPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 66
    new-instance v0, Lcom/mediatek/settings/OthersSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/OthersSettings$1;-><init>(Lcom/mediatek/settings/OthersSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/OthersSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/settings/OthersSettings;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/OthersSettings;)Lcom/mediatek/phone/ext/OthersSettingsExtension;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mExtension:Lcom/mediatek/phone/ext/OthersSettingsExtension;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/OthersSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/OthersSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/settings/OthersSettings;Lcom/mediatek/phone/ext/OthersSettingsExtension;)Lcom/mediatek/phone/ext/OthersSettingsExtension;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Lcom/mediatek/phone/ext/OthersSettingsExtension;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/OthersSettings;->mExtension:Lcom/mediatek/phone/ext/OthersSettingsExtension;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/OthersSettings;Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Landroid/preference/Preference;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/OthersSettings;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/OthersSettings;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/OthersSettings;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/OthersSettings;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/OthersSettings;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonInter:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/OthersSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/OthersSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/OthersSettings;)Lcom/mediatek/settings/PreCheckForRunning;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/OthersSettings;Lcom/mediatek/settings/PreCheckForRunning;)Lcom/mediatek/settings/PreCheckForRunning;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/PreCheckForRunning;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/OthersSettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/OthersSettings;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/OthersSettings;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    return-object p1
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 224
    .local v0, "buttonTtyMode":I
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, "settingsTtyMode":I
    const-string v3, "Settings/OthersSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eq v0, v1, :cond_0

    .line 231
    packed-switch v0, :pswitch_data_0

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, v0}, Lcom/mediatek/settings/OthersSettings;->updatePreferredTtyModeSummary(I)V

    .line 245
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, "ttyModeChanged":Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/OthersSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    .end local v2    # "ttyModeChanged":Landroid/content/Intent;
    :cond_0
    return-void

    .line 236
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setScreenEnabled()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 267
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    const/4 v7, -0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v0, v4

    .line 270
    .local v0, "airplaneModeOn":Z
    :goto_0
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 271
    .local v1, "insertSim":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 279
    :goto_1
    return-void

    .end local v0    # "airplaneModeOn":Z
    .end local v1    # "insertSim":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_0
    move v0, v5

    .line 267
    goto :goto_0

    .line 273
    .restart local v0    # "airplaneModeOn":Z
    .restart local v1    # "insertSim":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 274
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 275
    .local v2, "slotId":I
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-static {v2, p0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .line 277
    .end local v2    # "slotId":I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .param p1, "ttyMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "txts":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 261
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 262
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 282
    const-string v0, "Settings/OthersSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 284
    if-ne v3, p2, :cond_0

    .line 285
    const-string v0, "simId"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    .line 288
    :cond_0
    const-string v0, "Settings/OthersSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    if-eq v0, v3, :cond_1

    .line 290
    iget v0, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-static {v0, v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    .line 292
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    if-nez p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/OthersSettings$OthersSettingsFragment;-><init>()V

    const-string v3, "other_settings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 89
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/OthersSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 190
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 192
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings;->finish()V

    .line 193
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 312
    const-string v3, "target_preference_key"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "targetPreferenceKey":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "other_settings"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 315
    .local v0, "fragment":Landroid/preference/PreferenceFragment;
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 316
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    .line 318
    .end local v0    # "fragment":Landroid/preference/PreferenceFragment;
    .end local v1    # "prefSet":Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v3, "simId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    .line 319
    const-string v3, "Settings/OthersSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onRestoreInstanceState], mSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/mediatek/settings/OthersSettings;->setScreenEnabled()V

    .line 204
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/mediatek/settings/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, "settingsTtyMode":I
    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, v0}, Lcom/mediatek/settings/OthersSettings;->updatePreferredTtyModeSummary(I)V

    .line 211
    .end local v0    # "settingsTtyMode":I
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "target_preference_key"

    iget-object v1, p0, Lcom/mediatek/settings/OthersSettings;->mTargetPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    const-string v0, "Settings/OthersSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSaveInstanceState], mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "simId"

    iget v1, p0, Lcom/mediatek/settings/OthersSettings;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    return-void
.end method

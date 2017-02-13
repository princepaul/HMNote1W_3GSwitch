.class public Lcom/mediatek/settings/FdnSetting2;
.super Landroid/app/Activity;
.source "FdnSetting2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;,
        Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;
    }
.end annotation


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final BUTTON_FDN_LIST_KEY:Ljava/lang/String; = "button_fdn_list_key"

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/FdnSetting2"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final TAG_FDN_SETTINGS2:Ljava/lang/String; = "fdn_settings2"


# instance fields
.field private mButtonChangePin2:Landroid/preference/Preference;

.field private mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

.field private mButtonFDNList:Landroid/preference/Preference;

.field private mExt:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mFDNHandler:Landroid/os/Handler;

.field private mFdnSupport:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPin2New:I

.field private mRetryPin2Old:I

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getDefaultSlot()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    .line 136
    new-instance v0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;-><init>(Lcom/mediatek/settings/FdnSetting2;Lcom/mediatek/settings/FdnSetting2$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/mediatek/settings/FdnSetting2$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/FdnSetting2$1;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    .line 501
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/FdnSetting2;Lcom/mediatek/phone/ext/SettingsExtension;)Lcom/mediatek/phone/ext/SettingsExtension;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # Lcom/mediatek/phone/ext/SettingsExtension;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/FdnSetting2;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/settings/FdnSetting2;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/FdnSetting2;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/settings/FdnSetting2;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->initSlotId()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->initUIState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/FdnSetting2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->isPhoneBookReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/FdnSetting2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->toggleFDNEnable(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/FdnSetting2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/FdnSetting2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/settings/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/FdnSetting2;Lcom/android/phone/settings/EditPinPreference;)Lcom/android/phone/settings/EditPinPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # Lcom/android/phone/settings/EditPinPreference;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/FdnSetting2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;

    .prologue
    .line 102
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/FdnSetting2;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method private displayMessage(I)V
    .locals 3
    .param p1, "strId"    # I

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "text":Ljava/lang/String;
    const v1, 0x7f0b02b7

    if-ne p1, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 278
    return-void
.end method

.method private getRetryPin2()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    .line 161
    .local v0, "retryCount":I
    iput v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    .line 162
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryPin2 retryCount ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    packed-switch v0, :pswitch_data_0

    .line 170
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b011d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 165
    :pswitch_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "getRetryPin2,GET_SIM_RETRY_EMPTY"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, " "

    goto :goto_0

    .line 168
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b011c

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPin2Count()I
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PIN2_RETRY:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    aget-object v0, v1, v2

    .line 156
    .local v0, "pin2RetryString":Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 154
    .end local v0    # "pin2RetryString":Ljava/lang/String;
    :cond_0
    const-string v0, "gsm.sim.retry.pin2"

    .restart local v0    # "pin2RetryString":Ljava/lang/String;
    goto :goto_0
.end method

.method private getRetryPuk2Count()I
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PUK2_RETRY:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    aget-object v0, v1, v2

    .line 146
    .local v0, "puk2RetryStr":Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 144
    .end local v0    # "puk2RetryStr":Ljava/lang/String;
    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    .restart local v0    # "puk2RetryStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private initSlotId()V
    .locals 4

    .prologue
    .line 585
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    .line 587
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 589
    .local v0, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 590
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->setTitle(Ljava/lang/CharSequence;)V

    .line 593
    .end local v0    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->registerCallBacks()V

    .line 594
    return-void
.end method

.method private initUIState()V
    .locals 4

    .prologue
    .line 570
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-static {v1, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 571
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->isFdnExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    .line 572
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    .line 573
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 574
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate,  mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->isPhoneBookReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "PHB is not ready, can not enable fdn"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->finish()V

    .line 582
    :cond_0
    return-void
.end method

.method private isPhoneBookReady()Z
    .locals 3

    .prologue
    .line 490
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->isPhbReady(I)Z

    move-result v0

    .line 491
    .local v0, "isPhoneBookReady":Z
    if-nez v0, :cond_0

    .line 492
    const v1, 0x7f0b00a8

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b008b

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/FdnSetting2;->showTipToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    return v0
.end method

.method private registerCallBacks()V
    .locals 2

    .prologue
    .line 557
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    :cond_0
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/settings/FdnSetting2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    return-void
.end method

.method private resetFDNDialog(I)V
    .locals 4
    .param p1, "strId"    # I

    .prologue
    const v3, 0x7f0b04e9

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "resetFDNDialog 0"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private toggleFDNEnable(Z)V
    .locals 8
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v4, 0x0

    .line 190
    const-string v5, "Settings/FdnSetting2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleFDNEnable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-nez p1, :cond_0

    .line 193
    const-string v5, "Settings/FdnSetting2"

    const-string v6, "toggleFDNEnable positiveResult is false"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v4}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 195
    iget v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iput v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 196
    const-string v4, "Settings/FdnSetting2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFDNEnable mRetryPin2Old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->isPhoneBookReady()Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    const-string v4, "Settings/FdnSetting2"

    const-string v5, "PHB is not ready, can not enable fdn"

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    invoke-virtual {v5}, Lcom/android/phone/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "password":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/mediatek/settings/FdnSetting2;->validatePin(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-static {v5, v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 213
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 214
    .local v1, "isEnabled":Z
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 217
    .local v2, "onComplete":Landroid/os/Message;
    if-nez v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-interface {v0, v4, v3, v2}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 225
    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v1    # "isEnabled":Z
    .end local v2    # "onComplete":Landroid/os/Message;
    :goto_1
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    const v4, 0x7f0b02b5

    invoke-direct {p0, v4}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 221
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/settings/EditPinPreference;->showPinDialog()V

    goto :goto_1
.end method

.method private updateEnableFDN()V
    .locals 3

    .prologue
    .line 300
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-static {v1, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 301
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is FdnEnabled=2131427962"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    const v2, 0x7f0b027c

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPinPreference;->setTitle(I)V

    .line 304
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    const v2, 0x7f0b0277

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPinPreference;->setSummary(I)V

    .line 305
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    const v2, 0x7f0b027a

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPinPreference;->setDialogTitle(I)V

    .line 312
    :goto_0
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 314
    return-void

    .line 307
    :cond_0
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is not FdnEnabled=2131427961"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    const v2, 0x7f0b027d

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPinPreference;->setTitle(I)V

    .line 309
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    const v2, 0x7f0b0278

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPinPreference;->setSummary(I)V

    .line 310
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    const v2, 0x7f0b0279

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/EditPinPreference;->setDialogTitle(I)V

    goto :goto_0
.end method

.method private updateFDNPreference()V
    .locals 4

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateScreen()V

    .line 319
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v1

    if-nez v1, :cond_1

    .line 320
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    .line 321
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFDNPreference, mRetryPin2New="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0b011f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "textMsg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPuk2Count()I

    move-result v1

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    const v2, 0x7f0b0120

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    .end local v0    # "textMsg":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    .line 338
    return-void

    .line 328
    .restart local v0    # "textMsg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    const v2, 0x7f0b04f4

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    .end local v0    # "textMsg":Ljava/lang/String;
    :cond_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateFDNPreference"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0b027b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 335
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0b027f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateScreen()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 526
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-static {v5, v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOn(Lcom/android/internal/telephony/Phone;I)Z

    move-result v2

    .line 527
    .local v2, "isRadioOn":Z
    iget-boolean v5, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPuk2Count()I

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    move v1, v3

    .line 531
    .local v1, "isFndButtonOrFdnlistEnable":Z
    :goto_0
    const/4 v0, 0x1

    .line 532
    .local v0, "isDualModeSettingOn":Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    move v0, v3

    .line 534
    :goto_1
    and-int/2addr v1, v0

    .line 536
    :cond_0
    const-string v5, "Settings/FdnSetting2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirplanmodeOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isOnAirplaneMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nisRadioOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nPin2Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nPuk2Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPuk2Count()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nisDualModeSettingOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nmFdnSupport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isOnAirplaneMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 544
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    invoke-virtual {v5, v1}, Lcom/android/phone/settings/EditPinPreference;->setEnabled(Z)V

    .line 545
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 546
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPuk2Count()I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 554
    :goto_3
    return-void

    .end local v0    # "isDualModeSettingOn":Z
    .end local v1    # "isFndButtonOrFdnlistEnable":Z
    :cond_1
    move v1, v4

    .line 527
    goto/16 :goto_0

    .restart local v0    # "isDualModeSettingOn":Z
    .restart local v1    # "isFndButtonOrFdnlistEnable":Z
    :cond_2
    move v0, v4

    .line 533
    goto :goto_1

    :cond_3
    move v3, v4

    .line 546
    goto :goto_2

    .line 550
    :cond_4
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/EditPinPreference;->setEnabled(Z)V

    .line 551
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 552
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "isPUK"    # Z

    .prologue
    const/16 v1, 0x8

    .line 290
    if-eqz p2, :cond_0

    move v0, v1

    .line 293
    .local v0, "pinMinimum":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 290
    .end local v0    # "pinMinimum":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 293
    .restart local v0    # "pinMinimum":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 343
    if-nez p1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/FdnSetting2$FdnSettingFragment;-><init>()V

    const-string v3, "fdn_settings2"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 347
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 484
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 486
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FdnSetting2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 487
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 471
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 472
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 479
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 474
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->finish()V

    .line 475
    const/4 v1, 0x1

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 448
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 449
    .local v0, "fdnDialog":Landroid/app/Dialog;
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    .line 450
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    if-eq v1, v2, :cond_1

    .line 454
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iput v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 455
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-eqz v0, :cond_0

    .line 457
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog.isShowing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, second mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "onResume, isShowing"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 467
    :cond_1
    return-void
.end method

.method public showTipToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    return-void
.end method

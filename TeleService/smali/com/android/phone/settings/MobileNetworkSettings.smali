.class public Lcom/android/phone/settings/MobileNetworkSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/MobileNetworkSettings$SubscriptionInfoComparable;
    }
.end annotation


# static fields
.field private static final BIG_SIM_SLOT_ICON:[I

.field public static final BUTTON_CARRIER_SETTINGS_KEY:Ljava/lang/String; = "carrier_settings_key"

.field private static final BUTTON_CDMA_LTE_DATA_SERVICE_KEY:Ljava/lang/String; = "cdma_lte_data_service_key"

.field private static final BUTTON_DATA_ENABLED_KEY:Ljava/lang/String; = "button_data_enabled_key"

.field private static final BUTTON_MMS_ENABLED_KEY:Ljava/lang/String; = "button_mms_enabled_key"

.field public static final BUTTON_NETWORK_UNLOCK_KEY:Ljava/lang/String; = "button_network_unlock_enabled_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final BUTTON_UPLMN_KEY:Ljava/lang/String; = "button_uplmn_key"

.field private static final CATEGORY_DEFAULT_SETTING:Ljava/lang/String; = "msim_default_setting"

.field private static final CATEGORY_GENERAL_SETTING:Ljava/lang/String; = "msim_general_setting"

.field public static final DEFAULT_DATA_SIM_CARD_ICC_ID:Ljava/lang/String; = "default_data_sim_card_icc_id"

.field private static final PREFE_CATEGARY_SIM_INFO_KEY:Ljava/lang/String; = "sim_info_key"

.field private static final PREFE_DEFAULT_DATA_KEY:Ljava/lang/String; = "default_data_key"

.field private static final PREFE_DEFAULT_VOICE_KEY:Ljava/lang/String; = "default_voice_key"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field private static final SMALL_SIM_SLOT_ICON:[I

.field public static final TAG:Ljava/lang/String;

.field static final preferredNetworkMode:I


# instance fields
.field private isMultiSimSupported:Z

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/Preference;

.field private mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonNetworkUnlock:Landroid/preference/CheckBoxPreference;

.field private mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mConnectManager:Landroid/net/ConnectivityManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

.field private mIsGlobalCdma:Z

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

.field private mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

.field private mPrefDefault:Landroid/preference/PreferenceCategory;

.field private mPrefGeneral:Landroid/preference/PreferenceCategory;

.field private mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShow4GForLTE:Z

.field private mSimInfoPrefeCategory:Landroid/preference/PreferenceGroup;

.field private mSimNum:I

.field private mSubscriptionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 90
    const-class v0, Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/MobileNetworkSettings;->BIG_SIM_SLOT_ICON:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/settings/MobileNetworkSettings;->SMALL_SIM_SLOT_ICON:[I

    return-void

    .line 111
    :array_0
    .array-data 4
        0x7f0200a4
        0x7f0200a5
    .end array-data

    .line 114
    :array_1
    .array-data 4
        0x7f0200b9
        0x7f0200ba
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 143
    iput-boolean v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->isMultiSimSupported:Z

    iput-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSubscriptionInfoList:Ljava/util/List;

    .line 149
    iput v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    .line 152
    new-instance v0, Lcom/android/phone/settings/MobileNetworkSettings$99;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/MobileNetworkSettings$99;-><init>(Lcom/android/phone/settings/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mTimeoutHandler:Landroid/os/Handler;

    .line 431
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MobileNetworkSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MobileNetworkSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private addSimInfoPreference()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, "isRadioOn":Z
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoPrefeCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 481
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    .line 482
    .local v4, "siminfo":Lmiui/telephony/SubscriptionInfo;
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v6

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v2

    .line 483
    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    .line 485
    .local v0, "enable":Z
    :goto_1
    new-instance v3, Lmiui/preference/ValuePreference;

    invoke-direct {v3, p0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 486
    .local v3, "simInfoPre":Lmiui/preference/ValuePreference;
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    :goto_2
    invoke-virtual {v3, v6}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v3, v6}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v3, v5}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 491
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/phone/settings/MobileNetworkSettings;->BIG_SIM_SLOT_ICON:[I

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmiui/preference/ValuePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 492
    invoke-virtual {v3, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 493
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoPrefeCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 483
    .end local v0    # "enable":Z
    .end local v3    # "simInfoPre":Lmiui/preference/ValuePreference;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 486
    .restart local v0    # "enable":Z
    .restart local v3    # "simInfoPre":Lmiui/preference/ValuePreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 488
    :cond_2
    const-string v6, ""

    goto :goto_3

    .line 495
    .end local v0    # "enable":Z
    .end local v3    # "simInfoPre":Lmiui/preference/ValuePreference;
    .end local v4    # "siminfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    return-void
.end method

.method private broadcastDefaultDataSlotChangedIntent(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    invoke-static {v0, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 428
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 246
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "sim_info_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoPrefeCategory:Landroid/preference/PreferenceGroup;

    .line 248
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "msim_general_setting"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefGeneral:Landroid/preference/PreferenceCategory;

    .line 249
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "msim_default_setting"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefDefault:Landroid/preference/PreferenceCategory;

    .line 250
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "default_data_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/MultiSimListPreference;

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    .line 252
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/MultiSimListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "default_voice_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/MultiSimListPreference;

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    .line 254
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/MultiSimListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "button_data_enabled_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 257
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "button_roaming_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/Preference;

    .line 258
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "button_mms_enabled_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    .line 259
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "cdma_lte_data_service_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 260
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "button_network_unlock_enabled_key"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonNetworkUnlock:Landroid/preference/CheckBoxPreference;

    .line 262
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v5, :cond_7

    .line 263
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/Preference;

    const v8, 0x7f0b04df

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 268
    :goto_0
    invoke-static {}, Lcom/android/phone/TelephonyCapabilities;->supportShowPLMNPreference()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->isMultiSimSupported:Z

    if-eqz v5, :cond_1

    .line 269
    :cond_0
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "button_uplmn_key"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v5

    if-ne v5, v6, :cond_8

    move v2, v6

    .line 273
    .local v2, "isLteOnCdma":Z
    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f090014

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIsGlobalCdma:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "setup_prepaid_data_service_url"

    invoke-static {v5, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 278
    .local v3, "missingDataServiceUrl":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_a

    .line 279
    :cond_2
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090016

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 287
    .local v1, "isCarrierSettingsEnabled":Z
    if-nez v1, :cond_3

    .line 288
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "carrier_settings_key"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 289
    .local v4, "pref":Landroid/preference/Preference;
    if-eqz v4, :cond_3

    .line 290
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "carrier_settings_key"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 294
    if-eqz v4, :cond_3

    .line 295
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 300
    .end local v4    # "pref":Landroid/preference/Preference;
    :cond_3
    new-instance v5, Lcom/android/phone/settings/MobileNetworkSettings$2;

    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, p0, v7}, Lcom/android/phone/settings/MobileNetworkSettings$2;-><init>(Lcom/android/phone/settings/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 316
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "mobile_data"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 320
    :cond_4
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    .line 321
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "always_enable_mms"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 325
    :cond_5
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonNetworkUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iget-boolean v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->isMultiSimSupported:Z

    if-eqz v5, :cond_b

    .line 328
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 336
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 337
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 338
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 339
    iget-boolean v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->isMultiSimSupported:Z

    if-eqz v5, :cond_6

    .line 340
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b04bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    :cond_6
    return-void

    .line 265
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "isCarrierSettingsEnabled":Z
    .end local v2    # "isLteOnCdma":Z
    .end local v3    # "missingDataServiceUrl":Z
    :cond_7
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/Preference;

    const v8, 0x7f0b04e0

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    :cond_8
    move v2, v7

    .line 272
    goto/16 :goto_1

    .restart local v2    # "isLteOnCdma":Z
    :cond_9
    move v5, v7

    .line 273
    goto/16 :goto_2

    .line 281
    .restart local v3    # "missingDataServiceUrl":Z
    :cond_a
    sget-object v5, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v7, "Keep ltePref"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 330
    .restart local v1    # "isCarrierSettingsEnabled":Z
    :cond_b
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoPrefeCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefGeneral:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    iget-object v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefDefault:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->setGsmCdmaOptions()V

    goto :goto_4
.end method

.method private setGsmCdmaOptions()V
    .locals 5

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 351
    .local v1, "settingsNetworkMode":I
    new-instance v2, Lcom/android/phone/settings/CdmaOptions;

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/phone/settings/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    .line 352
    new-instance v2, Lcom/android/phone/settings/GsmUmtsOptions;

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/settings/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    .line 363
    .end local v1    # "settingsNetworkMode":I
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 355
    .local v0, "phoneType":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 356
    new-instance v2, Lcom/android/phone/settings/CdmaOptions;

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/phone/settings/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    goto :goto_0

    .line 357
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 358
    new-instance v2, Lcom/android/phone/settings/GsmUmtsOptions;

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/settings/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    goto :goto_0

    .line 360
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setNoSimInfoUi()V
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoPrefeCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 514
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 515
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 516
    const v1, 0x7f0b04c3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 517
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoPrefeCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 520
    return-void
.end method

.method private setPreferenceSummary(Landroid/preference/Preference;I)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 401
    sget v4, Lcom/android/phone/settings/MultiSimListPreference;->DO_NOT_SET:I

    if-eq p2, v4, :cond_3

    .line 402
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 403
    .local v1, "info":Lmiui/telephony/SubscriptionInfo;
    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v3, "newName":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    .line 408
    const-string v4, "%%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 413
    :cond_1
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 414
    sget-object v4, Lcom/android/phone/settings/MobileNetworkSettings;->SMALL_SIM_SLOT_ICON:[I

    aget v4, v4, p2

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 422
    .end local v0    # "i":I
    .end local v1    # "info":Lmiui/telephony/SubscriptionInfo;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "newName":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 416
    .restart local v1    # "info":Lmiui/telephony/SubscriptionInfo;
    :cond_2
    sget-object v4, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v5, "setPreferenceSummary SubscriptionInfo is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 419
    .end local v1    # "info":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    const v4, 0x7f0b04d4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 420
    const v4, 0x7f020090

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_2
.end method


# virtual methods
.method public getSimInfo()V
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSubscriptionInfoList:Ljava/util/List;

    .line 440
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    .line 441
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSubscriptionInfoList:Ljava/util/List;

    new-instance v1, Lcom/android/phone/settings/MobileNetworkSettings$SubscriptionInfoComparable;

    invoke-direct {v1}, Lcom/android/phone/settings/MobileNetworkSettings$SubscriptionInfoComparable;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 524
    packed-switch p1, :pswitch_data_0

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 526
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 528
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const v4, 0x7f050025

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/MobileNetworkSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iput-object v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mConnectManager:Landroid/net/ConnectivityManager;

    .line 223
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 224
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->isMultiSimSupported:Z

    .line 227
    :try_start_0
    const-string v4, "com.android.systemui"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/settings/MobileNetworkSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 228
    .local v0, "con":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "config_show4GForLTE"

    const-string v7, "bool"

    const-string v8, "com.android.systemui"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, "id":I
    if-nez v2, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mShow4GForLTE:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "con":Landroid/content/Context;
    .end local v2    # "id":I
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->init()V

    .line 239
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 240
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/android/phone/settings/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void

    .line 230
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v0    # "con":Landroid/content/Context;
    .restart local v2    # "id":I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    .line 231
    .end local v0    # "con":Landroid/content/Context;
    .end local v2    # "id":I
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v6, "NameNotFoundException for show4GFotLTE"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mShow4GForLTE:Z

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x190

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 553
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/settings/GsmUmtsOptions;->destory()V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mTimeoutHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 562
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 542
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 543
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->finish()V

    .line 545
    const/4 v1, 0x1

    .line 547
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 388
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 389
    .local v1, "slotId":I
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "key":Ljava/lang/String;
    const-string v2, "default_data_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->setDefaultDataSlotId(I)Z

    .line 392
    invoke-direct {p0, v1}, Lcom/android/phone/settings/MobileNetworkSettings;->broadcastDefaultDataSlotChangedIntent(I)V

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->is3GSwitchLocked()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->showDialog(I)V

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->set3GCapabilitySIM(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mTimeoutHandler:Landroid/os/Handler;

    const/16 v5, 0x7d1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceSummary(Landroid/preference/Preference;I)V

    .line 397
    const/4 v2, 0x1

    return v2

    :cond_1
    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->removeDialog(I)V

    goto :goto_0

    .line 383
    :cond_2
    const-string v2, "default_voice_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/telephony/SubscriptionManager;->setDefaultVoiceSlotId(I)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 501
    .local v3, "slotId":I
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 502
    .local v1, "extras":Landroid/os/Bundle;
    invoke-static {v1, v3}, Lmiui/telephony/SubscriptionManager;->putSlotId(Landroid/os/Bundle;I)V

    .line 503
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceClick() has error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 164
    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/settings/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v8

    if-ne v8, v7, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v7

    .line 167
    :cond_1
    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/settings/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v8

    if-ne v8, v7, :cond_2

    .line 169
    const-string v6, "ril.cdma.inecmmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    iput-object p2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 175
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v6, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v8, 0x11

    invoke-virtual {p0, v6, v8}, Lcom/android/phone/settings/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/Preference;

    if-ne p2, v8, :cond_3

    .line 181
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v2, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v8, "com.miui.securitycenter"

    const-string v9, "com.miui.networkassistant.ui.activity.InternationalRoamingSettingActivity"

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_4

    .line 187
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 191
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_4
    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_8

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "setup_prepaid_data_service_url"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "tmpl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 195
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    .line 196
    .local v3, "tm":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 198
    const-string v1, ""

    .line 200
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 202
    .local v5, "url":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 200
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :cond_6
    new-array v8, v7, [Ljava/lang/CharSequence;

    aput-object v1, v8, v6

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 205
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Lmiui/telephony/TelephonyManager;
    :cond_7
    sget-object v6, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v8, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    .end local v4    # "tmpl":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_a

    .line 209
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "always_enable_mms"

    iget-object v10, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_9

    move v6, v7

    :cond_9
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    move v7, v6

    .line 214
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 367
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 368
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mConnectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 372
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_enable_mms"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    iget-boolean v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->isMultiSimSupported:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getSimInfo()V

    .line 375
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->updatePreferenceUI()V

    .line 376
    :cond_0
    return-void

    .line 372
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getSimInfo()V

    .line 380
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->updatePreferenceUI()V

    .line 382
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimListPreference;->notifySimInfoDataChanged()V

    .line 383
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimListPreference;->notifySimInfoDataChanged()V

    .line 384
    return-void
.end method

.method public updatePreferenceUI()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getSimInfo()V

    .line 450
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 451
    sget-object v5, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v6, "updatePreferenceUI: update UI"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 454
    .local v1, "isAirplaneModeOff":Z
    :goto_0
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    if-lez v5, :cond_1

    if-eqz v1, :cond_1

    move v5, v3

    :goto_1
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 455
    iget v5, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    if-lez v5, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->addSimInfoPreference()V

    .line 462
    :goto_2
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v5

    if-le v5, v3, :cond_3

    move v0, v3

    .line 463
    .local v0, "enable":Z
    :goto_3
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v3, v0}, Lcom/android/phone/settings/MultiSimListPreference;->setEnabled(Z)V

    .line 464
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v3, v0}, Lcom/android/phone/settings/MultiSimListPreference;->setEnabled(Z)V

    .line 466
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v2

    .line 467
    .local v2, "slotId":I
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/MultiSimListPreference;->setValue(Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-direct {p0, v3, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceSummary(Landroid/preference/Preference;I)V

    .line 470
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSlotId()I

    move-result v2

    .line 471
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/MultiSimListPreference;->setValue(Ljava/lang/String;)V

    .line 472
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-direct {p0, v3, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceSummary(Landroid/preference/Preference;I)V

    .line 476
    .end local v0    # "enable":Z
    .end local v1    # "isAirplaneModeOff":Z
    .end local v2    # "slotId":I
    :goto_4
    return-void

    :cond_0
    move v1, v4

    .line 452
    goto :goto_0

    .restart local v1    # "isAirplaneModeOff":Z
    :cond_1
    move v5, v4

    .line 454
    goto :goto_1

    .line 458
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->setNoSimInfoUi()V

    goto :goto_2

    :cond_3
    move v0, v4

    .line 462
    goto :goto_3

    .line 474
    .end local v1    # "isAirplaneModeOff":Z
    :cond_4
    sget-object v3, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v4, "updatePreferenceUI(): on backgroud no need update preference"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

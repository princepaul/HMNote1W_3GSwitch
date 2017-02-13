.class public Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
.super Lmiui/preference/PreferenceActivity;
.source "PreferredNetworkTypeListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PreferedNetworkTypeListPreference"

.field private static final TYPE_ITEM_2G_ONLY:Ljava/lang/String; = "1"

.field private static final TYPE_ITEM_3G_ONLY:Ljava/lang/String; = "2"

.field private static final TYPE_LIST_CDMA:Ljava/lang/String; = "network_type_list_cdma"

.field private static final TYPE_LIST_GLOBAL:Ljava/lang/String; = "7"

.field private static final TYPE_LIST_GSM_UMTS:Ljava/lang/String; = "network_type_list_gsm_umts"


# instance fields
.field private mCurrentNetworkType:I

.field private mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mPreference2GOnly:Landroid/preference/Preference;

.field private mPreference3GOnly:Landroid/preference/Preference;

.field private mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 366
    new-instance v0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V

    iput-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->handleClick(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lmiui/preference/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getCheckedPreference()Lmiui/preference/RadioButtonPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->updatePreferredNetworkTypes()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkRadioPreference(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 170
    .local v1, "pref":Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 172
    .end local v1    # "pref":Lmiui/preference/RadioButtonPreference;
    :cond_0
    return-void
.end method

.method private getAllRadioPreference(Landroid/preference/Preference;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    instance-of v2, p1, Lmiui/preference/RadioButtonPreference;

    if-eqz v2, :cond_1

    .line 157
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    :cond_0
    return-void

    .line 159
    :cond_1
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 160
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 161
    .local v1, "pg":Landroid/preference/PreferenceGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 162
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCheckedPreference()Lmiui/preference/RadioButtonPreference;
    .locals 3

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 176
    .local v1, "pref":Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    .end local v1    # "pref":Lmiui/preference/RadioButtonPreference;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleClick(I)V
    .locals 5
    .param p1, "networkType"    # I

    .prologue
    .line 221
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v1

    .line 224
    .local v1, "mCMGemini":Lcom/android/internal/telephony/gemini/MTKCallManager;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 225
    .local v0, "geminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 231
    .end local v0    # "geminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v1    # "mCMGemini":Lcom/android/internal/telephony/gemini/MTKCallManager;
    :goto_0
    iput p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    .line 237
    return-void

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private updatePreferredNetworkTypes()V
    .locals 5

    .prologue
    .line 324
    const-string v3, "network_type_list_gsm_umts"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 327
    .local v1, "preferredNetworkTypes":Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_4

    .line 331
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "numeric":Ljava/lang/String;
    sget-boolean v3, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "460"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "network_type_list_gsm_umts"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 337
    :cond_1
    sget-boolean v3, Lmiui/os/Build;->IS_TDS_CDMA:Z

    if-eqz v3, :cond_2

    .line 338
    if-eqz v1, :cond_2

    .line 339
    const v3, 0x7f0b0213

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    :cond_2
    sget-boolean v3, Lmiui/os/Build;->IS_TDS_CDMA:Z

    if-eqz v3, :cond_5

    .line 346
    invoke-static {v0}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v2

    .line 351
    .local v2, "remove":Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPreference3GOnly:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 352
    if-eqz v2, :cond_6

    .line 353
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPreference3GOnly:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPreference2GOnly:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportShow2GNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 361
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPreference2GOnly:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    .end local v0    # "numeric":Ljava/lang/String;
    .end local v2    # "remove":Z
    :cond_4
    return-void

    .line 348
    .restart local v0    # "numeric":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(Ljava/lang/String;)Z

    move-result v2

    .restart local v2    # "remove":Z
    goto :goto_0

    .line 355
    :cond_6
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPreference3GOnly:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f05002e

    const v7, 0x7f05002a

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 74
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v4

    invoke-static {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    .line 77
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    iget v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 78
    new-instance v3, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Lcom/android/phone/settings/PreferredNetworkTypeListPreference$1;)V

    iput-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    .line 81
    const v3, 0x7f050026

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 85
    sget-boolean v3, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "7"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 90
    .local v2, "phoneType":I
    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->isWorldPhone(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v2, v6, :cond_4

    .line 91
    sget-boolean v3, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "7"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 93
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "network_type_list_cdma"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0, v8}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    .line 97
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/telephony/ServiceProviderUtils;->isChinaTelecom(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    invoke-virtual {p0, v7}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    .line 99
    const-string v3, "2"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPreference3GOnly:Landroid/preference/Preference;

    .line 135
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->updatePreferredNetworkTypes()V

    .line 137
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 143
    .local v0, "bar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {v0, v5}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 146
    :cond_3
    return-void

    .line 102
    .end local v0    # "bar":Lmiui/app/ActionBar;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "7"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 103
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "network_type_list_cdma"

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 105
    if-ne v2, v6, :cond_5

    .line 106
    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {p0, v8}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 109
    :cond_5
    if-ne v2, v5, :cond_e

    .line 110
    sget-boolean v3, Lmiui/os/Build;->IS_MIFIVE:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOX_CM:Z

    if-eqz v3, :cond_7

    .line 111
    :cond_6
    const v3, 0x7f050031

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 112
    :cond_7
    sget-boolean v3, Lmiui/os/Build;->IS_MIFOUR_LTE_CM:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CM:Z

    if-eqz v3, :cond_9

    .line 113
    :cond_8
    const v3, 0x7f05002d

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    .line 114
    const-string v3, "1"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPreference2GOnly:Landroid/preference/Preference;

    goto :goto_0

    .line 115
    :cond_9
    sget-boolean v3, Lmiui/os/Build;->IS_MIFOUR_LTE_CU:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_MIFOUR_LTE_INDIA:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_MIFOUR_LTE_SEASA:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOX_CU:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CU:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOX_SA:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOX_BR:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOX_IN:Z

    if-eqz v3, :cond_b

    .line 120
    :cond_a
    const v3, 0x7f050030

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 121
    :cond_b
    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    if-eqz v3, :cond_c

    .line 122
    const v3, 0x7f05002c

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 123
    :cond_c
    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    if-eqz v3, :cond_d

    .line 124
    const v3, 0x7f05002b

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 127
    :cond_d
    invoke-virtual {p0, v7}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    .line 128
    const-string v3, "2"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPreference3GOnly:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 131
    :cond_e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 317
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->finish()V

    .line 320
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "networkType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 195
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b020a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0214

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$2;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$1;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 216
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 214
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->handleClick(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 185
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 186
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 188
    return-void
.end method

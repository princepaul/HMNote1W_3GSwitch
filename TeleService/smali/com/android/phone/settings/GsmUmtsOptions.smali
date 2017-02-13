.class public Lcom/android/phone/settings/GsmUmtsOptions;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"


# static fields
.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_OPERATOR_SELECTION_EXPAND_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_PREFER_NETWORK_TYPE_KEY:Ljava/lang/String; = "button_preferred_network_type_key"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/GsmUmtsOptions;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/settings/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V
    .locals 1
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "slotId"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    .line 180
    new-instance v0, Lcom/android/phone/settings/GsmUmtsOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/GsmUmtsOptions$1;-><init>(Lcom/android/phone/settings/GsmUmtsOptions;)V

    iput-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 68
    iput-object p2, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 69
    iput p3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    .line 71
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    iget v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->create()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/GsmUmtsOptions;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/GsmUmtsOptions;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/GsmUmtsOptions;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/GsmUmtsOptions;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/GsmUmtsOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/GsmUmtsOptions;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/phone/settings/GsmUmtsOptions;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/GsmUmtsOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/GsmUmtsOptions;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->isIccCardActivate()Z

    move-result v0

    return v0
.end method

.method private isIccCardActivate()Z
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lcom/android/phone/settings/GsmUmtsOptions;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method private updateOperatorSelectionVisibility()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOperatorSelectionVisibility: mPhone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 122
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-nez v3, :cond_1

    .line 123
    sget-object v3, Lcom/android/phone/settings/GsmUmtsOptions;->LOG_TAG:Ljava/lang/String;

    const-string v4, "mButtonOperatorSelectionExpand is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 133
    const-string v3, "[CSP] Enabling Operator Selection menu."

    invoke-direct {p0, v3}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 145
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    invoke-direct {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->isIccCardActivate()Z

    move-result v1

    .line 149
    .local v1, "isIccCardEnable":Z
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_4

    .line 150
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    if-nez v1, :cond_4

    .line 152
    :cond_3
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 155
    :cond_4
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    .line 156
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v3

    if-ne v3, v6, :cond_5

    if-nez v1, :cond_0

    .line 158
    :cond_5
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 136
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "isIccCardEnable":Z
    :cond_6
    const-string v3, "[CSP] Disabling Operator Selection menu."

    invoke-direct {p0, v3}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    goto :goto_1
.end method


# virtual methods
.method protected create()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 78
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_apn_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 79
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 80
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_carrier_sel_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 82
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_preferred_network_type_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->enableScreen()V

    .line 87
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method

.method public enableScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 95
    const-string v1, "Not a GSM phone, disabling GSM preferences (apn, use2g, select operator)"

    invoke-direct {p0, v1}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 116
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->updateOperatorSelectionVisibility()V

    .line 117
    return-void

    .line 99
    :cond_1
    const-string v1, "Not a CDMA phone"

    invoke-direct {p0, v1}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_apn_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    :cond_2
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->updateOperatorSelectionVisibility()V

    .line 91
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 172
    const-string v0, "preferenceTreeClick: return false"

    invoke-direct {p0, v0}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public setOptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 218
    :cond_2
    return-void
.end method

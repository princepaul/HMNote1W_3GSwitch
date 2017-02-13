.class public Lcom/android/phone/settings/AutoIpEditPrefixActivity;
.super Lmiui/preference/PreferenceActivity;
.source "AutoIpEditPrefixActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mISimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;-><init>(Lcom/android/phone/settings/AutoIpEditPrefixActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->mISimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/AutoIpEditPrefixActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpEditPrefixActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->updateSimDisplayName()V

    return-void
.end method

.method private createEditTextPreference(Lmiui/telephony/SubscriptionInfo;)Landroid/preference/EditTextPreference;
    .locals 7
    .param p1, "simInfoRecord"    # Lmiui/telephony/SubscriptionInfo;

    .prologue
    const/4 v6, 0x0

    .line 68
    new-instance v1, Landroid/preference/EditTextPreference;

    invoke-direct {v1, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "edittext":Landroid/preference/EditTextPreference;
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    const v3, 0x7f0b0414

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 71
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    if-nez v3, :cond_0

    .line 72
    const v3, 0x7f0200a4

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setIcon(I)V

    .line 77
    :goto_0
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-static {p0, v3}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "defaultIpPrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v0, v4, v5}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "ipPrefix":Ljava/lang/String;
    const v3, 0x7f0b0415

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    invoke-virtual {v1, v6}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 85
    return-object v1

    .line 74
    .end local v0    # "defaultIpPrefix":Ljava/lang/String;
    .end local v2    # "ipPrefix":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0200a5

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private createPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 53
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 56
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 57
    .local v1, "record1":Lmiui/telephony/SubscriptionInfo;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    .line 58
    .local v2, "record2":Lmiui/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0, v1}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->createEditTextPreference(Lmiui/telephony/SubscriptionInfo;)Landroid/preference/EditTextPreference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 61
    :cond_0
    if-eqz v2, :cond_1

    .line 62
    invoke-direct {p0, v2}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->createEditTextPreference(Lmiui/telephony/SubscriptionInfo;)Landroid/preference/EditTextPreference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 64
    :cond_1
    return-object v3
.end method

.method private updateSimDisplayName()V
    .locals 4

    .prologue
    .line 89
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 90
    .local v0, "record1":Lmiui/telephony/SubscriptionInfo;
    invoke-direct {p0, v0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->updateSimDisplayName(Lmiui/telephony/SubscriptionInfo;)V

    .line 91
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 92
    .local v1, "record2":Lmiui/telephony/SubscriptionInfo;
    invoke-direct {p0, v1}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->updateSimDisplayName(Lmiui/telephony/SubscriptionInfo;)V

    .line 93
    return-void
.end method

.method private updateSimDisplayName(Lmiui/telephony/SubscriptionInfo;)V
    .locals 8
    .param p1, "simInfoRecord"    # Lmiui/telephony/SubscriptionInfo;

    .prologue
    const/4 v7, 0x0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 98
    .local v3, "pref":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 99
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 100
    .local v1, "editTextPreference":Landroid/preference/EditTextPreference;
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-static {p0, v4}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "defaultIpPrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v0, v5, v6}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "ipPrefix":Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 104
    const v4, 0x7f0b0415

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, v7}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 110
    .end local v0    # "defaultIpPrefix":Ljava/lang/String;
    .end local v1    # "editTextPreference":Landroid/preference/EditTextPreference;
    .end local v2    # "ipPrefix":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->createPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 42
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->mISimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 48
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->mISimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 49
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "slotId":I
    move-object v0, p2

    .line 115
    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "ipPrefix":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-static {p0, v3}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v4

    int-to-long v1, v4

    .line 120
    .local v1, "simId":J
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v1, v2}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 121
    const v4, 0x7f0b0415

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    return v7
.end method

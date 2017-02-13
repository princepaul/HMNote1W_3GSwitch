.class public Lcom/android/phone/settings/AutoIpSetting;
.super Lmiui/preference/PreferenceActivity;
.source "AutoIpSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ADD_ZERO_PREFIX_SWITCH_KEY:Ljava/lang/String; = "button_autoip_add_zero_prefix"

.field private static final AUTOIP_EXCEPTIONS:Ljava/lang/String; = "button_autoip_exceptions"

.field static final AUTOIP_SWITCH_KEY:Ljava/lang/String; = "button_autoip"

.field private static final SUPPORT_LOCAL_NUMBERS_KEY:Ljava/lang/String; = "button_autoip_support_local_numbers"

.field private static final TEXT_CURRENT_AREACODE_KEY:Ljava/lang/String; = "button_text_autoip_current_areacode"

.field private static final TEXT_IP_PREFIX_KEY:Ljava/lang/String; = "button_text_autoip_prefix"

.field private static final TEXT_IP_PREFIX_MSIM_KEY:Ljava/lang/String; = "button_text_ip_prefix_msim"


# instance fields
.field private mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

.field private mAutoIpEnable:Landroid/preference/CheckBoxPreference;

.field private mAutoIpExceptions:Landroid/preference/Preference;

.field private mISimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscription:I

.field private mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

.field private mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

.field private mTextIpPrefix:Landroid/preference/EditTextPreference;

.field private mTextIpPrefixMSim:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    .line 121
    new-instance v0, Lcom/android/phone/settings/AutoIpSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/AutoIpSetting$2;-><init>(Lcom/android/phone/settings/AutoIpSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mISimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/AutoIpSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpSetting;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/AutoIpSetting;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpSetting;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/AutoIpSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpSetting;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpSetting;->updateTextIpPrefix()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/AutoIpSetting;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/phone/settings/AutoIpSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    return-void
.end method

.method private alertToInputCurrentAreaCode()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0421

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0422

    new-instance v2, Lcom/android/phone/settings/AutoIpSetting$3;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/AutoIpSetting$3;-><init>(Lcom/android/phone/settings/AutoIpSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 204
    return-void
.end method

.method private closeAreaCodeDialog()V
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 221
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 224
    :cond_0
    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 210
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 211
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 217
    :cond_0
    return-void

    .line 210
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateTextIpPrefix()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 227
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    .line 228
    .local v0, "count":I
    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 230
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->finish()V

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefixMSim:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 237
    .local v6, "simInfoRecords":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    .line 238
    .local v5, "simInfoRecord":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    iput v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    .line 239
    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    int-to-long v3, v7

    .line 244
    .end local v5    # "simInfoRecord":Lmiui/telephony/SubscriptionInfo;
    .end local v6    # "simInfoRecords":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    .local v3, "simId":J
    :goto_1
    iget v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    invoke-static {p0, v7}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "defaultIpPrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1, v3, v4}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "ipPrefix":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 247
    iget-object v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    const v8, 0x7f0b0415

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/settings/AutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    .end local v1    # "defaultIpPrefix":Ljava/lang/String;
    .end local v2    # "ipPrefix":Ljava/lang/String;
    .end local v3    # "simId":J
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v7

    iput v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    .line 242
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    invoke-virtual {v7, v8}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v7

    int-to-long v3, v7

    .restart local v3    # "simId":J
    goto :goto_1

    .line 251
    .end local v3    # "simId":J
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->addPreferencesFromResource(I)V

    .line 135
    const-string v3, "button_autoip"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    .line 136
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    const-string v3, "button_text_autoip_prefix"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    .line 140
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    const-string v3, "button_text_ip_prefix_msim"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefixMSim:Landroid/preference/Preference;

    .line 144
    const-string v3, "button_text_autoip_current_areacode"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    .line 145
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    const-string v3, "button_autoip_add_zero_prefix"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Telephony;->isAutoAddZeroPrefix(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 149
    .local v1, "isAddZeroPrefixEnabled":Z
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    const-string v3, "button_autoip_support_local_numbers"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpSupportLocalNum(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 154
    .local v2, "isSupportLocalNumbers":Z
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    const-string v3, "button_autoip_exceptions"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpExceptions:Landroid/preference/Preference;

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 159
    .local v0, "bar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 160
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 162
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mISimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 181
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mISimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 182
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 187
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->finish()V

    .line 189
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 59
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_2

    move-object v2, p2

    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "ipPrefix":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    iget v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    invoke-static {p0, v5}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 64
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    invoke-virtual {v5, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v5

    int-to-long v3, v5

    .line 65
    .local v3, "simId":J
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v3, v4}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 66
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    const v6, 0x7f0b0415

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/settings/AutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    .end local v2    # "ipPrefix":Ljava/lang/String;
    .end local v3    # "simId":J
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v8

    .line 67
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_4

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 69
    .local v1, "flag":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v5}, Lcom/android/phone/settings/AutoIpSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpEnable(Landroid/content/ContentResolver;Z)V

    .line 74
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpSetting;->closeAreaCodeDialog()V

    goto :goto_0

    .line 76
    .end local v1    # "flag":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_6

    move-object v0, p2

    .line 77
    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "currentAreaCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/provider/MiuiSettings$Telephony;->setCurrentAeraCode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 80
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpSetting;->alertToInputCurrentAreaCode()V

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v9}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpEnable(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 83
    :cond_5
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v6, 0x7f0b0416

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/settings/AutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpEnable(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 86
    .end local v0    # "currentAreaCode":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_7

    .line 87
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 88
    .restart local v1    # "flag":Z
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoAddZeroPrefixEnable(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 89
    .end local v1    # "flag":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v5, p0, Lcom/android/phone/settings/AutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_1

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 91
    .restart local v1    # "flag":Z
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpSupportLocalNumEnable(Landroid/content/ContentResolver;Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 99
    .local v2, "preferenceClick":Z
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    if-ne p2, v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 101
    .local v1, "popupDialog":Landroid/app/Dialog;
    instance-of v3, v1, Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 102
    check-cast v0, Landroid/app/AlertDialog;

    .line 103
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 104
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/android/phone/settings/AutoIpSetting$1;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/settings/AutoIpSetting$1;-><init>(Lcom/android/phone/settings/AutoIpSetting;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "popupDialog":Landroid/app/Dialog;
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 167
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 168
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpSetting;->updateTextIpPrefix()V

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "currentAreaCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v2, 0x7f0b041a

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpExceptions:Landroid/preference/Preference;

    invoke-static {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v2, 0x7f0b0416

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/AutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

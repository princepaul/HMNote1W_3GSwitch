.class public Lcom/android/phone/settings/SimPickerPreference;
.super Lmiui/preference/PreferenceActivity;
.source "SimPickerPreference.java"


# static fields
.field private static final BIG_SIM_SLOT_ICON:[I

.field public static final EXTRA_KEY_INTENT:Ljava/lang/String; = "EXTRA_INTENT"

.field public static final EXTRA_KEY_TITLE:Ljava/lang/String; = "EXTRA_TITLE"


# instance fields
.field private mForwardIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/SimPickerPreference;->BIG_SIM_SLOT_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200a4
        0x7f0200a5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createSimInfoPreference(Lmiui/telephony/SubscriptionInfo;)Landroid/preference/Preference;
    .locals 4
    .param p1, "simInfo"    # Lmiui/telephony/SubscriptionInfo;

    .prologue
    .line 79
    new-instance v1, Lmiui/preference/ValuePreference;

    invoke-direct {v1, p0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, "simInfoPref":Lmiui/preference/ValuePreference;
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    .line 83
    sget-object v2, Lcom/android/phone/settings/SimPickerPreference;->BIG_SIM_SLOT_ICON:[I

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setIcon(I)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-static {v0, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 86
    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 88
    return-object v1
.end method

.method public static showSimPicker(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v4, v5}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v2

    .line 96
    .local v2, "slotId":I
    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v2, v4, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/settings/SimPickerPreference;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "EXTRA_INTENT"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const-string v4, "EXTRA_TITLE"

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->addWindowLable(Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "slotId":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 60
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->finish()V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 68
    iget-object v4, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-static {v4, v3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 69
    iget-object v3, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/SimPickerPreference;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->finish()V

    goto :goto_0

    .line 73
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 74
    .local v2, "simInfoRecord":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/phone/settings/SimPickerPreference;->createSimInfoPreference(Lmiui/telephony/SubscriptionInfo;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v2, 0x7f050035

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/SimPickerPreference;->addPreferencesFromResource(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/SimPickerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_INTENT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    .line 41
    iget-object v2, p0, Lcom/android/phone/settings/SimPickerPreference;->mForwardIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->finish()V

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/SimPickerPreference;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 47
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_1

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/android/phone/settings/SimPickerPreference;->updateScreen()V

    .line 56
    return-void
.end method

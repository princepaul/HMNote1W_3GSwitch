.class public Lcom/mediatek/settings/IpPrefixPreference;
.super Landroid/app/Activity;
.source "IpPrefixPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;
    }
.end annotation


# static fields
.field private static final IP_PREFIX_NUMBER_EDIT_KEY:Ljava/lang/String; = "button_ip_prefix_edit_key"

.field private static final TAG:Ljava/lang/String; = "IpPrefixPreference"

.field private static final TAG_IP_PREFIX_PREFERENCE:Ljava/lang/String; = "ip_prefix_preference"


# instance fields
.field private mButtonIpPrefix:Landroid/preference/EditTextPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I

    .line 42
    new-instance v0, Lcom/mediatek/settings/IpPrefixPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/IpPrefixPreference$1;-><init>(Lcom/mediatek/settings/IpPrefixPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/IpPrefixPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/IpPrefixPreference;

    .prologue
    .line 32
    iget v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/IpPrefixPreference;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/IpPrefixPreference;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/settings/IpPrefixPreference;Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/IpPrefixPreference;
    .param p1, "x1"    # Landroid/preference/EditTextPreference;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/settings/IpPrefixPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/IpPrefixPreference;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/settings/IpPrefixPreference;->initSlotId()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/IpPrefixPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/IpPrefixPreference;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/settings/IpPrefixPreference;->registerCallBacks()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/IpPrefixPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/IpPrefixPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/settings/IpPrefixPreference;->saveIpPrefix(Ljava/lang/String;)V

    return-void
.end method

.method private getIpPrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getIpPrefixKey()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIpPrefixKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 185
    const-string v1, "ipprefix"

    .line 186
    .local v1, "key":Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I

    invoke-static {p0, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 187
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_0
    const-string v2, "IpPrefixPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpPrefixKey key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-object v1
.end method

.method private initSlotId()V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I

    .line 164
    const-string v1, "IpPrefixPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initSlotId][mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I

    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 166
    .local v0, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    .end local v0    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    return-void
.end method

.method private registerCallBacks()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 175
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method private saveIpPrefix(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v1, "IpPrefixPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save str: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getIpPrefixKey()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const-string v1, "IpPrefixPreference"

    const-string v2, "Store ip prefix error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 150
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    new-instance v3, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;

    invoke-direct {v3}, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;-><init>()V

    const-string v4, "ip_prefix_preference"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/IpPrefixPreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 116
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->finish()V

    .line 119
    const/4 v1, 0x1

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    iget v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->getIpPrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "preFix":Ljava/lang/String;
    const-string v1, "IpPrefixPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preFix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 146
    return-void
.end method

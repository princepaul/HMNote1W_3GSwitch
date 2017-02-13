.class public Lcom/mediatek/settings/CallSettings;
.super Landroid/app/Activity;
.source "CallSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallSettings$CallSettingsFragment;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallSettings"

.field private static final TAG_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field static mVTSetting:Landroid/preference/Preference;

.field static mVoiceSetting:Landroid/preference/Preference;


# instance fields
.field private mExtension:Lcom/mediatek/phone/ext/ICallSettingsConnection;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSipCallSetting:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 36
    sput-object v0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mSipCallSetting:Landroid/preference/Preference;

    .line 41
    new-instance v0, Lcom/mediatek/settings/CallSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallSettings$1;-><init>(Lcom/mediatek/settings/CallSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CallSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CallSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->setScreenEnabled()V

    return-void
.end method

.method private setScreenEnabled()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 144
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 145
    .local v2, "insertSim":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "insert3GSim":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    sget-object v3, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 148
    sget-object v6, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    :cond_0
    sget-object v3, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 158
    .end local v1    # "insert3GSim":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :goto_2
    return-void

    .restart local v1    # "insert3GSim":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_1
    move v3, v5

    .line 148
    goto :goto_0

    :cond_2
    move v4, v5

    .line 150
    goto :goto_1

    .line 152
    .end local v1    # "insert3GSim":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_3
    const/4 v3, -0x1

    invoke-static {v3}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->hasIccCard(I)Z

    move-result v0

    .line 153
    .local v0, "hasSimCard":Z
    sget-object v3, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 154
    sget-object v3, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    :cond_4
    sget-object v3, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/mediatek/phone/ext/ExtensionManager;->getCallSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/phone/ext/ICallSettingsConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/CallSettings;->mExtension:Lcom/mediatek/phone/ext/ICallSettingsConnection;

    .line 59
    iget-object v2, p0, Lcom/mediatek/settings/CallSettings;->mExtension:Lcom/mediatek/phone/ext/ICallSettingsConnection;

    invoke-interface {v2, p0}, Lcom/mediatek/phone/ext/ICallSettingsConnection;->startCallSettingsActivity(Landroid/app/Activity;)V

    .line 61
    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    new-instance v4, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;

    invoke-direct {v4}, Lcom/mediatek/settings/CallSettings$CallSettingsFragment;-><init>()V

    const-string v5, "call_settings"

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 66
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/settings/CallSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 122
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 124
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->finish()V

    .line 125
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->setScreenEnabled()V

    .line 136
    return-void
.end method

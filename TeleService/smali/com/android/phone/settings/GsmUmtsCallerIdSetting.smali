.class public Lcom/android/phone/settings/GsmUmtsCallerIdSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallerIdSetting.java"


# static fields
.field private static final BUTTON_CLIR_KEY:Ljava/lang/String; = "button_clir"

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GsmUmtsCallerIdSetting"


# instance fields
.field private mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const v2, 0x7f05001b

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 42
    .local v1, "slotId":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 43
    const-string v2, "button_clir"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CLIRListPreference;

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    .line 45
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 46
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 67
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->finish()V

    .line 69
    const/4 v1, 0x1

    .line 71
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/CLIRListPreference;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/settings/CLIRListPreference;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/phone/settings/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 62
    :cond_0
    return-void
.end method

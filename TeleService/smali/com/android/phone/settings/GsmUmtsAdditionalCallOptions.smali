.class public Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"


# static fields
.field private static final BUTTON_CLIR_KEY:Ljava/lang/String; = "button_clir_key"

.field private static final BUTTON_CW_KEY:Ljava/lang/String; = "button_cw_key"

.field private static final LOG_TAG:Ljava/lang/String; = "GsmUmtsAdditionalCallOptions"


# instance fields
.field private final DBG:Z

.field private mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

.field private mInitIndex:I

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->DBG:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    .line 30
    iput v1, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 31
    iput v1, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v3, 0x7f050018

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->addPreferencesFromResource(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v4

    invoke-static {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mSubscription:I

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 43
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v3, "button_clir_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CLIRListPreference;

    iput-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    .line 44
    const-string v3, "button_cw_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    .line 46
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    if-nez p1, :cond_1

    .line 51
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    iget v4, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v3, p0, v6, v4}, Lcom/android/phone/settings/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 72
    :cond_0
    return-void

    .line 54
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 55
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    iget v4, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v3, p0, v5, v4}, Lcom/android/phone/settings/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 56
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    iget v4, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v3, p0, v5, v4}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 57
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 58
    .local v1, "clirArray":[I
    if-eqz v1, :cond_2

    .line 61
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/settings/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    iget v4, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v3, p0, v6, v4}, Lcom/android/phone/settings/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 85
    iget v1, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget v1, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 87
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 88
    .local v0, "pref":Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mSubscription:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 98
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->finish()V

    .line 100
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/settings/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/settings/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 81
    :cond_0
    return-void
.end method

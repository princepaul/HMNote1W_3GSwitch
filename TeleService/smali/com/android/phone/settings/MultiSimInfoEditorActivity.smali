.class public Lcom/android/phone/settings/MultiSimInfoEditorActivity;
.super Lmiui/preference/PreferenceActivity;
.source "MultiSimInfoEditorActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/text/TextWatcher;
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;,
        Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;
    }
.end annotation


# static fields
.field private static final ALL_RADIO_OFF:I = 0x0

.field private static final ALL_RADIO_ON:I = 0x3

.field private static final BUTTON_UPLMN_KEY:Ljava/lang/String; = "button_uplmn_key"

.field private static final DATA_SWITCH_TIME_OUT_MSG:I = 0x7d0

.field private static final DIALOG_NOT_SHOW_SUCCESS_MSG:I = 0x7d1

.field private static final EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE:I = 0x1

.field private static final MSG_KEEP_CHECKED_STATE:I = 0x1

.field private static final MSG_SWITCH_RADIO_STATE:I = 0x0

.field private static final PREF_APN_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final PREF_CATEGARY_MOBILE_NETWORK:Ljava/lang/String; = "msim_mobile_network_setting"

.field private static final PREF_ENABLE_SIM_KEY:Ljava/lang/String; = "enable_sim"

.field private static final PREF_PREFER_NETWORK_TYPE_KEY:Ljava/lang/String; = "button_preferred_network_type_key"

.field private static final PREF_SCREEN_SIM_INFO_EDITOR_KEY:Ljava/lang/String; = "sim_info_editor"

.field private static final PREF_SIM_NAME_KEY:Ljava/lang/String; = "sim_name"

.field private static final PREF_SIM_NUMBER_KEY:Ljava/lang/String; = "sim_number"

.field private static final PROGRESS_DIALOG:I = 0x3e8

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field private static final SIM_SLOT_1_RADIO_ON:I = 0x1

.field private static final SIM_SLOT_2_RADIO_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiSimInfoEditorActivity"


# instance fields
.field private mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

.field private mEnableSim:Landroid/preference/CheckBoxPreference;

.field private mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

.field private mHandler:Landroid/os/Handler;

.field private mHanlder:Landroid/os/Handler;

.field private mIsDataConnectActing:Z

.field private mIsForeground:Z

.field private mIsSIMRadioSwitching:Z

.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private mNotSet:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimName:Landroid/preference/EditTextPreference;

.field private mSimNumber:Landroid/preference/EditTextPreference;

.field private mSlotId:I

.field private mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

.field private mSwitchRadioStateMsg:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsDataConnectActing:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSIMRadioSwitching:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsForeground:Z

    .line 116
    new-instance v0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$1;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mHanlder:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$2;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mHandler:Landroid/os/Handler;

    .line 667
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    .line 751
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/MultiSimInfoEditorActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->switchSimRadioState(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateCheckState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/settings/MultiSimInfoEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsDataConnectActing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->dealWithSwitchComplete()V

    return-void
.end method

.method private dealWithSwitchComplete()V
    .locals 3

    .prologue
    .line 696
    const-string v0, "MultiSimInfoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSIMModeSwitching is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSIMRadioSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->isRadioInOn(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 698
    iget-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSIMRadioSwitching:Z

    if-nez v0, :cond_0

    .line 699
    const-string v0, "MultiSimInfoEditorActivity"

    const-string v1, "dual mode change by other not sim management"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSIMRadioSwitching:Z

    .line 702
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->dismissProgressDialog()V

    goto :goto_0
.end method

.method private dismissDisableSimDialog()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->dismissAllowingStateLoss()V

    .line 749
    :cond_0
    return-void
.end method

.method private displayErrorDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/settings/MultiSimInfoEditorActivity$5;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$5;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 381
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 671
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 674
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->initSimInfo()V

    .line 675
    return-void
.end method

.method private initSimInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 678
    const-string v4, "MultiSimInfoEditorActivity"

    const-string v5, "initSimInfo()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 683
    .local v1, "mSimInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 684
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 685
    .local v2, "simInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    .line 686
    .local v3, "slot":I
    const-string v4, "MultiSimInfoEditorActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "siminfo.mSimSlotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-nez v3, :cond_1

    .line 688
    iput-boolean v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSlot1Insert:Z

    .line 683
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_1
    if-ne v3, v7, :cond_0

    .line 690
    iput-boolean v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSlot2Insert:Z

    goto :goto_1

    .line 693
    .end local v2    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    .end local v3    # "slot":I
    :cond_2
    return-void
.end method

.method private isPhoneInCall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method private isRadioInOn(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 714
    const-string v1, "MultiSimInfoEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioInOn with slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-direct {p0, p0, p1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->isRadioOff(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    const/4 v0, 0x0

    .line 726
    :goto_0
    return v0

    .line 718
    :cond_0
    const/4 v0, 0x0

    .line 720
    .local v0, "isRadioInOn":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnGemini(I)Z

    move-result v0

    .line 725
    const-string v1, "MultiSimInfoEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioInOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRadioOff(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 732
    .local v0, "dualSimMode":I
    if-nez p2, :cond_2

    .line 733
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 733
    goto :goto_0

    .line 735
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private setEnabledStateOnPreferences(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "prefer"    # Landroid/preference/Preference;
    .param p2, "enabled"    # Z

    .prologue
    .line 327
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 328
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 329
    .local v1, "preferGroup":Landroid/preference/PreferenceGroup;
    const-string v2, "sim_info_editor"

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 332
    :cond_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 333
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->setEnabledStateOnPreferences(Landroid/preference/Preference;Z)V

    .line 332
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 336
    .end local v0    # "i":I
    .end local v1    # "preferGroup":Landroid/preference/PreferenceGroup;
    :cond_1
    const-string v2, "enable_sim"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    :cond_2
    return-void
.end method

.method private showDisableSimDialog()V
    .locals 5

    .prologue
    .line 740
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 741
    .local v0, "si":Lmiui/telephony/SubscriptionInfo;
    new-instance v1, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mHanlder:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;-><init>(ILjava/lang/String;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    .line 742
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mDisableSimDialogFragment:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DisableSimDialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method private switchSimRadioState(IZ)V
    .locals 10
    .param p1, "slot"    # I
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v9, 0x1

    .line 551
    const-string v6, "MultiSimInfoEditorActivity"

    const-string v7, "switchSimRadioState"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iput-boolean v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSIMRadioSwitching:Z

    .line 553
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 555
    .local v0, "dualSimMode":I
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The current dual sim mode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v4, -0x1

    .line 560
    .local v4, "mToCloseSlot":I
    const/4 v1, 0x0

    .line 561
    .local v1, "dualState":I
    const/4 v3, 0x0

    .line 562
    .local v3, "isRadioOn":Z
    packed-switch v0, :pswitch_data_0

    .line 645
    const-string v6, "MultiSimInfoEditorActivity"

    const-string v7, "Error not correct values"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_0
    return-void

    .line 564
    :pswitch_0
    if-nez p1, :cond_2

    .line 565
    const/4 v1, 0x1

    .line 569
    :cond_0
    :goto_1
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning on only sim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v3, 0x1

    .line 650
    :cond_1
    :goto_2
    const/4 v5, 0x0

    .line 651
    .local v5, "msgId":I
    if-eqz p2, :cond_c

    .line 652
    const v5, 0x7f0b04d0

    .line 656
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->showProgressDialog(I)V

    .line 659
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dualState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isRadioOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "mode"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 566
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "msgId":I
    :cond_2
    if-ne p1, v9, :cond_0

    .line 567
    const/4 v1, 0x2

    goto :goto_1

    .line 573
    :pswitch_1
    if-nez p1, :cond_4

    .line 574
    if-eqz p2, :cond_3

    .line 575
    const-string v6, "MultiSimInfoEditorActivity"

    const-string v7, "try to turn on slot 1 again since it is already on"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    move v1, v0

    .line 577
    const/4 v3, 0x1

    .line 582
    :goto_4
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning off sim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and all sim radio is off"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 579
    :cond_3
    const/4 v1, 0x0

    .line 580
    const/4 v3, 0x0

    goto :goto_4

    .line 584
    :cond_4
    if-ne p1, v9, :cond_1

    .line 585
    iget-boolean v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSlot1Insert:Z

    if-eqz v6, :cond_5

    .line 586
    const/4 v1, 0x3

    .line 587
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim 0 was radio on and now turning on sim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 590
    :cond_5
    const/4 v1, 0x2

    .line 591
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning on only sim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 597
    :pswitch_2
    if-ne p1, v9, :cond_7

    .line 598
    if-eqz p2, :cond_6

    .line 599
    const-string v6, "MultiSimInfoEditorActivity"

    const-string v7, "try to turn on slot 2 again since it is already on"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move v1, v0

    .line 601
    const/4 v3, 0x1

    .line 606
    :goto_6
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning off sim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and all sim radio is off"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 603
    :cond_6
    const/4 v1, 0x0

    .line 604
    const/4 v3, 0x0

    goto :goto_6

    .line 608
    :cond_7
    if-nez p1, :cond_1

    .line 609
    iget-boolean v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSlot2Insert:Z

    if-eqz v6, :cond_8

    .line 610
    const/4 v1, 0x3

    .line 611
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim 1 was radio on and now turning on sim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 613
    :cond_8
    const/4 v1, 0x1

    .line 614
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning on only sim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 620
    :pswitch_3
    if-nez p2, :cond_b

    .line 621
    if-nez p1, :cond_a

    .line 622
    const/4 v1, 0x2

    .line 625
    const-string v6, "MultiSimInfoEditorActivity"

    const-string v7, "setToClosedSimSlot(PhoneConstants.GEMINI_SIM_1)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v4, 0x0

    .line 636
    :cond_9
    :goto_8
    const-string v6, "MultiSimInfoEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning off only sim "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 628
    :cond_a
    if-ne p1, v9, :cond_9

    .line 629
    const/4 v1, 0x1

    .line 632
    const-string v6, "MultiSimInfoEditorActivity"

    const-string v7, "setToClosedSimSlot(PhoneConstants.GEMINI_SIM_2)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v4, 0x1

    goto :goto_8

    .line 639
    :cond_b
    const-string v6, "MultiSimInfoEditorActivity"

    const-string v7, "try to turn on but actually they are all on"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move v1, v0

    .line 641
    const/4 v3, 0x1

    .line 643
    goto/16 :goto_2

    .line 654
    .restart local v5    # "msgId":I
    :cond_c
    const v5, 0x7f0b04d1

    goto/16 :goto_3

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateCheckState()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->isRadioInOn(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->setEnabledStateOnPreferences(Landroid/preference/Preference;Z)V

    .line 293
    :cond_1
    return-void
.end method

.method private updateInfo()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mNotSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 300
    :cond_0
    :goto_1
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mNotSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 399
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 386
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 425
    :cond_0
    return-void
.end method

.method public initMobileNetworkSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 185
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {v6}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mNotSet:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 189
    const-string v6, "sim_name"

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/EditTextPreference;

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    .line 190
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    const-string v6, "sim_number"

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/EditTextPreference;

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    .line 193
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    const-string v6, "enable_sim"

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    .line 195
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v6

    if-ne v6, v9, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->isIccCardActivated(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 202
    new-instance v6, Lcom/android/phone/settings/CdmaOptions;

    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/settings/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    .line 203
    new-instance v6, Lcom/android/phone/settings/GsmUmtsOptions;

    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/settings/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    .line 216
    :goto_0
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "button_preferred_network_type_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 217
    .local v5, "prefNetworkType":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-static {v6, v7}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 202
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v6

    if-le v6, v9, :cond_2

    .line 204
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v6

    iget v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    if-eq v6, v7, :cond_1

    .line 205
    if-eqz v5, :cond_1

    .line 206
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v6

    iget v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    if-eq v6, v7, :cond_2

    .line 226
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "button_apn_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 227
    .local v0, "apnPref":Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 228
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    .end local v0    # "apnPref":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 236
    .local v1, "isCarrierSettingsEnabled":Z
    if-nez v1, :cond_3

    .line 237
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "carrier_settings_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 239
    .local v4, "pref":Landroid/preference/Preference;
    if-eqz v4, :cond_3

    .line 240
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "carrier_settings_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 246
    if-eqz v4, :cond_3

    .line 247
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    .end local v4    # "pref":Landroid/preference/Preference;
    :cond_3
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "button_uplmn_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 252
    .local v3, "plmn":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-static {v6, v7}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 253
    invoke-static {}, Lcom/android/phone/TelephonyCapabilities;->supportShowPLMNPreference()Z

    move-result v6

    if-nez v6, :cond_4

    .line 254
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    :cond_4
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 258
    return-void

    .line 205
    .end local v1    # "isCarrierSettingsEnabled":Z
    .end local v3    # "plmn":Landroid/preference/Preference;
    .end local v5    # "prefNetworkType":Landroid/preference/Preference;
    :cond_5
    iget-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 206
    .local v2, "phoneType":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 207
    new-instance v6, Lcom/android/phone/settings/CdmaOptions;

    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/settings/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    goto/16 :goto_0

    .line 208
    :cond_6
    if-ne v2, v9, :cond_7

    .line 209
    new-instance v6, Lcom/android/phone/settings/GsmUmtsOptions;

    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/settings/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v6, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    goto/16 :goto_0

    .line 212
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 478
    packed-switch p1, :pswitch_data_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 480
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 482
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 146
    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v0, v3}, Lmiui/telephony/SubscriptionManager;->getSlotId(Landroid/os/Bundle;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    .line 149
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    .line 150
    iget-object v3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    if-nez v3, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->finish()V

    .line 153
    :cond_1
    const v3, 0x7f050024

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->addPreferencesFromResource(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->initMobileNetworkSetting()V

    .line 155
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->init()V

    .line 158
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void

    .line 144
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 358
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/settings/GsmUmtsOptions;->destory()V

    .line 361
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsForeground:Z

    .line 346
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 497
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "key":Ljava/lang/String;
    const-string v9, "sim_name"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 499
    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 500
    .local v5, "textName":Landroid/text/Editable;
    if-eqz v5, :cond_2

    .line 501
    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v9, v10}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v4

    .line 503
    .local v4, "simInfo":Lmiui/telephony/SubscriptionInfo;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 547
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    .end local v5    # "textName":Landroid/text/Editable;
    :cond_0
    :goto_0
    return v7

    .line 509
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    .restart local v5    # "textName":Landroid/text/Editable;
    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v9

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v3

    .line 510
    .local v3, "result":I
    if-lez v3, :cond_3

    .line 511
    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v4    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    .end local v5    # "textName":Landroid/text/Editable;
    :cond_2
    :goto_1
    move v7, v8

    .line 547
    goto :goto_0

    .line 513
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "result":I
    .restart local v4    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    .restart local v5    # "textName":Landroid/text/Editable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04cc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 516
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 517
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v4    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    .end local v5    # "textName":Landroid/text/Editable;
    :cond_4
    const-string v9, "sim_number"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 524
    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 525
    .local v6, "textNumber":Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 526
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "number":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v9, v10}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v4

    .line 528
    .restart local v4    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v9

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNumberForSubscription(Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_6

    .line 529
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 530
    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 532
    :cond_5
    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mNotSet:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 535
    :cond_6
    if-eqz v4, :cond_0

    .line 536
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    .line 537
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :cond_7
    iget-object v8, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimNumber:Landroid/preference/EditTextPreference;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 403
    const-string v0, "enable_sim"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsSIMRadioSwitching:Z

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mEnableSim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->switchSimRadioState(IZ)V

    .line 413
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->showDisableSimDialog()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 459
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v1, p2}, Lcom/android/phone/settings/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    invoke-virtual {v1, p2}, Lcom/android/phone/settings/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 462
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iput-object p2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mClickedPreference:Landroid/preference/Preference;

    .line 467
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 473
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsForeground:Z

    .line 264
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateInfo()V

    .line 265
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateCheckState()V

    .line 266
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStop()V

    .line 351
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->dismissProgressDialog()V

    .line 352
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->dismissDisableSimDialog()V

    .line 353
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    .line 271
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    iget v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSlotId:I

    if-eq v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->finish()V

    .line 281
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateInfo()V

    .line 276
    invoke-direct {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateCheckState()V

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 391
    .local v0, "d":Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 392
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0    # "d":Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 394
    :cond_0
    return-void

    .line 392
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showProgressDialog(I)V
    .locals 3
    .param p1, "msgId"    # I

    .prologue
    .line 417
    new-instance v0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    .line 418
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mProgressDialog:Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.class public Lcom/android/phone/settings/NetworkSetting;
.super Lmiui/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final BUTTON_AUTO_SELECT_KEY:Ljava/lang/String; = "button_auto_select_key"

.field private static final BUTTON_SRCH_NETWRKS_KEY:Ljava/lang/String; = "button_srch_netwrks_key"

.field private static final DBG:Z = false

.field private static final DELAY_DURATION_EVENT:I = 0x3e8

.field private static final DELAY_DURATION_NETWORK_AUTOMATIC:I = 0xed8

.field private static final DELAY_NETWORK_QUERY_EVENT:I = 0x2710

.field private static final DIALOG_NETWORK_AUTO_SELECT:I = 0x12c

.field private static final DIALOG_NETWORK_BUSY:I = 0x2bc

.field private static final DIALOG_NETWORK_DATA_CONNECTED:I = 0x320

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0xc8

.field private static final DIALOG_NETWORK_QUERY_FAILED:I = 0x258

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final DIALOG_TURN_OFF_AUTO_SELECT_CONFIRM:I = 0x1f4

.field private static final DIALOG_TURN_OFF_AUTO_SELECT_WARNING:I = 0x190

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_DODATAREENABLE:I = 0x1f4

.field private static final EVENT_LOADNETWORKSLIST:I = 0x190

.field private static final EVENT_NETWORK_QUERY:I = 0x2bc

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0xc8

.field private static final EVENT_SELECT_NETWORK_AUTOMATIC:I = 0x258

.field private static final LIST_NETWORKS_KEY:Ljava/lang/String; = "list_networks_key"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAutoSelect:Landroid/preference/CheckBoxPreference;

.field private mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private final mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mNeedDataReEnable:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSearchButton:Landroid/preference/Preference;

.field private mSlotId:I

.field private mTryAutoSelectNetwork:Z

.field private mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

.field private mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/phone/settings/NetworkSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 122
    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z

    .line 134
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$1;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 215
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$2;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 236
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$3;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 467
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$4;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 550
    new-instance v0, Lcom/android/phone/settings/NetworkSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/NetworkSetting$5;-><init>(Lcom/android/phone/settings/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->doDataReEnable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/settings/NetworkSetting;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/settings/NetworkSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/settings/NetworkSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/settings/NetworkSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->selectNetworkAutomatic()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/NetworkSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/settings/NetworkSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/settings/NetworkSetting;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/settings/NetworkSetting;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->startNetworkQuery()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/settings/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/NetworkSetting;
    .param p1, "x1"    # Lcom/android/phone/INetworkQueryService;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method private checkDataConnection()V
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    .line 514
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 515
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V

    .line 523
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 518
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    const/16 v1, 0x320

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    goto :goto_0

    .line 521
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    goto :goto_0
.end method

.method private clearList()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 598
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    const v0, 0x7f0b01d0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 570
    return-void

    .line 569
    :cond_0
    const v0, 0x7f0b01ce

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 588
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->showDialogSafely(I)V

    .line 589
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/16 v5, 0x258

    .line 603
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "status":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 612
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 615
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 620
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_2

    .line 621
    sget-object v2, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string v3, "displayNetworkSelectionFailed: SIM card absent, return."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_1
    return-void

    .line 608
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v1    # "status":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "status":Ljava/lang/String;
    goto :goto_0

    .line 625
    .restart local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xed8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 4

    .prologue
    .line 630
    iget-boolean v2, p0, Lcom/android/phone/settings/NetworkSetting;->mTryAutoSelectNetwork:Z

    if-nez v2, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 634
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 636
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .param p1, "networkStr"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01d3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 576
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 577
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 579
    :cond_0
    return-void
.end method

.method private doDataReEnable()V
    .locals 2

    .prologue
    .line 526
    iget-boolean v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z

    if-eqz v1, :cond_0

    .line 527
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 528
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 529
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNeedDataReEnable:Z

    .line 531
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "ni"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 784
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "longName":Ljava/lang/String;
    const-string v2, "46605"

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "466 05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    const-string v1, "Gt"

    .line 804
    :goto_0
    return-object v1

    .line 790
    :cond_0
    const-string v2, "46697"

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GT 4G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GT 4G R"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    :cond_1
    const-string v1, "Gt"

    goto :goto_0

    .line 793
    :cond_2
    const-string v1, ""

    .line 794
    .local v1, "networkTitle":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 795
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 796
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 797
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 798
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v2, v3, :cond_5

    .line 799
    const v2, 0x7f0b0209

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/NetworkSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 801
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getRadioTechText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "radioTech"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 809
    const-string v2, ""

    .line 825
    :cond_0
    :goto_0
    return-object v2

    .line 812
    :cond_1
    const-string v2, " 2G"

    .line 814
    .local v2, "radioText":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 815
    .local v1, "radio":I
    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    .line 816
    const/16 v3, 0xe

    if-ne v1, v3, :cond_2

    .line 817
    const-string v2, " 4G"

    goto :goto_0

    .line 819
    :cond_2
    const-string v2, " 3G"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 822
    .end local v1    # "radio":I
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse radio tech error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/settings/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadNetworksList()V
    .locals 4

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    sget-object v0, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string v1, "loadNetworksList: SIM card absent, return."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 654
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_1

    .line 648
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2bc

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 843
    sget-object v0, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 4
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v1, 0x1

    .line 676
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v0, v1

    .line 679
    .local v0, "resultValid":Z
    :goto_0
    if-nez p2, :cond_0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/NetworkSetting;->removeDialog(I)V

    .line 684
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->doDataReEnable()V

    .line 693
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 694
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->clearList()V

    .line 696
    if-eqz p2, :cond_3

    .line 698
    invoke-direct {p0, p2}, Lcom/android/phone/settings/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 706
    :goto_2
    return-void

    .line 676
    .end local v0    # "resultValid":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 700
    .restart local v0    # "resultValid":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/NetworkSetting;->createList(Ljava/util/List;)V

    goto :goto_2

    .line 703
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V

    goto :goto_2

    .line 687
    :catch_0
    move-exception v2

    goto :goto_1

    .line 685
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private selectNetworkAutomatic()V
    .locals 4

    .prologue
    const/16 v2, 0x12c

    const/4 v3, 0x1

    .line 830
    iget-boolean v1, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 835
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 837
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->clearList()V

    .line 838
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/NetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 840
    return-void
.end method

.method private startNetworkQuery()V
    .locals 4

    .prologue
    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/phone/settings/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNetworkQuery error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 709
    new-instance v5, Lmiui/preference/RadioButtonPreferenceCategory;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lmiui/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 710
    iget-object v5, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    const v6, 0x7f0b01ce

    invoke-virtual {v5, v6}, Lmiui/preference/RadioButtonPreferenceCategory;->setTitle(I)V

    .line 711
    iget-object v5, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 713
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 714
    .local v3, "ni":Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Lmiui/preference/RadioButtonPreference;

    invoke-direct {v0, p0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 716
    .local v0, "carrier":Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/settings/NetworkSetting;->getNetworkSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "spn":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/phone/settings/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "networkTitle":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 720
    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 730
    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 740
    :goto_1
    invoke-virtual {v0, v7}, Lmiui/preference/RadioButtonPreference;->setPersistent(Z)V

    .line 742
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v5, v6, :cond_0

    .line 743
    invoke-virtual {v0, v8}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 746
    :cond_0
    iget-object v5, p0, Lcom/android/phone/settings/NetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v0}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 747
    iget-object v5, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v5, v6, :cond_2

    .line 735
    const v5, 0x7f0b00a6

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/settings/NetworkSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 737
    :cond_2
    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 752
    .end local v0    # "carrier":Lmiui/preference/RadioButtonPreference;
    .end local v2    # "networkTitle":Ljava/lang/String;
    .end local v3    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    .end local v4    # "spn":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected getAutoSelectionSummary(Z)Ljava/lang/String;
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    const v5, 0x7f0b0206

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 334
    .local v1, "resource":Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "operatorName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    :cond_0
    const v2, 0x7f0b01da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .end local v0    # "operatorName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 340
    .restart local v0    # "operatorName":Ljava/lang/String;
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 342
    .end local v0    # "operatorName":Ljava/lang/String;
    :cond_2
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0b0207

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getNetworkAutoSelectionMode()Z
    .locals 3

    .prologue
    .line 508
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_auto_select_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operatorNumberic"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 761
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    const-string v1, ""

    .line 772
    :goto_0
    return-object v1

    .line 764
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 765
    .local v0, "end":I
    if-lez v0, :cond_1

    .line 766
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 769
    :cond_1
    const-string v1, "46697"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "GT 4G"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "GT 4G R"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    :cond_2
    const-string v1, "Gt"

    goto :goto_0

    .line 772
    :cond_3
    invoke-static {p1, p2}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNormalizedCarrierName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "ni"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 280
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->doDataReEnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->finish()V

    .line 285
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_1

    .line 536
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->dismissDialog(I)V

    .line 537
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 540
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->onNetworkQueryServiceConnected()V

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 542
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 543
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->onNetworkQueryServiceConnected()V

    goto :goto_0

    .line 545
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->selectNetworkAutomatic()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 296
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 298
    const v3, 0x7f050009

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/NetworkSetting;->addPreferencesFromResource(I)V

    .line 300
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v4

    invoke-static {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    .line 302
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    iget v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 304
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v1, "intent":Landroid/content/Intent;
    iget v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSlotId:I

    invoke-static {v1, v3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "list_networks_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 308
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "button_srch_netwrks_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "button_auto_select_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    .line 318
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 319
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getNetworkAutoSelectionMode()Z

    move-result v0

    .line 320
    .local v0, "autoSelect":Z
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 321
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/NetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/NetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 324
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/settings/NetworkSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 327
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/settings/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 330
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const v7, 0x7f0b01fe

    const v3, 0x1010355

    const/4 v6, 0x0

    const/high16 v5, 0x1040000

    const/4 v4, 0x1

    .line 378
    sparse-switch p1, :sswitch_data_0

    .line 457
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 458
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {v1, v6}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 460
    invoke-virtual {v1, p0}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 461
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 385
    :sswitch_0
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 386
    .restart local v1    # "dialog":Lmiui/app/ProgressDialog;
    iget-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v1, v6}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 388
    invoke-virtual {v1, v4}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 392
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :sswitch_1
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 393
    .restart local v1    # "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {v1, v6}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 395
    invoke-virtual {v1, v4}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 399
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b01fd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    .line 410
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 413
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0200

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    .line 423
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 426
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0201

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    .line 435
    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 438
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0203

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b018f

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 446
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0203

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b018f

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 371
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 373
    return-void
.end method

.method onNetworkQueryServiceConnected()V
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getNetworkAutoSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->checkDataConnection()V

    .line 505
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    .line 361
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "handled":Z
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->loadNetworksList()V

    .line 251
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    .line 252
    :cond_0
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 253
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 255
    const/16 v4, 0x190

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 259
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/settings/NetworkSetting;->selectNetworkAutomatic()V

    goto :goto_1

    .line 261
    :cond_2
    move-object v3, p2

    .line 262
    .local v3, "selectedCarrier":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "networkStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 266
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/settings/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/settings/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v5, v4, v1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 268
    invoke-direct {p0, v2}, Lcom/android/phone/settings/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 493
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 499
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    .line 355
    return-void
.end method

.method protected showDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/phone/settings/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/NetworkSetting;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/NetworkSetting;->showDialog(I)V

    .line 585
    :cond_0
    return-void
.end method

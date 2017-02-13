.class public Lcom/mediatek/settings/NetworkSettingList;
.super Lmiui/app/Activity;
.source "NetworkSettingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;,
        Lcom/mediatek/settings/NetworkSettingList$State;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_ALL_FORBIDDEN:I = 0x190

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0xc8

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SCAN_COMPLETED_2:I = 0x65

.field private static final EVENT_NETWORK_SCAN_COMPLETED_3:I = 0x66

.field private static final EVENT_NETWORK_SCAN_COMPLETED_4:I = 0x67

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0xc8

.field private static final EVENT_NETWORK_SELECTION_LTEMMDC_DONE:I = 0x7d0

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x190

.field private static final LIST_NETWORKS_KEY:Ljava/lang/String; = "list_networks_key"

.field private static final LOG_TAG:Ljava/lang/String; = "phone"

.field private static final SIM_CARD_UNDEFINED:I = -0x1

.field private static final TAG_NETWORK_SETTING_LIST:Ljava/lang/String; = "network_setting_list"


# instance fields
.field private mAirplaneModeEnabled:Z

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mDualSimMode:I

.field private mFlag:Lcom/mediatek/settings/NetworkSettingList$State;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field protected mIsForeground:Z

.field protected mIsResignSuccess:Z

.field private mIsServiceQueryDone:Z

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

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mTitleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 137
    sget-object v0, Lcom/mediatek/settings/NetworkSettingList$State;->UNKNOWN:Lcom/mediatek/settings/NetworkSettingList$State;

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mFlag:Lcom/mediatek/settings/NetworkSettingList$State;

    .line 149
    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    .line 155
    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsServiceQueryDone:Z

    .line 167
    iput-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsResignSuccess:Z

    .line 169
    iput v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    .line 176
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkSettingList$1;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkSettingList$2;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;

    .line 314
    iput-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 317
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkSettingList$3;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 342
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$4;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkSettingList$4;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/NetworkSettingList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/NetworkSettingList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/NetworkSettingList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkSettingList;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/NetworkSettingList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/settings/NetworkSettingList;Landroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/NetworkSettingList;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/NetworkSettingList;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/NetworkSettingList;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/settings/NetworkSettingList;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/NetworkSettingList;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/settings/NetworkSettingList;Lcom/android/internal/telephony/PhoneStateIntentReceiver;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/NetworkSettingList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/settings/NetworkSettingList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/NetworkSettingList;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    iget v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/NetworkSettingList;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/NetworkSettingList;)Lcom/mediatek/settings/NetworkSettingList$State;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mFlag:Lcom/mediatek/settings/NetworkSettingList$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/settings/NetworkSettingList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/settings/NetworkSettingList;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkSettingList;
    .param p1, "x1"    # Lcom/android/phone/INetworkQueryService;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 754
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 755
    .local v1, "p":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 757
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 758
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const v2, 0x7f0b01d0

    const v1, 0x7f0b01ce

    .line 560
    if-eqz p1, :cond_0

    .line 561
    const-string v0, "SET empty network list title"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetworkSettingList;->setTitle(I)V

    .line 563
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 578
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->setTitle(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->setTitle(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 573
    :cond_2
    const-string v0, "SET SIM Title"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->setTitle(I)V

    .line 575
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 594
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(Ljava/lang/CharSequence;)V

    .line 595
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 599
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsResignSuccess:Z

    .line 600
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 604
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "status":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 614
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(Ljava/lang/CharSequence;)V

    .line 615
    return-void

    .line 609
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "status":Ljava/lang/String;
    goto :goto_0
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 6

    .prologue
    .line 619
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsResignSuccess:Z

    .line 620
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 623
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 627
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mediatek/settings/NetworkSettingList$5;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/NetworkSettingList$5;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .param p1, "networkStr"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01d3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkSelectMsg:Ljava/lang/String;

    .line 584
    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 585
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->showDialog(I)V

    .line 587
    :cond_0
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ni"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 744
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 749
    :goto_0
    return-object v0

    .line 746
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isRadioPoweroff()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "isPoweroff":Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 764
    iget-object v4, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 765
    .local v1, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-ne v4, v6, :cond_0

    move v0, v2

    .line 770
    :goto_0
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioPoweroff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return v0

    :cond_0
    move v0, v3

    .line 765
    goto :goto_0

    .line 767
    .end local v1    # "serviceState":Landroid/telephony/ServiceState;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 768
    .restart local v1    # "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-ne v4, v6, :cond_2

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private loadNetworksList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 638
    const-string v1, "load networks list..."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 641
    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 642
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->showDialog(I)V

    .line 647
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsServiceQueryDone:Z

    .line 655
    invoke-direct {p0, v3}, Lcom/mediatek/settings/NetworkSettingList;->displayEmptyNetworkList(Z)V

    .line 656
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 775
    const-string v0, "phone"

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

    .line 776
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 10
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 667
    const-string v6, "networks list loaded"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 672
    const-string v6, "hideProgressPanel"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 676
    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->removeDialog(I)V

    .line 677
    invoke-direct {p0, v7}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 679
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkSettingList;->clearList()V

    .line 682
    iput-boolean v7, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsServiceQueryDone:Z

    .line 683
    if-eqz p2, :cond_1

    .line 685
    const-string v6, "error while querying available networks"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 687
    invoke-direct {p0, p2}, Lcom/mediatek/settings/NetworkSettingList;->displayNetworkQueryFailed(I)V

    .line 688
    invoke-direct {p0, v7}, Lcom/mediatek/settings/NetworkSettingList;->displayEmptyNetworkList(Z)V

    .line 727
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v7, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v6, v7}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    return-void

    .line 690
    :cond_1
    if-eqz p1, :cond_4

    .line 691
    invoke-direct {p0, v9}, Lcom/mediatek/settings/NetworkSettingList;->displayEmptyNetworkList(Z)V

    .line 697
    const/4 v3, 0x0

    .line 698
    .local v3, "forbiddenCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 699
    .local v5, "ni":Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Landroid/preference/Preference;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 701
    .local v0, "carrier":Landroid/preference/Preference;
    const-string v2, ""

    .line 702
    .local v2, "forbidden":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v6, v7, :cond_2

    .line 703
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 704
    add-int/lit8 v3, v3, 0x1

    .line 707
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/mediatek/settings/NetworkSettingList;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 708
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 709
    iget-object v6, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 710
    iget-object v6, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 713
    const/16 v6, 0x190

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->showDialog(I)V

    .line 717
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 722
    .end local v0    # "carrier":Landroid/preference/Preference;
    .end local v2    # "forbidden":Ljava/lang/String;
    .end local v3    # "forbiddenCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_4
    invoke-direct {p0, v7}, Lcom/mediatek/settings/NetworkSettingList;->displayEmptyNetworkList(Z)V

    goto/16 :goto_0

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private setScreenEnabled(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 827
    iget v4, p0, Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I

    invoke-static {v4}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getCallState(I)I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 829
    .local v1, "isCallStateIdle":Z
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "network_setting_list"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 832
    .local v0, "fragment":Landroid/preference/PreferenceFragment;
    if-nez v0, :cond_1

    .line 838
    :goto_1
    return-void

    .end local v0    # "fragment":Landroid/preference/PreferenceFragment;
    .end local v1    # "isCallStateIdle":Z
    :cond_0
    move v1, v3

    .line 827
    goto :goto_0

    .line 836
    .restart local v0    # "fragment":Landroid/preference/PreferenceFragment;
    .restart local v1    # "isCallStateIdle":Z
    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz p1, :cond_2

    iget-boolean v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsResignSuccess:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/mediatek/settings/NetworkSettingList;->isRadioPoweroff()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public geminiPhoneInit()V
    .locals 3

    .prologue
    .line 842
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 844
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "simId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I

    .line 846
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->finish()V

    .line 398
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 402
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 403
    if-nez p1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/NetworkSettingList$NetworkSettingListFragment;-><init>()V

    const-string v3, "network_setting_list"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 407
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 514
    const/16 v3, 0x190

    if-ne p1, v3, :cond_0

    .line 515
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x1040014

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 518
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 519
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 520
    const v3, 0x1040013

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 548
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v0

    .line 526
    :cond_0
    const/4 v2, 0x0

    .line 527
    .local v2, "dialog":Landroid/app/ProgressDialog;
    sparse-switch p1, :sswitch_data_0

    .line 547
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreateDialog] create dialog id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    move-object v0, v2

    .line 548
    goto :goto_0

    .line 529
    :sswitch_0
    new-instance v2, Landroid/app/ProgressDialog;

    .end local v2    # "dialog":Landroid/app/ProgressDialog;
    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 530
    .restart local v2    # "dialog":Landroid/app/ProgressDialog;
    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 531
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 532
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 536
    :sswitch_1
    new-instance v2, Landroid/app/ProgressDialog;

    .end local v2    # "dialog":Landroid/app/ProgressDialog;
    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 537
    .restart local v2    # "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 539
    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 540
    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 541
    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_1

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 505
    const-string v0, "[onDestroy]Call onDestroy. unbindService"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->unbindService(Landroid/content/ServiceConnection;)V

    .line 508
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 509
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 860
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 378
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 379
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 386
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 381
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->finish()V

    .line 382
    const/4 v1, 0x1

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 798
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 799
    const-string v1, "[onPause] is called..."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 800
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    .line 802
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    if-eqz v1, :cond_0

    .line 803
    const-string v1, "[onPause] call stopNetworkQuery ..."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->removeDialog(I)V

    .line 813
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 814
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 818
    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsServiceQueryDone:Z

    if-nez v1, :cond_1

    .line 819
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->finish()V

    .line 821
    :cond_1
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 553
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 554
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 556
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 780
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 781
    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    .line 783
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 784
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/settings/NetworkSettingList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z

    .line 787
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    .line 790
    const-string v0, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkSettings.onResume(), mDualSimMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 794
    return-void

    .line 785
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 853
    return-void
.end method

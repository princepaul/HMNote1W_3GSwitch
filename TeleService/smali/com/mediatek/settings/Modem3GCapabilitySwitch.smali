.class public Lcom/mediatek/settings/Modem3GCapabilitySwitch;
.super Landroid/preference/PreferenceActivity;
.source "Modem3GCapabilitySwitch.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_3G_CAPABILITY_SWITCH:I = 0x1f4

.field public static final NETWORK_MODE_KEY:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final PROGRESS_DIALOG_3G:I = 0x12c

.field public static final SERVICE_LIST_KEY:Ljava/lang/String; = "preferred_3g_service_key"

.field private static final SIMID_3G_SERVICE_NOT_SET:I = -0x2

.field private static final SIMID_3G_SERVICE_OFF:J = -0x1L

.field private static final SWITCH_3G_TIME_OUT_MSG:I = 0x3e8

.field private static final SWITCH_3G_TIME_OUT_VALUE:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "Settings/Modem3GCapabilitySwitch"

.field private static sInstanceFlag:I


# instance fields
.field private mCurrent3GSim:J

.field private mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mInstanceIndex:I

.field private mIs3GSwitchManualChangeAllowed:Z

.field private mIsAirplaneModeOn:Z

.field private mManualAllowedSlot:I

.field private mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

.field private mNetworkMode:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

.field private mSelected3GSim:J

.field private mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

.field private mTimerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 57
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 61
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 64
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 78
    iput v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    .line 81
    iput-boolean v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mManualAllowedSlot:I

    .line 89
    new-instance v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    .line 101
    sget v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    iput v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    .line 102
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modem3GCapabilitySwitch(), instanceIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->init3GSwitchPref()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/Modem3GCapabilitySwitch;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->handleServiceSwitch(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/Modem3GCapabilitySwitch;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->clearAfterSwitch(Landroid/content/Intent;)V

    return-void
.end method

.method private clearAfterSwitch(Landroid/content/Intent;)V
    .locals 8
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 335
    const-wide/16 v1, -0x2

    .line 336
    .local v1, "simId3G":J
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "clearAfterSwitch(), remove switching dialog"

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/16 v4, 0x12c

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->removeDialog(I)V

    .line 338
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 341
    sget-object v4, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EXTRA_3G_SIM:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 342
    .local v3, "slot3G":I
    int-to-long v4, v3

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 343
    const-wide/16 v1, -0x1

    .line 350
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 351
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V

    .line 352
    return-void

    .line 345
    :cond_1
    invoke-static {p0, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 346
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 347
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto :goto_0
.end method

.method private dismissDialogs()V
    .locals 4

    .prologue
    .line 517
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "dismissDialogs..."

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 519
    .local v1, "switchDialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 523
    .local v0, "netWorkDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 526
    :cond_1
    return-void
.end method

.method private handleServiceSwitch(J)V
    .locals 6
    .param p1, "simId"    # J

    .prologue
    const/16 v5, 0x12c

    .line 355
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->is3GSwitchLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Switch has been locked, return"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-wide v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 376
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleServiceSwitch("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), show switching dialog first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v5}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showDialog(I)V

    .line 362
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 363
    const/4 v1, -0x1

    .line 364
    .local v1, "slotId":I
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 365
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 366
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_2

    const/4 v1, -0x1

    .line 368
    .end local v0    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive ok for the switch, and starting the waiting..."

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    .restart local v0    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    goto :goto_1

    .line 371
    .end local v0    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive error for the switch & Dismiss switching didalog"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v5}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->removeDialog(I)V

    .line 373
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 374
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-wide v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    goto :goto_0
.end method

.method private init3GSwitchPref()V
    .locals 9

    .prologue
    .line 480
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    .line 481
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;

    invoke-direct {v7}, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 482
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v4, "simIndicatorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v2, "itemStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 486
    .local v5, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {p0, v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSimIndicator(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget-wide v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget-boolean v7, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    iget v8, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mManualAllowedSlot:I

    invoke-static {v6, v7, v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->is3GSwitchManualEnableSlot(IZI)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    .end local v5    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v3, "normalList3gSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {v6}, Lcom/mediatek/phone/ext/SettingsExtension;->isRemoveRadioOffFor3GSwitchFlag()Z

    move-result v6

    if-nez v6, :cond_1

    .line 495
    const v6, 0x7f0b00a3

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_1
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v7, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v6, v7, v4, v3, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 499
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v6, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 500
    return-void
.end method

.method private initIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    return-object v0
.end method

.method private initPhoneAnd3GSwitch()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 178
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 179
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->is3GSwitchManualChange3GAllowed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    .line 180
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIs3GSwitchManualChangeAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-boolean v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->get3GSwitchAllowed3GSlots()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mManualAllowedSlot:I

    .line 183
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mManualAllowedSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mManualAllowedSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    new-instance v1, Lcom/mediatek/settings/NetWorkHandler;

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/settings/NetWorkHandler;-><init>(Landroid/app/Activity;Landroid/preference/ListPreference;)V

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    .line 187
    new-instance v1, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    .line 190
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->init3GSwitchPref()V

    .line 191
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPreference()V
    .locals 3

    .prologue
    .line 204
    const-string v0, "preferred_3g_service_key"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 205
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    const-string v0, "preferred_network_mode_key"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 207
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMOpFor3GSwitch(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 209
    return-void
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 395
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 397
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 400
    if-eqz p1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 410
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1210000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 408
    :cond_2
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "Fail to get status bar instance"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showInstanceIndex(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 475
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private updateNetworkAnd3GServiceStatus()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->get3GCapabilitySIM()I

    move-result v1

    .line 155
    .local v1, "slot":I
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNetworkMode(), 3G capability slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->is3GSwitchLocked()Z

    move-result v0

    .line 157
    .local v0, "locked":Z
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    .line 158
    if-nez v0, :cond_2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    invoke-static {v1, p0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 160
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try to get preferred network mode for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    invoke-virtual {v5, v3}, Lcom/mediatek/settings/NetWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPreferredNetworkType(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V

    .line 169
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-boolean v5, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    if-nez v5, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 171
    iget-boolean v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->dismissDialogs()V

    .line 174
    :cond_1
    return-void

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 165
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 169
    goto :goto_1
.end method

.method private updateSummarys(J)V
    .locals 5
    .param p1, "simId"    # J

    .prologue
    .line 212
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iput-wide p1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    .line 215
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 216
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-wide/16 v2, -0x2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 226
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 228
    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v2, p0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 229
    .local v1, "isPowerOn":Z
    :goto_1
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " power status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-nez v1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    .end local v1    # "isPowerOn":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public changeForNetworkMode(Ljava/lang/Object;)V
    .locals 6
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 238
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 239
    check-cast p1, Ljava/lang/String;

    .end local p1    # "objValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 240
    .local v0, "buttonNetworkMode":I
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 243
    .local v1, "settingsNetworkMode":I
    if-eq v0, v1, :cond_0

    .line 244
    const/16 v3, 0x190

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showDialog(I)V

    .line 245
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->get3GCapabilitySIM()I

    move-result v2

    .line 252
    .local v2, "slot":I
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/NetWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {v3, v0, v4, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setPreferredNetworkType(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V

    .line 254
    .end local v2    # "slot":I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const v2, 0x7f050033

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->addPreferencesFromResource(I)V

    .line 109
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 111
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->initPreference()V

    .line 113
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->initPhoneAnd3GSwitch()V

    .line 115
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->initIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 116
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 119
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const/4 v11, 0x0

    .line 273
    const-string v7, "Settings/Modem3GCapabilitySwitch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create and show the dialog[id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "dialog":Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 317
    :goto_0
    return-object v1

    .line 277
    :sswitch_0
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 278
    .local v4, "progress":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01bc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 280
    move-object v1, v4

    .line 281
    goto :goto_0

    .line 283
    .end local v4    # "progress":Landroid/app/ProgressDialog;
    :sswitch_1
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 284
    .local v5, "progress3g":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00a1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v5, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 286
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 287
    .local v6, "win":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 288
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, -0x80000000

    or-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 289
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 290
    move-object v1, v5

    .line 291
    goto :goto_0

    .line 293
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "progress3g":Landroid/app/ProgressDialog;
    .end local v6    # "win":Landroid/view/Window;
    :sswitch_2
    iget-wide v7, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const v3, 0x7f0b00a2

    .line 295
    .local v3, "msgId":I
    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b0117

    new-instance v9, Lcom/mediatek/settings/Modem3GCapabilitySwitch$3;

    invoke-direct {v9, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$3;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b018c

    new-instance v9, Lcom/mediatek/settings/Modem3GCapabilitySwitch$2;

    invoke-direct {v9, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$2;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 312
    .local v0, "alert":Landroid/app/AlertDialog;
    move-object v1, v0

    .line 313
    goto :goto_0

    .line 293
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "msgId":I
    :cond_0
    const v3, 0x7f0b00a0

    goto :goto_1

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 379
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 380
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 387
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 143
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->finish()V

    .line 146
    const/4 v1, 0x1

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 508
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 509
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "onPause...."

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->dismissDialogs()V

    .line 511
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    if-ne p1, v0, :cond_1

    .line 258
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    .line 259
    iget-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    iget-wide v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 263
    iget-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->handleServiceSwitch(J)V

    .line 269
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 267
    invoke-virtual {p0, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->changeForNetworkMode(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 331
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 332
    return-void

    .line 324
    :pswitch_0
    iget-wide v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const v0, 0x7f0b00a2

    .local v0, "msgId":I
    :goto_1
    move-object v1, p2

    .line 326
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 324
    .end local v0    # "msgId":I
    :cond_0
    const v0, 0x7f0b00a0

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 127
    const-wide/16 v1, -0x2

    .line 128
    .local v1, "simId":J
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->get3GCapabilitySIM()I

    move-result v3

    .line 129
    .local v3, "slot":I
    int-to-long v4, v3

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 130
    int-to-long v1, v3

    .line 135
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->init3GSwitchPref()V

    .line 136
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 137
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V

    .line 138
    return-void

    .line 132
    :cond_0
    invoke-static {p0, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 133
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    :goto_1
    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x2

    goto :goto_1
.end method

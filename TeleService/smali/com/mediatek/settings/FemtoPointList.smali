.class public Lcom/mediatek/settings/FemtoPointList;
.super Landroid/app/Activity;
.source "FemtoPointList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/FemtoPointList$MyHandler;,
        Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_FEMTO_POINT_LIST_LOAD:I = 0x64

.field private static final DIALOG_FEMTO_POINT_SELECTION:I = 0xc8

.field private static final LIST_NETWORKS_KEY:Ljava/lang/String; = "list_networks_key"

.field private static final LOG_TAG:Ljava/lang/String; = "phone/FemtoPointList"

.field private static final TAG_FEMTO_POINT_LIST:Ljava/lang/String; = "femto_point_list"


# instance fields
.field private final FEMTO_CELL_ICON_TYPE:[I

.field private mAirplaneModeEnabled:Z

.field private mFemtoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFemtoPointListContainer:Landroid/preference/PreferenceScreen;

.field private mFemtoPointMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/mediatek/settings/FemtoPointList$MyHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsDoingAction:Z

.field protected mIsForeground:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectFemotCellTips:Ljava/lang/String;

.field private mSlotId:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/mediatek/settings/FemtoPointList;->mIsForeground:Z

    .line 60
    iput v0, p0, Lcom/mediatek/settings/FemtoPointList;->mSlotId:I

    .line 64
    new-instance v0, Lcom/mediatek/settings/FemtoPointList$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/FemtoPointList$1;-><init>(Lcom/mediatek/settings/FemtoPointList;)V

    iput-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->FEMTO_CELL_ICON_TYPE:[I

    .line 40
    return-void

    .line 83
    :array_0
    .array-data 4
        0x7f020094
        0x7f020091
        0x7f020092
        0x7f020093
    .end array-data
.end method

.method static synthetic access$000(Lcom/mediatek/settings/FemtoPointList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mediatek/settings/FemtoPointList;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/FemtoPointList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/mediatek/settings/FemtoPointList;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/FemtoPointList;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/FemtoPointList;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList;->mSelectFemotCellTips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->displayFemtoCellSeletionProgressDialog()V

    return-void
.end method

.method static synthetic access$1302(Lcom/mediatek/settings/FemtoPointList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/mediatek/settings/FemtoPointList;->mIsDoingAction:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->hideFemtoPointListLoadProgressDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->showScanFailTips()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/FemtoPointList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/settings/FemtoPointList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/FemtoPointList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FemtoPointList;->refreshPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->hideFemtoCellSeletionProgressDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->showSelectFailTips()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/FemtoPointList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FemtoPointList;->setScreenEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/FemtoPointList;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/settings/FemtoPointList;->mSlotId:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/FemtoPointList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/mediatek/settings/FemtoPointList;->mSlotId:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/FemtoPointList;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/FemtoPointList;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/FemtoPointList;)Lcom/mediatek/settings/FemtoPointList$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mHandler:Lcom/mediatek/settings/FemtoPointList$MyHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/FemtoPointList;Lcom/mediatek/settings/FemtoPointList$MyHandler;)Lcom/mediatek/settings/FemtoPointList$MyHandler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Lcom/mediatek/settings/FemtoPointList$MyHandler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList;->mHandler:Lcom/mediatek/settings/FemtoPointList$MyHandler;

    return-object p1
.end method

.method static synthetic access$702(Lcom/mediatek/settings/FemtoPointList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointListContainer:Landroid/preference/PreferenceScreen;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/FemtoPointList;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/settings/FemtoPointList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/FemtoPointList;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->setActionBarEnable()V

    return-void
.end method

.method private addFemtoCellPreference(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;)V
    .locals 2
    .param p1, "femtoCell"    # Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;

    .prologue
    .line 291
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, "pref":Landroid/preference/Preference;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/settings/FemtoPointList;->fillPreferenceWithFemtoCellInfo(Landroid/preference/Preference;Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;)V

    .line 293
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method private clearScreenAndContainers()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoPointMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    :cond_2
    return-void
.end method

.method private createFemtoPointListLoadProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 382
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/settings/FemtoPointList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 384
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 385
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 387
    return-object v0
.end method

.method private createFemtoPointSelectProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList;->mSelectFemotCellTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 376
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 377
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 378
    return-object v0
.end method

.method private displayFemtoCellSeletionProgressDialog()V
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/mediatek/settings/FemtoPointList;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 402
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->showDialog(I)V

    .line 404
    :cond_0
    return-void
.end method

.method private displayFemtoPointListLoadProgressDialog()V
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/mediatek/settings/FemtoPointList;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 392
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->showDialog(I)V

    .line 394
    :cond_0
    return-void
.end method

.method private fillPreferenceWithFemtoCellInfo(Landroid/preference/Preference;Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "femtoCell"    # Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string v0, "phone/FemtoPointList"

    const-string v1, "fillPreference Pref == null"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->FEMTO_CELL_ICON_TYPE:[I

    invoke-virtual {p2}, Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;->getCsgIconType()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/mediatek/settings/FemtoPointList;->getHnbOrCsgId(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getHnbOrCsgId(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "femtoCell"    # Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;

    .prologue
    .line 314
    invoke-virtual {p1}, Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;->getHomeNodeBName()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;->getCsgId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "phone/FemtoPointList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHnbOrCsgId : result == null =: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-object v0
.end method

.method private hideFemtoCellSeletionProgressDialog()V
    .locals 1

    .prologue
    .line 407
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->removeDialog(I)V

    .line 408
    return-void
.end method

.method private hideFemtoPointListLoadProgressDialog()V
    .locals 1

    .prologue
    .line 397
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->removeDialog(I)V

    .line 398
    return-void
.end method

.method private isRadioPoweroff()Z
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 452
    const-string v0, "phone/FemtoPointList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FemtoCellsList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method private refreshPreference(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;>;"
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->clearScreenAndContainers()V

    .line 255
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoList:Ljava/util/ArrayList;

    .line 257
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 258
    :cond_0
    const-string v2, "refreshPreference : NULL FemtoCell list!"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 259
    if-nez p1, :cond_1

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/settings/FemtoPointList;->mFemtoList:Ljava/util/ArrayList;

    .line 269
    :cond_1
    return-void

    .line 265
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add FemtoCell Number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;

    .line 267
    .local v0, "femtoCell":Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->addFemtoCellPreference(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;)V

    goto :goto_0
.end method

.method private scanFemtoCellPoint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 236
    const-string v0, "scanFemtoCellPoint ..."

    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "scanFemtoCellPoint() in geminiPhone status"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->displayFemtoPointListLoadProgressDialog()V

    .line 242
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/settings/FemtoPointList;->mHandler:Lcom/mediatek/settings/FemtoPointList$MyHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/FemtoPointList$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 243
    iput-boolean v4, p0, Lcom/mediatek/settings/FemtoPointList;->mIsDoingAction:Z

    goto :goto_0
.end method

.method private setActionBarEnable()V
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/mediatek/settings/FemtoPointList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 429
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 433
    :cond_0
    return-void
.end method

.method private setScreenEnabled(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRadioPoweroff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->isRadioPoweroff()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAirplaneModeEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/FemtoPointList;->mAirplaneModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/mediatek/settings/FemtoPointList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "femto_point_list"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 421
    .local v0, "fragment":Landroid/preference/PreferenceFragment;
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->isRadioPoweroff()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/settings/FemtoPointList;->mAirplaneModeEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 422
    return-void

    .line 421
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showScanFailTips()V
    .locals 1

    .prologue
    .line 326
    const v0, 0x7f0b01d2

    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->showTips(I)V

    .line 327
    return-void
.end method

.method private showSelectFailTips()V
    .locals 1

    .prologue
    .line 333
    const v0, 0x7f0b0132

    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->showTips(I)V

    .line 334
    return-void
.end method

.method private showTips(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/FemtoPointList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mToast:Landroid/widget/Toast;

    .line 347
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/mediatek/settings/FemtoPointList;->finish()V

    .line 353
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    if-nez p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/settings/FemtoPointList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;-><init>(Lcom/mediatek/settings/FemtoPointList;)V

    const-string v3, "femto_point_list"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 97
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "dialog":Landroid/app/ProgressDialog;
    sparse-switch p1, :sswitch_data_0

    .line 368
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCreateDialog] create dialog id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 369
    return-object v0

    .line 360
    :sswitch_0
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->createFemtoPointSelectProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 361
    goto :goto_0

    .line 363
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->createFemtoPointListLoadProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 364
    goto :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "[onDestroy]Call onDestroy. unbindService"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 437
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 444
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 439
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/FemtoPointList;->finish()V

    .line 440
    const/4 v0, 0x1

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause mIsDoingAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/settings/FemtoPointList;->mIsDoingAction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 147
    iput-boolean v2, p0, Lcom/mediatek/settings/FemtoPointList;->mIsForeground:Z

    .line 148
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "onPause GeminiSupport"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/settings/FemtoPointList;->mIsDoingAction:Z

    if-eqz v0, :cond_0

    .line 153
    iput-boolean v2, p0, Lcom/mediatek/settings/FemtoPointList;->mIsDoingAction:Z

    .line 154
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList;->mHandler:Lcom/mediatek/settings/FemtoPointList$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/FemtoPointList$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->abortFemtoCellList(Landroid/os/Message;)V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/settings/FemtoPointList;->finish()V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 412
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 413
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/FemtoPointList;->setScreenEnabled(Z)V

    .line 415
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/FemtoPointList;->mIsForeground:Z

    .line 139
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/FemtoPointList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    invoke-direct {p0}, Lcom/mediatek/settings/FemtoPointList;->scanFemtoCellPoint()V

    .line 141
    return-void
.end method

.class public Lcom/android/phone/settings/UserPLMNListPreference;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;,
        Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;,
        Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    }
.end annotation


# static fields
.field private static final BUTTON_UPLMN_LIST_KEY:Ljava/lang/String; = "button_uplmn_list_key"

.field private static final DBG:Z = true

.field static final EF_PLMNWACT:I = 0x6f60

.field private static final GSM_COMPACT_MASK:I = 0x2

.field private static final GSM_MASK:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "UserPLMNListPreference"

.field private static final LTE_MASK:I = 0x8

.field private static final MENU_ADD_OPTIION:I = 0x1

.field private static final UMTS_MASK:I = 0x4

.field private static final UPLMNLIST_ADD:I = 0x65

.field private static final UPLMNLIST_EDIT:I = 0x66

.field private static final UPLMN_W_ACT_LEN:I = 0x5


# instance fields
.field private mAirplaneModeOn:Z

.field private mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNumRec:I

.field private mOldInfo:Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mUPLMNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation
.end field

.field private mUPLMNListContainer:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 76
    iput-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;Lcom/android/phone/settings/UserPLMNListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    .line 93
    iput v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I

    .line 114
    iput-boolean v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    .line 119
    new-instance v0, Lcom/android/phone/settings/UserPLMNListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/UserPLMNListPreference$1;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 558
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/settings/UserPLMNListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/settings/UserPLMNListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/settings/UserPLMNListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/UserPLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/UserPLMNListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/UserPLMNListPreference;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/UserPLMNListPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference;->refreshUPLMNListPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/settings/UserPLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getUPLMNInfoFromEf()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/settings/UserPLMNListPreference;)Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    return-object v0
.end method

.method private addUPLMNPreference(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)V
    .locals 5
    .param p1, "network"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .prologue
    .line 331
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 332
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getOperatorAlphaNumeric()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "plmnName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v3

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->access$400(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/settings/UserPLMNListPreference;->getNetWorkModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "extendName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 336
    iget-object v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method private createNetworkInfofromIntent(Landroid/content/Intent;)Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 374
    const-string v3, "uplmn_code"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "numberName":Ljava/lang/String;
    const-string v3, "uplmn_priority"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 376
    .local v2, "priority":I
    const-string v3, "uplmn_service"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, "act":I
    new-instance v3, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/lang/String;II)V

    return-object v3
.end method

.method private dumpUPLMNInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 493
    const-string v2, "UserPLMNListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpUPLMNInfo : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-virtual {v1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method

.method private getNetWorkModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "EFNWMode"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-static {p1}, Lcom/android/phone/settings/UPLMNEditor;->convertEFMode2Ap(I)I

    move-result v0

    .line 709
    .local v0, "index":I
    const-string v1, ""

    .line 710
    .local v1, "summary":Ljava/lang/String;
    invoke-static {p2}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    .line 721
    :goto_0
    return-object v1

    .line 713
    :cond_0
    invoke-static {p2}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    goto :goto_0

    .line 717
    :cond_1
    const-string v2, "UserPLMNListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetWorkModeString: operatorNumeric is unavailable, operatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUPLMNInfoFromEf()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "UserPLMNListPreference"

    const-string v1, "UPLMNInfoFromEf Start read..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f60

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->readEfFromIcc(Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "UserPLMNListPreference"

    const-string v1, "mIccFileHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleAddList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)V
    .locals 7
    .param p1, "newInfo"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .prologue
    .line 470
    const-string v4, "UserPLMNListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAddList: add new network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 474
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    new-instance v2, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 477
    .local v2, "pc":Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v4, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 478
    .local v3, "position":I
    if-lez v3, :cond_1

    .line 479
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 483
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    .line 484
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 485
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    .line 486
    return-void

    .line 481
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private handleDeleteList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "network"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    const-string v4, "UserPLMNListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDeleteList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    new-instance v2, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 542
    .local v2, "pc":Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v4, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 544
    .local v3, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 545
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 549
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->setOperatorNumeric(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    .line 553
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 555
    return-object v1
.end method

.method private handleModifiedList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "newInfo"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .param p2, "oldInfo"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    const-string v5, "UserPLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleModifiedList: change old info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-------new info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 504
    new-instance v4, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v4, p0}, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 505
    .local v4, "pc":Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v5, p2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 506
    .local v3, "oldposition":I
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 508
    .local v2, "newposition":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 510
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    if-le v3, v2, :cond_1

    .line 514
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 515
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 524
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    .line 525
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 526
    return-object v1

    .line 516
    :cond_1
    if-ge v3, v2, :cond_2

    .line 517
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 518
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 520
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 521
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private handleSetUPLMN(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v11, 0x2

    const/16 v10, -0x80

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 381
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v5, v8}, Lcom/android/phone/settings/UserPLMNListPreference;->onStarted(Landroid/preference/Preference;Z)V

    .line 382
    iget v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I

    mul-int/lit8 v5, v5, 0x5

    new-array v0, v5, [B

    .line 383
    .local v0, "data":[B
    const/4 v5, 0x6

    new-array v2, v5, [B

    .line 384
    .local v2, "mccmnc":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I

    if-ge v1, v5, :cond_0

    .line 385
    mul-int/lit8 v5, v1, 0x5

    aput-byte v6, v0, v5

    .line 386
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x1

    aput-byte v6, v0, v5

    .line 387
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    aput-byte v6, v0, v5

    .line 389
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    aput-byte v8, v0, v5

    .line 390
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x4

    aput-byte v8, v0, v5

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mNumRec:I

    if-ge v1, v5, :cond_1

    .line 393
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 394
    .local v3, "ni":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    invoke-virtual {v3}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "strOperNumeric":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 433
    .end local v3    # "ni":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .end local v4    # "strOperNumeric":Ljava/lang/String;
    :cond_1
    const-string v5, "UserPLMNListPreference"

    const-string v6, "update EFuplmn Start."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v5, :cond_8

    .line 436
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f60

    invoke-direct {p0, v5, v0, v6}, Lcom/android/phone/settings/UserPLMNListPreference;->writeEfToIcc(Lcom/android/internal/telephony/uicc/IccFileHandler;[BI)V

    .line 440
    :goto_2
    return-void

    .line 398
    .restart local v3    # "ni":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .restart local v4    # "strOperNumeric":Ljava/lang/String;
    :cond_2
    const-string v5, "UserPLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strOperNumeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 402
    :cond_3
    invoke-static {v4}, Lcom/android/phone/settings/UserPLMNListPreference;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 404
    mul-int/lit8 v5, v1, 0x5

    aget-byte v6, v2, v9

    shl-int/lit8 v6, v6, 0x4

    aget-byte v7, v2, v8

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 405
    const-string v5, "UserPLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mccmnc[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v5, "UserPLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mccmnc[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v5, "UserPLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data[i*UPLMN_W_ACT_LEN] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v1, 0x5

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x5

    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x4

    aget-byte v7, v2, v11

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 410
    const-string v5, "UserPLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x4

    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x4

    const/4 v7, 0x3

    aget-byte v7, v2, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 412
    const-string v5, "UserPLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data[2] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v0, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v3}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_6

    .line 414
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    aput-byte v10, v0, v5

    .line 418
    :goto_3
    invoke-virtual {v3}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 419
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, v0, v6

    or-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 422
    :cond_4
    invoke-virtual {v3}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 423
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x4

    aput-byte v10, v0, v5

    .line 428
    :goto_4
    invoke-virtual {v3}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 429
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x4

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v6, v6, 0x4

    aget-byte v6, v0, v6

    or-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 392
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 416
    :cond_6
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    aput-byte v8, v0, v5

    goto :goto_3

    .line 425
    :cond_7
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x4

    aput-byte v8, v0, v5

    goto :goto_4

    .line 438
    .end local v3    # "ni":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .end local v4    # "strOperNumeric":Ljava/lang/String;
    :cond_8
    const-string v5, "UserPLMNListPreference"

    const-string v6, "mIccFileHandler is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 763
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 764
    add-int/lit8 v0, p0, -0x30

    .line 768
    :goto_0
    return v0

    .line 765
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 766
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 767
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 768
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 770
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 747
    if-nez p0, :cond_1

    .line 748
    const/4 v1, 0x0

    .line 759
    :cond_0
    return-object v1

    .line 750
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 752
    .local v2, "sz":I
    new-array v1, v2, [B

    .line 754
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 755
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/phone/settings/UserPLMNListPreference;->hexCharToInt(C)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 756
    const-string v3, "UserPLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hexStringToBytes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z

    .prologue
    .line 207
    const-string v0, "UserPLMNListPreference"

    const-string v1, "init ... ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-nez p2, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getUPLMNInfoFromEf()V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 214
    :cond_0
    return-void
.end method

.method private loadIccFileHandler()V
    .locals 6

    .prologue
    .line 443
    const-string v3, "UserPLMNListPreference"

    const-string v4, "loadIccFileHandler()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    iget v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 447
    .local v2, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v2, :cond_0

    .line 448
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 456
    :cond_0
    :goto_0
    const-string v3, "UserPLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newCard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz v0, :cond_1

    .line 459
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 461
    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const-string v3, "UserPLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newUiccApplication = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 464
    const-string v3, "UserPLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fh = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v1    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return-void

    .line 451
    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 452
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    goto :goto_0
.end method

.method private readEfFromIcc(Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "mfh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "efid"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 233
    return-void
.end method

.method private refreshUPLMNListPreference(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 252
    :cond_2
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    .line 253
    if-nez p1, :cond_5

    .line 254
    const-string v2, "UserPLMNListPreference"

    const-string v3, "refreshUPLMNListPreference : NULL UPLMN list!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 262
    :cond_3
    const-string v2, "UserPLMNListPreference"

    const-string v3, "refreshUPLMNListPreference : NULL UPLMN list!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-nez p1, :cond_4

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    .line 276
    :cond_4
    return-void

    .line 256
    :cond_5
    const-string v2, "UserPLMNListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshUPLMNListPreference : list.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 271
    .local v1, "network":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->addUPLMNPreference(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)V

    .line 273
    const-string v2, "UserPLMNListPreference"

    invoke-virtual {v1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setScreenEnabled()V
    .locals 2

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 726
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->invalidateOptionsMenu()V

    .line 727
    return-void

    .line 725
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateListPriority(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v2, 0x0

    .line 531
    .local v2, "priority":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 532
    .local v1, "info":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "priority":I
    .local v3, "priority":I
    invoke-virtual {v1, v2}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->setPriority(I)V

    move v2, v3

    .end local v3    # "priority":I
    .restart local v2    # "priority":I
    goto :goto_0

    .line 534
    .end local v1    # "info":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_0
    return-void
.end method

.method private writeEfToIcc(Lcom/android/internal/telephony/uicc/IccFileHandler;[BI)V
    .locals 2
    .param p1, "mfh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "efdata"    # [B
    .param p3, "efid"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p3, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 238
    return-void
.end method


# virtual methods
.method public bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 731
    const/4 v3, 0x0

    .line 741
    :goto_0
    return-object v3

    .line 733
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 735
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 737
    aget-byte v3, p1, v1

    and-int/lit8 v0, v3, 0xf

    .line 738
    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 741
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x66

    const/16 v4, 0x65

    .line 356
    const-string v1, "UserPLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v1, "UserPLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz p3, :cond_0

    .line 360
    invoke-direct {p0, p3}, Lcom/android/phone/settings/UserPLMNListPreference;->createNetworkInfofromIntent(Landroid/content/Intent;)Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    move-result-object v0

    .line 361
    .local v0, "newInfo":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    if-ne p2, v5, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleDeleteList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    .line 371
    .end local v0    # "newInfo":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_0
    :goto_0
    return-void

    .line 363
    .restart local v0    # "newInfo":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_1
    if-ne p2, v4, :cond_0

    .line 364
    if-ne p1, v4, :cond_2

    .line 365
    invoke-direct {p0, v0}, Lcom/android/phone/settings/UserPLMNListPreference;->handleAddList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)V

    goto :goto_0

    .line 366
    :cond_2
    if-ne p1, v5, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleModifiedList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    .line 139
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    iget v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 141
    const v0, 0x7f05003c

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UserPLMNListPreference;->addPreferencesFromResource(I)V

    .line 143
    const-string v0, "button_uplmn_list_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UserPLMNListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    .line 145
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->loadIccFileHandler()V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 148
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 150
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 168
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 169
    const v0, 0x7f0b04af

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UserPLMNListPreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 218
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->setScreenEnabled()V

    .line 219
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 202
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 187
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/settings/UPLMNEditor;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "uplmn_code"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v2, "uplmn_priority"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v2, "uplmn_service"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v2, "uplmn_add"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    const-string v1, "uplmn_size"

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 197
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->finish()V

    goto :goto_1

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 341
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/settings/UPLMNEditor;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 343
    .local v0, "info":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 345
    const-string v2, "uplmn_code"

    invoke-virtual {v0}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v2, "uplmn_priority"

    invoke-virtual {v0}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getPriority()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v2, "uplmn_service"

    invoke-virtual {v0}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string v2, "uplmn_add"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    const-string v2, "uplmn_size"

    iget-object v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const/16 v2, 0x66

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/settings/UserPLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    const/4 v2, 0x1

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-boolean v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 180
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 178
    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 160
    invoke-direct {p0, p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    .line 164
    return-void

    :cond_0
    move v0, v1

    .line 161
    goto :goto_0
.end method

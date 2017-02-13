.class public Lcom/mediatek/settings/PLMNListPreference;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/PLMNListPreference$SIMCapability;,
        Lcom/mediatek/settings/PLMNListPreference$MyHandler;,
        Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;,
        Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;
    }
.end annotation


# static fields
.field private static final BUTTON_PLMN_LIST_KEY:Ljava/lang/String; = "button_plmn_list_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PLMNListPreference"

.field private static final MENU_ADD:I = 0x1

.field private static final REQUEST_ADD:I = 0x64

.field private static final REQUEST_EDIT:I = 0xc8

.field private static final TAG_PLMN_LIST_PREFERENCE:Ljava/lang/String; = "plmn_list_preference"


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mCapability:Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

.field private mDualSimMode:I

.field private mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsGetSlotId:Z

.field private mListItemClicked:Z

.field mListPriority:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListService:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumbers:I

.field private mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

.field private mPLMNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field

.field private mPLMNListContainer:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 49
    iput v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    .line 56
    iput v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    .line 57
    iput-object v6, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 59
    new-instance v0, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;-><init>(Lcom/mediatek/settings/PLMNListPreference;IIII)V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mCapability:Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    .line 63
    new-instance v0, Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    invoke-direct {v0, p0, v6}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;-><init>(Lcom/mediatek/settings/PLMNListPreference;Lcom/mediatek/settings/PLMNListPreference$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mListPriority:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mListService:Ljava/util/ArrayList;

    .line 72
    iput-boolean v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mIsGetSlotId:Z

    .line 79
    iput-boolean v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    .line 81
    new-instance v0, Lcom/mediatek/settings/PLMNListPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/PLMNListPreference$1;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 96
    new-instance v0, Lcom/mediatek/settings/PLMNListPreference$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/PLMNListPreference$2;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 584
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/PLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/PLMNListPreference;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/settings/PLMNListPreference;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/PLMNListPreference;Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/PLMNListPreference;->extractInfoFromNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/PLMNListPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/settings/PLMNListPreference;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/PLMNListPreference;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mediatek/settings/PLMNListPreference;->refreshPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/PLMNListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    return v0
.end method

.method static synthetic access$1510(Lcom/mediatek/settings/PLMNListPreference;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/PLMNListPreference;)Lcom/mediatek/settings/PLMNListPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/PLMNListPreference;)Lcom/mediatek/settings/PLMNListPreference$SIMCapability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mCapability:Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/PLMNListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/settings/PLMNListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/PLMNListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/PLMNListPreference;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/PLMNListPreference;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/PLMNListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/PLMNListPreference;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/PLMNListPreference;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/PLMNListPreference;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/PLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->initSlotId()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/PLMNListPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/PLMNListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/PLMNListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    return p1
.end method

.method private addPLMNPreference(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 5
    .param p1, "network"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 315
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 316
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "plmnName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/PLMNListPreference;->getNWString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
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

    .line 319
    iget-object v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 320
    iget-object v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void
.end method

.method private adjustPriority(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v2, 0x0

    .line 479
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

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 480
    .local v1, "info":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "priority":I
    .local v3, "priority":I
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->setPriority(I)V

    move v2, v3

    .end local v3    # "priority":I
    .restart local v2    # "priority":I
    goto :goto_0

    .line 482
    .end local v1    # "info":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    return-void
.end method

.method private createNetworkInfo(Landroid/content/Intent;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 352
    const-string v4, "plmn_code"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "numberName":Ljava/lang/String;
    const-string v4, "plmn_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "operatorName":Ljava/lang/String;
    const-string v4, "plmn_priority"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 355
    .local v3, "priority":I
    const-string v4, "plmn_service"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 356
    .local v0, "act":I
    new-instance v4, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v4
.end method

.method private dumpNetworkInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "dumpNetworkInfo : **********start*******"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 401
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpNetworkInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "dumpNetworkInfo : ***********stop*******"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private extractInfoFromNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 324
    const-string v0, "plmn_code"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v0, "plmn_name"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v0, "plmn_priority"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v0, "plmn_service"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v0, "plmn_add"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    const-string v0, "plmn_size"

    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string v0, "plmn_slot"

    iget v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    return-void
.end method

.method private genDelete(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "network"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 485
    const-string v5, "Settings/PLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genDelete : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    new-instance v2, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 490
    .local v2, "nc":Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 492
    .local v4, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 493
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 497
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->setOperatorNumeric(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mCapability:Lcom/mediatek/settings/PLMNListPreference$SIMCapability;

    iget v5, v5, Lcom/mediatek/settings/PLMNListPreference$SIMCapability;->mLastIndex:I

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_1

    .line 501
    new-instance v3, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    const-string v5, ""

    const/4 v6, 0x1

    invoke-direct {v3, v5, v8, v6, v0}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 502
    .local v3, "ni":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 504
    .end local v3    # "ni":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 505
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 507
    return-object v1
.end method

.method private genModifyEx(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "newInfo"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .param p2, "oldInfo"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    const-string v7, "Settings/PLMNListPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "genModifyEx: change : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "----> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 410
    new-instance v3, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 411
    .local v3, "nc":Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v7, p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    .line 412
    .local v5, "oldPos":I
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v7, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 414
    .local v4, "newPos":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 416
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-direct {p0, v2}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 448
    :goto_0
    return-object v2

    .line 421
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 422
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    :cond_1
    const/4 v6, -0x1

    .line 426
    .local v6, "properPos":I
    if-gez v4, :cond_2

    .line 427
    iget-object v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v7, p1}, Lcom/mediatek/settings/PLMNListPreference;->getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I

    move-result v6

    .line 428
    invoke-virtual {v2, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 429
    invoke-direct {p0, v2}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    goto :goto_0

    .line 433
    :cond_2
    move v0, v4

    .line 434
    .local v0, "adjustIndex":I
    if-le v5, v4, :cond_3

    .line 435
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 436
    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 446
    :goto_2
    invoke-direct {p0, v2}, Lcom/mediatek/settings/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 447
    invoke-direct {p0, v2}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    goto :goto_0

    .line 437
    :cond_3
    if-ge v5, v4, :cond_4

    .line 438
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 439
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 440
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 442
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 443
    invoke-virtual {v2, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private getNWString(I)Ljava/lang/String;
    .locals 4
    .param p1, "rilNW"    # I

    .prologue
    .line 609
    invoke-static {p1}, Lcom/mediatek/settings/NetworkEditor;->covertRilNW2Ap(I)I

    move-result v0

    .line 610
    .local v0, "index":I
    const-string v1, ""

    .line 612
    .local v1, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    .line 614
    return-object v1
.end method

.method private getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I
    .locals 6
    .param p2, "newInfo"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    const/4 v1, -0x1

    .line 453
    .local v1, "index":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 474
    :goto_0
    return v2

    .line 457
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 458
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v5

    if-le v2, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 461
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 462
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 463
    if-nez v0, :cond_6

    .line 464
    const/4 v1, 0x0

    .line 471
    :cond_4
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_5
    move v2, v1

    .line 474
    goto :goto_0

    .line 466
    :cond_6
    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method private getSIMCapability()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 274
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    iget v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v2, v4, v3, v4}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPolCapability(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V

    .line 277
    return-void
.end method

.method private handlePLMNListAdd(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 8
    .param p1, "newInfo"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .prologue
    .line 371
    const-string v5, "Settings/PLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePLMNListAdd: add new network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 375
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    new-instance v2, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 378
    .local v2, "nc":Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 380
    .local v3, "pos":I
    const/4 v4, -0x1

    .line 381
    .local v4, "properPos":I
    if-gez v3, :cond_1

    .line 382
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/mediatek/settings/PLMNListPreference;->getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I

    move-result v4

    .line 384
    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 385
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 389
    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 390
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 391
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    .line 392
    return-void

    .line 387
    :cond_2
    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private handleSetPLMN(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v6, 0x1

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mNumbers:I

    .line 362
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/PLMNListPreference;->onStarted(Landroid/preference/Preference;Z)V

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 364
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 365
    .local v1, "ni":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    iget-object v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    iget v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v4, v6, v5, v6}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setPolEntry(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "ni":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    return-void
.end method

.method private init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 4
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z
    .param p3, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 251
    const-string v0, "Settings/PLMNListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with simSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    .line 255
    const-string v0, "Settings/PLMNListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.onResume(), mDualSimMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    if-nez p2, :cond_1

    .line 258
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mHandler:Lcom/mediatek/settings/PLMNListPreference$MyHandler;

    invoke-virtual {v1, v3, p3, v3}, Lcom/mediatek/settings/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPreferedOperatorList(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V

    .line 261
    if-eqz p1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 266
    :cond_1
    return-void
.end method

.method private initSlotId()V
    .locals 4

    .prologue
    .line 640
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    .line 642
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 644
    .local v0, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 645
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 648
    .end local v0    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->registerCallBacks()V

    .line 649
    return-void
.end method

.method private refreshPreference(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 291
    :cond_2
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    .line 292
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 293
    :cond_3
    const-string v2, "Settings/PLMNListPreference"

    const-string v3, "refreshPreference : NULL PLMN list!"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-nez p1, :cond_4

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    .line 305
    :cond_4
    return-void

    .line 299
    :cond_5
    new-instance v2, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/PLMNListPreference$NetworkCompare;-><init>(Lcom/mediatek/settings/PLMNListPreference;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 301
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 302
    .local v1, "network":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->addPLMNPreference(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    .line 303
    const-string v2, "Settings/PLMNListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plmnlist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerCallBacks()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 636
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/PLMNListPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    return-void
.end method

.method private setScreenEnabled()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 618
    const/4 v2, 0x0

    .line 619
    .local v2, "isShouldEnabled":Z
    const/4 v5, -0x1

    invoke-static {v5}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getCallState(I)I

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 620
    .local v1, "isIdle":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    if-eqz v5, :cond_1

    move v2, v3

    .line 621
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "plmn_list_preference"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiui/preference/PreferenceFragment;

    .line 624
    .local v0, "fragment":Lmiui/preference/PreferenceFragment;
    if-nez v0, :cond_2

    .line 632
    :goto_2
    return-void

    .end local v0    # "fragment":Lmiui/preference/PreferenceFragment;
    .end local v1    # "isIdle":Z
    :cond_0
    move v1, v4

    .line 619
    goto :goto_0

    .restart local v1    # "isIdle":Z
    :cond_1
    move v2, v4

    .line 620
    goto :goto_1

    .line 628
    .restart local v0    # "fragment":Lmiui/preference/PreferenceFragment;
    :cond_2
    invoke-virtual {v0}, Lmiui/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 629
    const-string v5, "Settings/PLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setScreenEnabled()... + mListItemClicked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v5, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceScreen;

    iget-boolean v6, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    if-nez v6, :cond_3

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 631
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->invalidateOptionsMenu()V

    goto :goto_2

    :cond_3
    move v3, v4

    .line 630
    goto :goto_3
.end method

.method private unRegisterCallBacks()V
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/PLMNListPreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 654
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0xc8

    const/16 v2, 0x64

    .line 336
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isSimStateReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-direct {p0, p3}, Lcom/mediatek/settings/PLMNListPreference;->createNetworkInfo(Landroid/content/Intent;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    move-result-object v0

    .line 339
    .local v0, "newInfo":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    if-ne p2, v3, :cond_1

    .line 340
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->genDelete(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    .line 349
    .end local v0    # "newInfo":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    :goto_0
    return-void

    .line 341
    .restart local v0    # "newInfo":Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_1
    if-ne p2, v2, :cond_0

    .line 342
    if-ne p1, v2, :cond_2

    .line 343
    invoke-direct {p0, v0}, Lcom/mediatek/settings/PLMNListPreference;->handlePLMNListAdd(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    goto :goto_0

    .line 344
    :cond_2
    if-ne p1, v3, :cond_0

    .line 345
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mOldInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/PLMNListPreference;->genModifyEx(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    if-nez p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/PLMNListPreference$PLMNListFragment;-><init>()V

    const-string v3, "plmn_list_preference"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 129
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 210
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 211
    const v0, 0x7f0b0133

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 213
    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 187
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->unRegisterCallBacks()V

    .line 188
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 270
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V

    .line 271
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 247
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 231
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "plmn_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v2, "plmn_code"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v2, "plmn_priority"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v2, "plmn_service"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v2, "plmn_add"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    const-string v1, "plmn_size"

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v1, "plmn_slot"

    iget v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/PLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 242
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->finish()V

    goto :goto_1

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "isShouldEnabled":Z
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getCallState(I)I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 220
    .local v0, "isIdle":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    if-eqz v4, :cond_2

    move v1, v2

    .line 221
    :goto_1
    if-eqz p1, :cond_0

    .line 222
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 224
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .end local v0    # "isIdle":Z
    :cond_1
    move v0, v3

    .line 219
    goto :goto_0

    .restart local v0    # "isIdle":Z
    :cond_2
    move v1, v3

    .line 220
    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 191
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 192
    iget-boolean v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mIsGetSlotId:Z

    if-eqz v2, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->getSIMCapability()V

    .line 194
    iget v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I

    invoke-direct {p0, p0, v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z

    .line 197
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/mediatek/settings/PLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    .line 200
    const-string v0, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.onResume(), mDualSimMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    const-string v0, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume()... mListItemClicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-boolean v1, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    .line 205
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V

    .line 206
    return-void

    :cond_1
    move v0, v1

    .line 195
    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 658
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onStop()V

    .line 659
    const-string v0, "Settings/PLMNListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop()... mListItemClicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/PLMNListPreference;->mListItemClicked:Z

    .line 661
    invoke-direct {p0}, Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V

    .line 662
    return-void
.end method

.class public Lcom/mediatek/settings/CellBroadcastSettings;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;,
        Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final CB_MAX_CHANNEL:I = 0xffff

.field private static final CHANNEL_NAME_LENGTH:I = 0x14

.field private static final CHANNEL_URI:Landroid/net/Uri;

.field private static final CHANNEL_URI1:Landroid/net/Uri;

.field private static final CHANNEL_URI2:Landroid/net/Uri;

.field private static final CHANNEL_URI3:Landroid/net/Uri;

.field private static final DBG:Z = true

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final KEYID:Ljava/lang/String; = "_id"

.field private static final KEY_ADD_CHANNEL:Ljava/lang/String; = "button_add_channel"

.field private static final KEY_CHANNEL_LIST:Ljava/lang/String; = "menu_channel_list"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "button_language"

.field private static final LANGUAGE_NUM:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CellBroadcastSettings"

.field private static final MENU_CHANNEL_DELETE:I = 0xc

.field private static final MENU_CHANNEL_EDIT:I = 0xb

.field private static final MENU_CHANNEL_ENABLE_DISABLE:I = 0xa

.field private static final MESSAGE_GET_CONFIG:I = 0x64

.field private static final MESSAGE_SET_CONFIG:I = 0x65

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private mAddChannelPreference:Landroid/preference/PreferenceScreen;

.field private mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

.field private mChannelArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/settings/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelListPreference:Landroid/preference/PreferenceCategory;

.field private mChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/settings/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

.field private mLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/settings/CellBroadcastLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/settings/CellBroadcastLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePreference:Landroid/preference/PreferenceScreen;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadDialog:Landroid/app/ProgressDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    .line 112
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI1:Landroid/net/Uri;

    .line 113
    const-string v0, "content://cb/channel2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI2:Landroid/net/Uri;

    .line 114
    const-string v0, "content://cb/channel3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI3:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 116
    sget-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    .line 122
    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    .line 133
    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    .line 138
    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CellBroadcastSettings$1;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1045
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CellBroadcastSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSlotId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelUIList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/CellBroadcastSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/CellBroadcastSettings;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelIdExist(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastChannel;
    .param p2, "x2"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;)Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/settings/CellBroadcastSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/settings/CellBroadcastSettings;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/settings/CellBroadcastSettings;[ZZLandroid/app/AlertDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # [Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/settings/CellBroadcastSettings;->setCheckedAlllanguageItem([ZZLandroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/settings/CellBroadcastSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateStatus(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/mediatek/settings/CellBroadcastSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->queryChannelFromDatabase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initChannelMap()V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CellBroadcastSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelIdExist(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;
    .param p1, "x1"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkChannelIdExist(I)Z
    .locals 3
    .param p1, "channelId"    # I

    .prologue
    .line 987
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 988
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 989
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 990
    const/4 v2, 0x1

    .line 993
    :goto_1
    return v2

    .line 988
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkChannelIdExist(II)Z
    .locals 6
    .param p1, "newChannelId"    # I
    .param p2, "keyId"    # I

    .prologue
    .line 997
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 998
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 999
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 1000
    .local v2, "tChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    .line 1001
    .local v3, "tempChannelId":I
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v4

    .line 1002
    .local v4, "tempKeyId":I
    if-ne v3, p1, :cond_0

    if-eq v4, p2, :cond_0

    .line 1003
    const/4 v5, 0x1

    .line 1006
    .end local v2    # "tChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v3    # "tempChannelId":I
    .end local v4    # "tempKeyId":I
    :goto_1
    return v5

    .line 998
    .restart local v2    # "tChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .restart local v3    # "tempChannelId":I
    .restart local v4    # "tempKeyId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v2    # "tChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v3    # "tempChannelId":I
    .end local v4    # "tempKeyId":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkChannelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 966
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 967
    :cond_0
    const-string p1, ""

    .line 969
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 970
    const/4 v0, 0x0

    .line 972
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkChannelNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 976
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v1

    .line 979
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 980
    .local v0, "t":I
    const v2, 0xffff

    if-ge v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 983
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clearChannel()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 485
    :cond_0
    return-void
.end method

.method private deleteChannelFromDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 5
    .param p1, "oldChannel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "where":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLoadDialog:Landroid/app/ProgressDialog;

    .line 1030
    :cond_0
    return-void
.end method

.method private displayMessage(I)V
    .locals 2
    .param p1, "strId"    # I

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 897
    return-void
.end method

.method private displayMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 901
    return-void
.end method

.method private dumpConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 617
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump start for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ToServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromCodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ToCodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump end for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method private getCellBroadcastConfig(Z)V
    .locals 6
    .param p1, "reason"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 308
    if-eqz p1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    invoke-virtual {v1, v3, v4, v3, v5}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSlotId:I

    invoke-static {v1, v0, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getCellBroadcastSmsConfig(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V

    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->onStarted(Landroid/preference/Preference;Z)V

    .line 319
    :cond_0
    return-void

    .line 311
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method private getChannelObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastChannel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastChannel;

    return-object v0
.end method

.method private getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastLanguage;

    return-object v0
.end method

.method private initChannelMap()V
    .locals 6

    .prologue
    .line 470
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    .line 471
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 472
    .local v2, "tSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 473
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    :cond_0
    return-void

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 477
    .local v1, "id":I
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initLanguage()V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguageList()V

    .line 746
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguageMap()V

    .line 747
    return-void
.end method

.method private initLanguageList()V
    .locals 11

    .prologue
    const/16 v10, 0x16

    .line 719
    new-array v4, v10, [Z

    .line 720
    .local v4, "languageEnable":[Z
    new-array v5, v10, [Ljava/lang/String;

    .line 721
    .local v5, "languageId":[Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    .line 722
    .local v6, "languageName":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060027

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 723
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 725
    aget-object v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 726
    .local v2, "id":I
    aget-object v7, v6, v1

    .line 727
    .local v7, "name":Ljava/lang/String;
    aget-boolean v0, v4, v1

    .line 728
    .local v0, "enable":Z
    new-instance v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-direct {v3, v2, v7, v0}, Lcom/mediatek/settings/CellBroadcastLanguage;-><init>(ILjava/lang/String;Z)V

    .line 729
    .local v3, "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    .end local v0    # "enable":Z
    .end local v2    # "id":I
    .end local v3    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    .end local v7    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initLanguageMap()V
    .locals 5

    .prologue
    .line 734
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    .line 735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x16

    if-ge v0, v3, :cond_1

    .line 736
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 737
    .local v2, "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v2, :cond_0

    .line 738
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v1

    .line 739
    .local v1, "id":I
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .end local v1    # "id":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    .end local v2    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_1
    return-void
.end method

.method private initPreference()V
    .locals 1

    .prologue
    .line 205
    const-string v0, "button_language"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    .line 206
    const-string v0, "button_add_channel"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    .line 207
    const-string v0, "menu_channel_list"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    .line 208
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 210
    return-void
.end method

.method private insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 7
    .param p1, "channel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 285
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v4, "number"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v4, "enable"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 291
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 292
    .local v1, "insertId":I
    invoke-virtual {p1, v1}, Lcom/mediatek/settings/CellBroadcastChannel;->setKeyId(I)V

    .line 293
    const-string v4, "Settings/CellBroadcastSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertChannelToDatabase(), insertId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    const/4 v4, 0x1

    .end local v1    # "insertId":I
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v4

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 8
    .param p1, "channel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    const/4 v3, -0x1

    .line 391
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 392
    .local v6, "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 393
    .local v1, "tChannelId":I
    const/4 v7, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v7

    .line 394
    return-object v6
.end method

.method private makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 13

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 859
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 863
    .local v0, "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    .end local v0    # "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    return-object v1

    .line 865
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v3

    .line 866
    .local v3, "beginId":I
    move v4, v3

    .line 867
    .local v4, "endId":I
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v5

    .line 868
    .local v5, "beginState":Z
    const/4 v6, 0x2

    .line 869
    .local v6, "i":I
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 870
    .local v9, "tSize":I
    const/4 v6, 0x2

    :goto_1
    if-ge v6, v9, :cond_3

    .line 871
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 872
    .local v8, "tLanguage":Lcom/mediatek/settings/CellBroadcastLanguage;
    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v10

    .line 873
    .local v10, "tempId":I
    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v11

    .line 874
    .local v11, "tempState":Z
    add-int/lit8 v2, v4, 0x1

    if-ne v10, v2, :cond_2

    if-ne v5, v11, :cond_2

    .line 875
    move v4, v10

    .line 870
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 877
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 878
    .restart local v0    # "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    move v3, v10

    .line 880
    move v4, v10

    .line 881
    move v5, v11

    goto :goto_2

    .line 885
    .end local v0    # "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v8    # "tLanguage":Lcom/mediatek/settings/CellBroadcastLanguage;
    .end local v10    # "tempId":I
    .end local v11    # "tempState":Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v4

    .line 887
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 888
    .restart local v0    # "cBConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private queryChannelFromDatabase()Z
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 488
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->clearChannel()V

    .line 489
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "name"

    aput-object v0, v2, v9

    const-string v0, "number"

    aput-object v0, v2, v1

    const-string v0, "enable"

    aput-object v0, v2, v3

    .line 490
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 492
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 493
    if-eqz v7, :cond_1

    .line 494
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    new-instance v6, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 496
    .local v6, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelId(I)V

    .line 497
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setKeyId(I)V

    .line 498
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelName(Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 500
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 503
    .end local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    :catch_0
    move-exception v8

    .line 506
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 508
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return v0

    .restart local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_0
    move v0, v10

    .line 499
    goto :goto_1

    .line 506
    .end local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 508
    goto :goto_2

    .line 506
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 399
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 401
    return-void
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 5
    .param p1, "objectList"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 851
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 852
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSlotId:I

    invoke-static {v1, p1, p1, v0, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setCellBroadcastSmsConfig(Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V

    .line 854
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->onStarted(Landroid/preference/Preference;Z)V

    .line 855
    return-void
.end method

.method private setCheckedAlllanguageItem([ZZLandroid/app/AlertDialog;)V
    .locals 7
    .param p1, "temp"    # [Z
    .param p2, "isChecked"    # Z
    .param p3, "languageDialog"    # Landroid/app/AlertDialog;

    .prologue
    const/4 v6, 0x0

    .line 1010
    const/4 v0, 0x1

    .line 1011
    .local v0, "alllanguage":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 1012
    aget-boolean v3, p1, v1

    if-nez v3, :cond_2

    .line 1013
    const/4 v0, 0x0

    .line 1017
    :cond_0
    const-string v3, "Settings/CellBroadcastSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All language alllanguage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {p3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1020
    .local v2, "items":Landroid/widget/ListView;
    invoke-virtual {v2, v6, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1021
    const/4 v3, 0x1

    aput-boolean v3, p1, v6

    .line 1023
    .end local v2    # "items":Landroid/widget/ListView;
    :cond_1
    return-void

    .line 1011
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setLanguageSummary([Z)V
    .locals 8
    .param p1, "temp"    # [Z

    .prologue
    const/4 v7, 0x0

    .line 251
    if-nez p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x1

    .line 255
    .local v0, "allLanguagesFlag":Z
    array-length v5, p1

    .line 256
    .local v5, "tLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 257
    aget-boolean v6, p1, v2

    if-nez v6, :cond_2

    .line 258
    const/4 v0, 0x0

    .line 262
    :cond_1
    aput-boolean v0, p1, v7

    .line 263
    aget-boolean v6, p1, v7

    if-eqz v6, :cond_3

    .line 264
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0b00b9

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 256
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    :cond_3
    const/4 v1, 0x0

    .line 268
    .local v1, "flag":I
    const-string v4, ""

    .line 269
    .local v4, "summary":Ljava/lang/String;
    const/4 v3, -0x1

    .line 270
    .local v3, "lastIndex":I
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v5, :cond_5

    .line 271
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-ge v1, v6, :cond_4

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 274
    move v3, v2

    .line 276
    :cond_4
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_6

    if-le v2, v3, :cond_6

    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 270
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private showAddChannelDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 333
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 334
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04002d

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 336
    .local v3, "setView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 338
    const v4, 0x7f0b00ac

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 339
    const v4, 0x104000a

    new-instance v5, Lcom/mediatek/settings/CellBroadcastSettings$3;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/settings/CellBroadcastSettings$3;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/view/View;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 385
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->requestInputMethod(Landroid/app/Dialog;)V

    .line 386
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 387
    return-void
.end method

.method private showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V
    .locals 15
    .param p1, "oldChannel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v12

    .line 405
    .local v12, "keyId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v8

    .line 406
    .local v8, "cid":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v9

    .line 407
    .local v9, "cname":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v7

    .line 408
    .local v7, "checked":Z
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 409
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04002d

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 410
    .local v13, "setView":Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 412
    const v0, 0x7f0b00b2

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 413
    const v0, 0x7f07008a

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 415
    .local v2, "channelName":Landroid/widget/EditText;
    const v0, 0x7f07008b

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 417
    .local v3, "channelNum":Landroid/widget/EditText;
    const v0, 0x7f07008c

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 419
    .local v4, "channelState":Landroid/widget/CheckBox;
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 423
    const v14, 0x104000a

    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$4;

    move-object v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/CellBroadcastSettings$4;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/mediatek/settings/CellBroadcastChannel;)V

    invoke-virtual {v6, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 465
    .local v10, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 466
    invoke-direct {p0, v10}, Lcom/mediatek/settings/CellBroadcastSettings;->requestInputMethod(Landroid/app/Dialog;)V

    .line 467
    return-void
.end method

.method private showLanguageSelectDialog()V
    .locals 12

    .prologue
    const/16 v8, 0x16

    const/4 v11, 0x0

    .line 758
    new-array v6, v8, [Z

    .line 759
    .local v6, "temp":[Z
    new-array v7, v8, [Z

    .line 760
    .local v7, "temp2":[Z
    const/4 v0, 0x1

    .line 761
    .local v0, "allLanguagesFlag":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 762
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 763
    .local v5, "tLanguage":Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v5, :cond_1

    .line 764
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "language status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v8

    aput-boolean v8, v6, v2

    .line 766
    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v8

    aput-boolean v8, v7, v2

    .line 770
    :goto_1
    aget-boolean v8, v6, v2

    if-nez v8, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 761
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    :cond_1
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showLanguageSelectDialog() init the language list failed when i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 775
    .end local v5    # "tLanguage":Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_2
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All language status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v8, v0}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 777
    aput-boolean v0, v6, v11

    .line 778
    aput-boolean v0, v7, v11

    .line 779
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    .local v1, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b00ae

    invoke-virtual {p0, v8}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 781
    const v8, 0x7f0b018f

    new-instance v9, Lcom/mediatek/settings/CellBroadcastSettings$5;

    invoke-direct {v9, p0, v6, v7}, Lcom/mediatek/settings/CellBroadcastSettings$5;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;[Z[Z)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 811
    const v8, 0x7f0b018c

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 812
    new-instance v4, Lcom/mediatek/settings/CellBroadcastSettings$6;

    invoke-direct {v4, p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings$6;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;[Z)V

    .line 843
    .local v4, "multiChoiceListener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    const v8, 0x7f060027

    invoke-virtual {v1, v8, v6, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 844
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 845
    .local v3, "languageDialog":Landroid/app/AlertDialog;
    if-eqz v3, :cond_3

    .line 846
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 848
    :cond_3
    return-void
.end method

.method private showUpdateDBErrorInfoDialog()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 302
    return-void
.end method

.method private updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 13
    .param p1, "oldChannel"    # Lcom/mediatek/settings/CellBroadcastChannel;
    .param p2, "newChannel"    # Lcom/mediatek/settings/CellBroadcastChannel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 512
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v5, v10

    const-string v8, "name"

    aput-object v8, v5, v9

    const/4 v8, 0x2

    const-string v11, "number"

    aput-object v11, v5, v8

    const/4 v8, 0x3

    const-string v11, "enable"

    aput-object v11, v5, v8

    .line 513
    .local v5, "projection":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v2

    .line 514
    .local v2, "id":I
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v1

    .line 516
    .local v1, "enable":Z
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v4

    .line 517
    .local v4, "number":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 518
    .local v6, "values":Landroid/content/ContentValues;
    const-string v8, "_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v8, "name"

    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v8, "number"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    const-string v11, "enable"

    if-eqz v1, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "where":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v11, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v6, v7, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_1
    return v9

    .end local v7    # "where":Ljava/lang/String;
    :cond_0
    move v8, v10

    .line 521
    goto :goto_0

    .line 525
    .restart local v7    # "where":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move v9, v10

    .line 526
    goto :goto_1
.end method

.method private updateChannelUIList()V
    .locals 11

    .prologue
    .line 214
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 215
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 216
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 217
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "channel":Landroid/preference/Preference;
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v5

    .line 219
    .local v5, "keyId":I
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "channelName":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 221
    .local v1, "channelId":I
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v3

    .line 222
    .local v3, "channelState":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v7, v5, v1, v2, v3}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 225
    .local v7, "oldChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v3, :cond_0

    .line 226
    const v9, 0x7f0b01c3

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 231
    :goto_1
    new-instance v9, Lcom/mediatek/settings/CellBroadcastSettings$2;

    invoke-direct {v9, p0, v7}, Lcom/mediatek/settings/CellBroadcastSettings$2;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)V

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 237
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_0
    const v9, 0x7f0b01c4

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 239
    .end local v0    # "channel":Landroid/preference/Preference;
    .end local v1    # "channelId":I
    .end local v2    # "channelName":Ljava/lang/String;
    .end local v3    # "channelState":Z
    .end local v5    # "keyId":I
    .end local v7    # "oldChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v8    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateChannelsWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v1

    .line 543
    .local v1, "channelBeginIndex":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    .line 544
    .local v2, "channelEndIndex":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    .line 545
    .local v6, "state":Z
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateChannelsWithSingleConfig STATE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 548
    move v3, v1

    .local v3, "j":I
    :goto_0
    if-gt v3, v2, :cond_0

    .line 549
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 568
    .end local v3    # "j":I
    :cond_0
    return-void

    .line 552
    .restart local v3    # "j":I
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "jStr":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->getChannelObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastChannel;

    move-result-object v0

    .line 554
    .local v0, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v0, :cond_2

    .line 555
    invoke-virtual {v0, v6}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 548
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 558
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0b00ba

    invoke-virtual {p0, v9}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 559
    .local v7, "tName":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v5, v3, v7, v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 560
    .local v5, "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-direct {p0, v5}, Lcom/mediatek/settings/CellBroadcastSettings;->insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 561
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    .line 563
    :cond_3
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 614
    :cond_0
    return-void

    .line 604
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 605
    .local v2, "number":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 606
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 609
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 610
    .local v1, "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateLanguagesWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 611
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->dumpConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 612
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelsWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateLanguageSummary()V
    .locals 4

    .prologue
    .line 242
    const/16 v3, 0x16

    new-array v2, v3, [Z

    .line 243
    .local v2, "temp":[Z
    array-length v1, v2

    .line 244
    .local v1, "tLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 245
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->setLanguageSummary([Z)V

    .line 248
    return-void
.end method

.method private updateLanguagesWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    const/4 v8, -0x2

    .line 571
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    .line 572
    .local v4, "languageBeginIndex":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    .line 573
    .local v5, "languageEndIndex":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    if-eq v4, v8, :cond_3

    .line 574
    move v1, v4

    .local v1, "j":I
    :goto_0
    if-gt v1, v5, :cond_0

    .line 575
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    invoke-virtual {v6}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 598
    .end local v1    # "j":I
    :cond_0
    return-void

    .line 578
    .restart local v1    # "j":I
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;

    move-result-object v3

    .line 579
    .local v3, "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v3, :cond_2

    .line 580
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 574
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "j":I
    .end local v3    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_3
    const-string v6, "Settings/CellBroadcastSettings"

    const-string v7, "Select all language!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-ne v4, v8, :cond_0

    if-ne v5, v8, :cond_0

    .line 586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 587
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    invoke-virtual {v6}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 590
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 591
    .restart local v3    # "language":Lcom/mediatek/settings/CellBroadcastLanguage;
    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;

    move-result-object v2

    .line 592
    .local v2, "lang":Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v2, :cond_4

    .line 593
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 586
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateStatus(Z)V
    .locals 1
    .param p1, "statue"    # Z

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1034
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1035
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 1036
    return-void
.end method

.method private updateUI()V
    .locals 1

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelUIList()V

    .line 1040
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateLanguageSummary()V

    .line 1041
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateStatus(Z)V

    .line 1042
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->dismissProgressDialog()V

    .line 1043
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 627
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v12, 0x0

    .line 905
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 906
    .local v7, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v6, v0, -0x3

    .line 907
    .local v6, "index":I
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 908
    .local v11, "oldChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 938
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 910
    :pswitch_0
    new-instance v8, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v8}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 911
    .local v8, "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    move-object v8, v11

    .line 912
    invoke-virtual {v11}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    invoke-virtual {v8, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 913
    invoke-virtual {v11}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 914
    .local v1, "tempOldChannelId":I
    new-array v9, v2, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 915
    .local v9, "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v9, v12

    .line 917
    invoke-direct {p0, v11, v8}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    invoke-direct {p0, v9}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    goto :goto_0

    .end local v1    # "tempOldChannelId":I
    .end local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_0
    move v0, v12

    .line 912
    goto :goto_1

    .line 920
    .restart local v1    # "tempOldChannelId":I
    .restart local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    goto :goto_0

    .line 924
    .end local v1    # "tempOldChannelId":I
    .end local v8    # "newChannel":Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v9    # "objectList":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :pswitch_1
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V

    goto :goto_0

    .line 927
    :pswitch_2
    invoke-virtual {v11, v12}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 928
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    .line 929
    .local v10, "objectList1":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->deleteChannelFromDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    invoke-direct {p0, v10}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    goto :goto_0

    .line 932
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    goto :goto_0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSlotId:I

    .line 157
    iget v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSlotId:I

    packed-switch v1, :pswitch_data_0

    .line 171
    const-string v1, "Settings/CellBroadcastSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error no sim id matched with mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    const-string v1, "CellBroadcastSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sim Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 178
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->addPreferencesFromResource(I)V

    .line 179
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initPreference()V

    .line 180
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguage()V

    .line 181
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    return-void

    .line 159
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :pswitch_0
    sget-object v1, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 162
    :pswitch_1
    sget-object v1, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI1:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 165
    :pswitch_2
    sget-object v1, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI2:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 168
    :pswitch_3
    sget-object v1, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI3:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/16 v6, 0xa

    const/4 v8, 0x0

    .line 943
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v3, p3

    .line 944
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 945
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    .line 946
    const-string v5, "Settings/CellBroadcastSettings"

    const-string v6, "onCreateContextMenu,menuInfo is null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 950
    .local v4, "position":I
    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 951
    add-int/lit8 v2, v4, -0x3

    .line 952
    .local v2, "index":I
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 953
    .local v0, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "channelName":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 955
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 956
    const v5, 0x7f0b01c4

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 960
    :goto_1
    const/4 v5, 0x1

    const/16 v6, 0xb

    const v7, 0x7f0b00b3

    invoke-interface {p1, v5, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 961
    const/4 v5, 0x2

    const/16 v6, 0xc

    const v7, 0x7f0b00b4

    invoke-interface {p1, v5, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 958
    :cond_2
    const v5, 0x7f0b01c3

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;->cancel(Z)Z

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mCellBroadcastAsyncTask:Lcom/mediatek/settings/CellBroadcastSettings$CellBroadcastAsyncTask;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->removeMessages(I)V

    .line 202
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 322
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showLanguageSelectDialog()V

    .line 329
    :goto_0
    return v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showAddChannelDialog()V

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V

    .line 190
    return-void
.end method

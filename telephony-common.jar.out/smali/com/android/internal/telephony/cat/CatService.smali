.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$6;
    }
.end annotation


# static fields
.field public static final ACTION_CAT_INIT_DONE:Ljava/lang/String; = "android.intent.action.ACTION_CAT_INIT_DONE"

.field static final ACTION_PREBOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_CLOSED:I = 0x2

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_ID_NOT_AVAILABLE:I = 0x3

.field static final ADDITIONAL_INFO_FOR_BIP_NO_CHANNEL_AVAILABLE:I = 0x1

.field static final ADDITIONAL_INFO_FOR_BIP_NO_SPECIFIC_CAUSE:I = 0x0

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_BUFFER_SIZE_NOT_AVAILABLE:I = 0x4

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_INTERFACE_TRANSPORT_LEVEL_NOT_AVAILABLE:I = 0x6

.field static final ADDITIONAL_INFO_FOR_BIP_SECURITY_ERROR:I = 0x5

.field private static final DBG:Z = false

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_LIST_ELEMENT_BROWSER_TERMINATION:I = 0x8

.field static final EVENT_LIST_ELEMENT_CALL_CONNECTED:I = 0x1

.field static final EVENT_LIST_ELEMENT_CALL_DISCONNECTED:I = 0x2

.field static final EVENT_LIST_ELEMENT_CARD_READER_STATUS:I = 0x6

.field public static final EVENT_LIST_ELEMENT_CHANNEL_STATUS:I = 0xa

.field public static final EVENT_LIST_ELEMENT_DATA_AVAILABLE:I = 0x9

.field static final EVENT_LIST_ELEMENT_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVENT_LIST_ELEMENT_LANGUAGE_SELECTION:I = 0x7

.field static final EVENT_LIST_ELEMENT_LOCATION_STATUS:I = 0x3

.field static final EVENT_LIST_ELEMENT_MT_CALL:I = 0x0

.field static final EVENT_LIST_ELEMENT_USER_ACTIVITY:I = 0x4

.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field public static final GEMINI_SIM_3:I = 0x2

.field public static final GEMINI_SIM_4:I = 0x3

.field static final IDLE_SCREEN_ENABLE_KEY:Ljava/lang/String; = "_enable"

.field static final IDLE_SCREEN_INTENT_NAME:Ljava/lang/String; = "android.intent.action.IDLE_SCREEN_NEEDED"

.field public static final MSG_ID_CACHED_DISPLAY_TEXT_TIMEOUT:I = 0x24

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field public static final MSG_ID_CLOSE_CHANNEL_DONE:I = 0x21

.field public static final MSG_ID_CONN_MGR_TIMEOUT:I = 0x23

.field public static final MSG_ID_CONN_RETRY_TIMEOUT:I = 0x25

.field static final MSG_ID_DB_HANDLER:I = 0xb

.field private static final MSG_ID_DISABLE_DISPLAY_TEXT_DELAYED:I = 0xf

.field private static final MSG_ID_EVDL_CALL:I = 0x15

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0x8

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field public static final MSG_ID_GET_CHANNEL_STATUS_DONE:I = 0x22

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field private static final MSG_ID_IVSR_DELAYED:I = 0xe

.field private static final MSG_ID_MODEM_EVDL_CALL_CONN_TIMEOUT:I = 0x16

.field private static final MSG_ID_MODEM_EVDL_CALL_DISCONN_TIMEOUT:I = 0x17

.field public static final MSG_ID_OPEN_CHANNEL_DONE:I = 0x1e

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field public static final MSG_ID_RECEIVE_DATA_DONE:I = 0x20

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field public static final MSG_ID_SEND_DATA_DONE:I = 0x1f

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final STK_DEFAULT:Ljava/lang/String; = "Default Message"

.field private static final STK_EVDL_CALL_STATE_CALLCONN:I = 0x0

.field private static final STK_EVDL_CALL_STATE_CALLDISCONN:I = 0x1

.field static final USER_ACTIVITY_ENABLE_KEY:Ljava/lang/String; = "state"

.field static final USER_ACTIVITY_INTENT_NAME:Ljava/lang/String; = "android.intent.action.stk.USER_ACTIVITY.enable"

.field private static mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field protected static mLock:Ljava/lang/Object;

.field private static mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sInst1:Ljava/lang/String;

.field private static sInst2:Ljava/lang/String;

.field private static sInst3:Ljava/lang/String;

.field private static sInst4:Ljava/lang/String;

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

.field private static sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

.field private static sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;


# instance fields
.field private CACHED_DISPLAY_TIMEOUT:I

.field private CatServiceReceiver:Landroid/content/BroadcastReceiver;

.field private final DISABLE_DISPLAY_TEXT_DELAYED_TIME:I

.field private final IVSR_DELAYED_TIME:I

.field private MODEM_EVDL_TIMEOUT:I

.field private ResultCodeFlag:I

.field private default_send_setupmenu_tr:Z

.field private isDisplayTextDisabled:Z

.field private isIvsrBootUp:Z

.field mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

.field private mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private final mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mEvdlCallConnObjQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEvdlCallDisConnObjQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEvdlCallObj:I

.field private mEventDownloadCallConnInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cat/EventDownloadCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cat/EventDownloadCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventList:[B

.field public mGotSetUpMenu:Z

.field private mHasCachedDTCmd:Z

.field private mIsAllCallDisConn:Z

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field mNeedRegisterAgain:Z

.field private mNumEventDownloadCallConn:I

.field private mNumEventDownloadCallDisConn:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPowerOnSequenceObserver:Landroid/database/ContentObserver;

.field private mReadFromPreferenceDone:Z

.field public mSaveNewSetUpMenu:Z

.field private mSetUpMenuFromMD:Z

.field private mSimId:I

.field private final mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

.field mTimeoutHandler:Landroid/os/Handler;

.field private simIdfromIntent:I

.field private simState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    .line 217
    const-string v0, "sInstanceSim1"

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    .line 218
    const-string v0, "sInstanceSim2"

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    .line 220
    const-string v0, "sInstanceSim3"

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInst3:Ljava/lang/String;

    .line 221
    const-string v0, "sInstanceSim4"

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInst4:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;I)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p4, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p7, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p8, "simId"    # I

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 173
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 174
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 176
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 224
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->default_send_setupmenu_tr:Z

    .line 225
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mGotSetUpMenu:Z

    .line 226
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 227
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 228
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    .line 229
    const/16 v6, 0x7d0

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    .line 230
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    .line 231
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    .line 232
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 236
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    .line 287
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 290
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 291
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    .line 292
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    .line 294
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 295
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 298
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    .line 299
    const v6, 0xea60

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->IVSR_DELAYED_TIME:I

    .line 301
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    .line 302
    const/16 v6, 0x7530

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->DISABLE_DISPLAY_TEXT_DELAYED_TIME:I

    .line 304
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 307
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    .line 308
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    .line 309
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 310
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 311
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    .line 314
    const v6, 0x1d4c0

    iput v6, p0, Lcom/android/internal/telephony/cat/CatService;->CACHED_DISPLAY_TIMEOUT:I

    .line 316
    new-instance v6, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    .line 355
    new-instance v6, Lcom/android/internal/telephony/cat/CatService$2;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/CatService$2;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    .line 406
    new-instance v6, Lcom/android/internal/telephony/cat/CatService$3;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/CatService$3;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

    .line 2183
    new-instance v6, Lcom/android/internal/telephony/cat/CatService$4;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/CatService$4;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 2305
    new-instance v6, Lcom/android/internal/telephony/cat/CatService$5;

    invoke-direct {v6, p0, p0}, Lcom/android/internal/telephony/cat/CatService$5;-><init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    .line 2466
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 422
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 424
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Service: Input parameters must not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 427
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 428
    iput-object p5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 429
    move/from16 v0, p8

    iput v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    .line 430
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 432
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    move/from16 v0, p8

    invoke-static {p0, p6, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 438
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x15

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvdlCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    sput-object p4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 447
    sput-object p3, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 450
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 453
    sget-object v6, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 457
    const-string v6, "Get BipManager"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    move/from16 v0, p8

    invoke-static {p5, p0, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cat/bip/BipManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 459
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    if-nez v6, :cond_2

    .line 460
    const-string v6, "BipManager is null!!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v6, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v6, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 470
    .local v5, "mSIMStateChangeFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 472
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.stk.IDLE_SCREEN_AVAILABLE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 474
    .local v4, "mIdleScreenAvailableFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 475
    const-string v6, "CatService: is running"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    const-string v6, "[CachedStk notify RIL to send cached command"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_CAT_INIT_DONE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v3, "intentForCachedCommand":Landroid/content/Intent;
    const-string v6, "simId"

    iget v7, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->registerPowerOnSequenceObserver()V

    .line 488
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.stk.clear_display_text"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 489
    .local v1, "ClearDisplayTextFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # I

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->clearCachedDisplayText(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "x2"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    .line 160
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->sendCatCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/cat/CatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cat/CatService;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # [B

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cat/CatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/cat/CatService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "x1"    # I

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    return-void
.end method

.method private checkSetupWizardInstalled()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2269
    const-string v3, "com.google.android.setupwizard"

    .line 2270
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "com.google.android.setupwizard.SetupWizardActivity"

    .line 2272
    .local v0, "activityName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2273
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 2274
    const-string v7, "fail to get PM"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2302
    :goto_0
    return v6

    .line 2279
    :cond_0
    const/4 v2, 0x1

    .line 2281
    .local v2, "isPkgInstalled":Z
    :try_start_0
    const-string v8, "com.google.android.setupwizard"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2287
    :goto_1
    if-ne v2, v7, :cond_3

    .line 2288
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.google.android.setupwizard"

    const-string v10, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    .line 2290
    .local v4, "pkgEnabledState":I
    if-eq v4, v7, :cond_1

    if-nez v4, :cond_2

    .line 2292
    :cond_1
    const-string v6, "should not show DISPLAY_TEXT immediately"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v7

    .line 2293
    goto :goto_0

    .line 2282
    .end local v4    # "pkgEnabledState":I
    :catch_0
    move-exception v1

    .line 2283
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "fail to get SetupWizard package"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2284
    const/4 v2, 0x0

    goto :goto_1

    .line 2297
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "pkgEnabledState":I
    :cond_2
    const-string v7, "Setup Wizard Activity is not activate"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2301
    .end local v4    # "pkgEnabledState":I
    :cond_3
    const-string v7, "isPkgInstalled = false"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearCachedDisplayText(I)V
    .locals 4
    .param p1, "sim_id"    # I

    .prologue
    .line 383
    const-string v2, "CatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCachedDisplayText, sim_id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSimId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mCachedDisplayTextCmd: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    if-ne p1, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_2

    .line 386
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 387
    .local v0, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 388
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    .line 404
    .end local v0    # "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_0
    :goto_1
    return-void

    .line 383
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 397
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto :goto_1
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;
    .param p4, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1097
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1098
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 1099
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$6;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1105
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 1107
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 1111
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1113
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 1121
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 18
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    .line 1234
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1236
    .local v4, "buf":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v15, v15

    if-nez v15, :cond_1

    .line 1237
    :cond_0
    const-string v15, "SS-eventDownload: event list null"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1374
    :goto_0
    return-void

    .line 1242
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SS-eventDownload: event list length:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    const/4 v8, 0x0

    .local v8, "index":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v15, v15

    if-ge v8, v15, :cond_4

    .line 1244
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SS-eventDownload: event ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    aget-byte v15, v15, v8

    move/from16 v0, p1

    if-ne v15, v0, :cond_8

    .line 1247
    const/4 v15, 0x5

    move/from16 v0, p1

    if-ne v0, v15, :cond_5

    .line 1248
    const-string v15, "SS-eventDownload: event is IDLE_SCREEN_AVAILABLE"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1249
    const-string v15, "SS-eventDownload: sent intent with idle = false"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1250
    new-instance v9, Landroid/content/Intent;

    const-string v15, "android.intent.action.IDLE_SCREEN_NEEDED"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v9, "intent":Landroid/content/Intent;
    const-string v15, "_enable"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1252
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1273
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    const/4 v15, 0x1

    move/from16 v0, p5

    if-ne v15, v0, :cond_4

    .line 1274
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    const/16 v16, 0x0

    aput-byte v16, v15, v8

    .line 1287
    :cond_4
    const/16 v14, 0xd6

    .line 1288
    .local v14, "tag":I
    invoke-virtual {v4, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1291
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1294
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v15

    or-int/lit16 v14, v15, 0x80

    .line 1295
    invoke-virtual {v4, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1296
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1297
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1300
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v15

    or-int/lit16 v14, v15, 0x80

    .line 1301
    invoke-virtual {v4, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1302
    const/4 v15, 0x2

    invoke-virtual {v4, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1304
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_d

    .line 1305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    if-lez v15, :cond_b

    .line 1306
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1307
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    if-lez v15, :cond_a

    .line 1308
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/CatService;->writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 1262
    .end local v14    # "tag":I
    :cond_5
    const/4 v15, 0x4

    move/from16 v0, p1

    if-ne v0, v15, :cond_6

    .line 1263
    const-string v15, "SS-eventDownload: event is USER_ACTIVITY"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    new-instance v9, Landroid/content/Intent;

    const-string v15, "android.intent.action.stk.USER_ACTIVITY.enable"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v15, "state"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1266
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1267
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    .line 1268
    const-string v15, "SS-eventDownload: event is CALL_CONNECTED"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1269
    :cond_7
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_3

    .line 1270
    const-string v15, "SS-eventDownload: event is CALL_DISCONNECTED"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1279
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 1280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v15, v15

    if-ne v8, v15, :cond_2

    goto/16 :goto_0

    .line 1311
    .restart local v14    # "tag":I
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/CatService;->writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V

    .line 1359
    :cond_a
    :goto_3
    if-eqz p4, :cond_13

    .line 1360
    move-object/from16 v2, p4

    .local v2, "arr$":[B
    array-length v11, v2

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v11, :cond_13

    aget-byte v3, v2, v7

    .line 1361
    .local v3, "b":B
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1360
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1314
    .end local v2    # "arr$":[B
    .end local v3    # "b":B
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    :cond_b
    const-string v15, "SS-eventDownload: Wait 2s for modem CALL_DISCONNECTED"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    const/16 v15, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 1316
    .local v12, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    const v16, 0xffff

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 1317
    :cond_c
    new-instance v15, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    iput-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    iget-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v12, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1321
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 1322
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SS-eventDownload: mNumEventDownloadCallDisConn ++.["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1325
    .end local v12    # "msg1":Landroid/os/Message;
    :cond_d
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_12

    .line 1326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    if-lez v15, :cond_10

    .line 1327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    .line 1328
    .local v5, "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    if-eqz v5, :cond_f

    .line 1329
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SS-eventDownload: event is CALL_CONNECTED.["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsMTCall:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1330
    const/4 v15, 0x1

    iget v0, v5, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsMTCall:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    const/16 v15, 0x82

    :goto_5
    invoke-virtual {v4, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1331
    const/16 v15, 0x81

    invoke-virtual {v4, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1332
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v14

    .line 1333
    invoke-virtual {v4, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1334
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1335
    iget v15, v5, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {v4, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    .line 1330
    :cond_e
    const/16 v15, 0x83

    goto :goto_5

    .line 1337
    :cond_f
    const-string v15, "SS-eventDownload:O null evdlcallInfo"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1340
    .end local v5    # "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    :cond_10
    const/16 v15, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 1341
    .restart local v12    # "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    const v16, 0xffff

    move/from16 v0, v16

    if-le v15, v0, :cond_11

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 1342
    :cond_11
    new-instance v15, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    iput-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    iget-object v15, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1344
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v12, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1346
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 1347
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SS-eventDownload: mNumEventDownloadCallConn ++.["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1351
    .end local v12    # "msg1":Landroid/os/Message;
    :cond_12
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1352
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    .line 1365
    :cond_13
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 1368
    .local v13, "rawData":[B
    array-length v15, v13

    add-int/lit8 v10, v15, -0x2

    .line 1369
    .local v10, "len":I
    const/4 v15, 0x1

    int-to-byte v0, v10

    move/from16 v16, v0

    aput-byte v16, v13, v15

    .line 1371
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 1373
    .local v6, "hexString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v15, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;

    .prologue
    .line 1126
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 1128
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1129
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1130
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1132
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1133
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1593
    const-string v0, "CatService"

    const-string v1, "call getInstance 4"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const/4 v0, 0x0

    invoke-static {v2, v2, v2, v2, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3
    .param p0, "simId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1583
    const-string v0, "CatService"

    const-string v1, "call getInstance 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    invoke-static {v2, v2, v2, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 4
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 1567
    const-string v1, "CatService"

    const-string v2, "call getInstance 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, "sim_id":I
    if-eqz p2, :cond_0

    .line 1571
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getMySimId()I

    move-result v0

    .line 1572
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get SIM id from UiccCard. sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p0, p1, p2, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 14
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p4, "simId"    # I

    .prologue
    .line 1412
    const/4 v4, 0x0

    .line 1413
    .local v4, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v7, 0x0

    .line 1414
    .local v7, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v5, 0x0

    .line 1415
    .local v5, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_0

    .line 1419
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 1420
    if-eqz v4, :cond_0

    .line 1421
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v7

    .line 1422
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 1425
    :cond_0
    const-string v2, "CatService"

    const-string v3, "call getInstance 1"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    if-nez p0, :cond_1

    .line 1427
    const-string v2, "CatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GsmPhone is null, simId: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :cond_1
    sget-object v13, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1431
    const/4 v10, 0x0

    .line 1433
    .local v10, "cmd":Ljava/lang/String;
    if-nez p4, :cond_2

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v2, :cond_5

    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v2, v0, :cond_3

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v2, v0, :cond_4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v2, v0, :cond_14

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    if-nez v2, :cond_14

    .line 1439
    :cond_5
    const/4 v1, 0x0

    .line 1440
    .local v1, "tempInstance":Lcom/android/internal/telephony/cat/CatService;
    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    if-eqz p2, :cond_6

    if-eqz v7, :cond_6

    if-nez p3, :cond_d

    .line 1442
    :cond_6
    const-string v3, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ci: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ca: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_8

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ir: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v5, :cond_9

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", context: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_a

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", fh: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v7, :cond_b

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", ic: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_c

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const/4 v2, 0x0

    monitor-exit v13

    .line 1557
    .end local v1    # "tempInstance":Lcom/android/internal/telephony/cat/CatService;
    :goto_6
    return-object v2

    .line 1442
    .restart local v1    # "tempInstance":Lcom/android/internal/telephony/cat/CatService;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 1446
    :cond_d
    if-nez p0, :cond_10

    .line 1447
    const-string v2, "CatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone is null, simId: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 1450
    .local v11, "myPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v2, v0, :cond_e

    .line 1452
    :cond_e
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v2, v0, :cond_f

    .line 1455
    :cond_f
    check-cast v11, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v11    # "myPhone":Lcom/android/internal/telephony/Phone;
    move/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1462
    :cond_10
    new-instance v12, Landroid/os/HandlerThread;

    const-string v2, "Cat Telephony service"

    invoke-direct {v12, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v12, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 1464
    new-instance v1, Lcom/android/internal/telephony/cat/CatService;

    .end local v1    # "tempInstance":Lcom/android/internal/telephony/cat/CatService;
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;I)V

    .line 1466
    .restart local v1    # "tempInstance":Lcom/android/internal/telephony/cat/CatService;
    if-nez p4, :cond_11

    .line 1467
    const-string v2, "read data from sInstSim1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1468
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1469
    const-string v2, "NEW sInstanceSim1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1470
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    .line 1488
    :goto_7
    invoke-static {v1, v10}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    .line 1546
    .end local v1    # "tempInstance":Lcom/android/internal/telephony/cat/CatService;
    .end local v12    # "thread":Landroid/os/HandlerThread;
    :goto_8
    if-nez p4, :cond_1d

    .line 1547
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatService;->registerSATcb()V

    .line 1548
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v13

    goto :goto_6

    .line 1560
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1471
    .restart local v1    # "tempInstance":Lcom/android/internal/telephony/cat/CatService;
    .restart local v12    # "thread":Landroid/os/HandlerThread;
    :cond_11
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v2, v0, :cond_12

    .line 1472
    :try_start_1
    const-string v2, "read data from sInstSim2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1474
    const-string v2, "NEW sInstanceSim2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1475
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_7

    .line 1476
    :cond_12
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v2, v0, :cond_13

    .line 1477
    const-string v2, "read data from sInstSim3"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1478
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInst3:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1479
    const-string v2, "NEW sInstanceSim3"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1480
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_7

    .line 1482
    :cond_13
    const-string v2, "read data from sInstSim4"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1483
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInst4:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1484
    const-string v2, "NEW sInstanceSim4"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1485
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_7

    .line 1489
    .end local v1    # "tempInstance":Lcom/android/internal/telephony/cat/CatService;
    .end local v12    # "thread":Landroid/os/HandlerThread;
    :cond_14
    if-eqz v5, :cond_1c

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v2, v5, :cond_1c

    .line 1490
    const-string v2, "CatService"

    const-string v3, "Reinitialize the Service with SIMRecords"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1498
    if-nez p4, :cond_16

    .line 1499
    const-string v2, "CatService"

    const-string v3, "read data from sInstSim1"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1501
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_15

    .line 1502
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1504
    :cond_15
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1505
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1506
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x14

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1507
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v2, v10}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    .line 1540
    :goto_9
    const-string v2, "CatService"

    const-string v3, "sr changed reinitialize and return current sInstance"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1508
    :cond_16
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v2, v0, :cond_18

    .line 1509
    const-string v2, "CatService"

    const-string v3, "read data from sInstSim2"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1511
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_17

    .line 1512
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1514
    :cond_17
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1515
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1516
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x14

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1517
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v2, v10}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    goto :goto_9

    .line 1518
    :cond_18
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v2, v0, :cond_1a

    .line 1519
    const-string v2, "CatService"

    const-string v3, "read data from sInstSim3"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst3:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1521
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_19

    .line 1522
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1524
    :cond_19
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1525
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1526
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x14

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1527
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v2, v10}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    goto :goto_9

    .line 1529
    :cond_1a
    const-string v2, "CatService"

    const-string v3, "read data from sInstSim4"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst4:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1531
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1b

    .line 1532
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1534
    :cond_1b
    sput-object v5, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1535
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1536
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x14

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1537
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v2, v10}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1542
    :cond_1c
    const-string v2, "CatService"

    const-string v3, "Return current sInstance"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1549
    :cond_1d
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v2, v0, :cond_1e

    .line 1550
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatService;->registerSATcb()V

    .line 1551
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v13

    goto/16 :goto_6

    .line 1552
    :cond_1e
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v2, v0, :cond_1f

    .line 1553
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatService;->registerSATcb()V

    .line 1554
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v13

    goto/16 :goto_6

    .line 1556
    :cond_1f
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatService;->registerSATcb()V

    .line 1557
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1138
    const-string v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "lang":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1142
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 1143
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 1145
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1147
    .end local v1    # "tag":I
    :cond_0
    return-void
.end method

.method public static getSaveNewSetUpMenuFlag(I)Z
    .locals 4
    .param p0, "sim_id"    # I

    .prologue
    .line 1646
    const/4 v0, 0x0

    .line 1647
    .local v0, "result":Z
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_1

    if-nez p0, :cond_1

    .line 1648
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1649
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1, mSaveNewSetUpMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_0
    :goto_0
    return v0

    .line 1650
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 1651
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1652
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2, mSaveNewSetUpMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1653
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    .line 1654
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1655
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3, mSaveNewSetUpMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 1657
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1658
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4, mSaveNewSetUpMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 17
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 1988
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2177
    :goto_0
    return-void

    .line 1991
    :cond_0
    const/4 v6, 0x0

    .line 1992
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v13, 0x0

    .line 1993
    .local v13, "helpRequired":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v2

    .line 1994
    .local v2, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v16

    .line 1996
    .local v16, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$6;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1998
    :pswitch_0
    const/4 v13, 0x1

    .line 2011
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$6;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    .line 2171
    :cond_1
    :goto_1
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    if-ne v1, v5, :cond_a

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    if-eqz v1, :cond_a

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    array-length v1, v1

    if-lez v1, :cond_a

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    :goto_2
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2176
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 2013
    :pswitch_3
    const-string v1, "CatService"

    const-string v3, "SET_UP_MENU"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_2

    const/4 v13, 0x1

    .line 2015
    :goto_3
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    .line 2014
    :cond_2
    const/4 v13, 0x0

    goto :goto_3

    .line 2018
    :pswitch_4
    const-string v1, "CatService"

    const-string v3, "SELECT_ITEM"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    new-instance v6, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 2020
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 2023
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v14

    .line 2024
    .local v14, "input":Lcom/android/internal/telephony/cat/Input;
    iget-boolean v1, v14, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v1, :cond_3

    .line 2028
    if-nez v13, :cond_1

    .line 2029
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    iget-boolean v3, v14, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v4, v14, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v6, v1, v3, v4}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 2033
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 2036
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 2039
    .end local v14    # "input":Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_1

    .line 2040
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto/16 :goto_1

    .line 2048
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 2055
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 2058
    :pswitch_8
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: user accept to open channel"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    const/16 v1, 0x1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 2060
    .local v15, "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_4

    .line 2061
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-virtual {v1, v15}, Lcom/android/internal/telephony/cat/bip/BipManager;->openChannel(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2064
    :cond_4
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: invalid OPEN_CHANNEL"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2075
    .end local v15    # "response":Landroid/os/Message;
    :pswitch_9
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$6;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 2102
    :cond_5
    :goto_4
    const/4 v6, 0x0

    .line 2103
    goto/16 :goto_1

    .line 2077
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS-handleCmdResponse: [BACKWARD_MOVE_BY_USER] userConfirm["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] resultCode["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    goto :goto_4

    .line 2085
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_5

    .line 2086
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto :goto_4

    .line 2091
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    if-lez v1, :cond_6

    .line 2094
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 2096
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_4

    .line 2098
    :cond_6
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: mCurrentCmd = null"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2105
    :pswitch_a
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$6;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_1

    .line 2118
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_7

    .line 2119
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    .line 2122
    :cond_7
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    array-length v1, v1

    if-lez v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    if-eqz v1, :cond_1

    .line 2124
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2126
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 2107
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 2114
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 2135
    :pswitch_b
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$6;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_1

    .line 2137
    :pswitch_c
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: User don\'t accept open channel"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    if-lez v1, :cond_8

    .line 2146
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 2148
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2150
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_9

    .line 2151
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: mCurrent is null"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2153
    :cond_9
    const-string v1, "[BIP]"

    const-string v3, "SS-handleCmdResponse: other params is invalid"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2162
    :pswitch_d
    iget v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 2163
    const-string v1, "send TR for LAUNCH_BROWSER_ERROR"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2164
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2171
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1996
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 2011
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_8
    .end packed-switch

    .line 2075
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xf -> :sswitch_0
        0x11 -> :sswitch_2
    .end sparse-switch

    .line 2105
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch

    .line 2135
    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_c
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 29
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .prologue
    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    new-instance v13, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 612
    .local v13, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/16 v26, 0x0

    .line 617
    .local v26, "response":Landroid/os/Message;
    const/16 v19, 0x0

    .line 618
    .local v19, "isAlarmState":Z
    const/16 v20, 0x0

    .line 619
    .local v20, "isFlightMode":Z
    const/16 v16, 0x0

    .line 621
    .local v16, "flightMode":I
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$6;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 978
    const-string v2, "SS-handleProactiveCommand: Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_0
    :goto_0
    return-void

    .line 623
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 624
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 635
    :goto_1
    const-string v2, "CAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSetUpMenuFromMD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 637
    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cat/Menu;->setSetUpMenuFlag(I)V

    .line 639
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    if-nez v2, :cond_5

    .line 981
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    :goto_3
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 982
    const/16 v18, 0x0

    .line 985
    .local v18, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    if-nez v2, :cond_14

    .line 986
    new-instance v18, Landroid/content/Intent;

    .end local v18    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.stk.command"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v2, "SS-handleProactiveCommand: sending CAT_CMD_ACTION"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    :goto_4
    const-string v2, "STK CMD"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 626
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    .line 637
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 643
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    if-nez v2, :cond_6

    .line 645
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    .line 646
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 647
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    .line 654
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v2, :cond_9

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oobe_display"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 656
    .local v9, "OOBE_Value":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle DISPLAY_TEXT, OOBE_Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    if-nez v9, :cond_8

    .line 659
    const-string v2, "[CacheDT cache DISPLAY_TEXT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dialog_sequence_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 665
    .local v27, "seqValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seqValue in CatService, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    const/4 v2, 0x2

    move/from16 v0, v27

    if-eq v0, v2, :cond_9

    .line 670
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 672
    if-nez v27, :cond_7

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dialog_sequence_settings"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 680
    :cond_7
    const-string v2, "[CacheDT set current cmd as DISPLAY_TEXT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 682
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->CACHED_DISPLAY_TIMEOUT:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(IJ)V

    goto/16 :goto_0

    .line 689
    .end local v27    # "seqValue":I
    :cond_8
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 690
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 691
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->CACHED_DISPLAY_TIMEOUT:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(IJ)V

    goto/16 :goto_0

    .line 705
    .end local v9    # "OOBE_Value":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v19

    .line 707
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 713
    :goto_5
    if-eqz v16, :cond_a

    const/16 v20, 0x1

    .line 714
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlarmState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFlightMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flightMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    if-eqz v19, :cond_b

    if-eqz v20, :cond_b

    .line 718
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 709
    :catch_0
    move-exception v15

    .line 710
    .local v15, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "fail to get property from Settings"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    const/16 v16, 0x0

    goto :goto_5

    .line 713
    .end local v15    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_a
    const/16 v20, 0x0

    goto :goto_6

    .line 723
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 724
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 730
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    if-eqz v2, :cond_d

    .line 731
    const-string v2, "[IVSR send TR directly"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 736
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    if-eqz v2, :cond_2

    .line 737
    const-string v2, "[Sim Recovery send TR directly"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 747
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 748
    const-string v2, "remove event list because of SIM Refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v2, p1

    .line 755
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v2, :cond_e

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 758
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 763
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_3

    .line 769
    :pswitch_5
    const/4 v1, 0x0

    .line 771
    .local v1, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 773
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 774
    .local v10, "cal":Ljava/util/Calendar;
    const/16 v28, 0x0

    .line 775
    .local v28, "temp":I
    const/16 v17, 0x0

    .line 776
    .local v17, "hibyte":I
    const/16 v22, 0x0

    .line 777
    .local v22, "lobyte":I
    const/4 v2, 0x7

    new-array v14, v2, [B

    .line 779
    .local v14, "datetime":[B
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v0, v2, -0x7d0

    move/from16 v28, v0

    .line 780
    div-int/lit8 v17, v28, 0xa

    .line 781
    rem-int/lit8 v2, v28, 0xa

    shl-int/lit8 v22, v2, 0x4

    .line 782
    const/4 v2, 0x0

    or-int v3, v22, v17

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    .line 784
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v28, v2, 0x1

    .line 785
    div-int/lit8 v17, v28, 0xa

    .line 786
    rem-int/lit8 v2, v28, 0xa

    shl-int/lit8 v22, v2, 0x4

    .line 787
    const/4 v2, 0x1

    or-int v3, v22, v17

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    .line 789
    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v28

    .line 790
    div-int/lit8 v17, v28, 0xa

    .line 791
    rem-int/lit8 v2, v28, 0xa

    shl-int/lit8 v22, v2, 0x4

    .line 792
    const/4 v2, 0x2

    or-int v3, v22, v17

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    .line 794
    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v28

    .line 795
    div-int/lit8 v17, v28, 0xa

    .line 796
    rem-int/lit8 v2, v28, 0xa

    shl-int/lit8 v22, v2, 0x4

    .line 797
    const/4 v2, 0x3

    or-int v3, v22, v17

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    .line 799
    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v28

    .line 800
    div-int/lit8 v17, v28, 0xa

    .line 801
    rem-int/lit8 v2, v28, 0xa

    shl-int/lit8 v22, v2, 0x4

    .line 802
    const/4 v2, 0x4

    or-int v3, v22, v17

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    .line 804
    const/16 v2, 0xd

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v28

    .line 805
    div-int/lit8 v17, v28, 0xa

    .line 806
    rem-int/lit8 v2, v28, 0xa

    shl-int/lit8 v22, v2, 0x4

    .line 807
    const/4 v2, 0x5

    or-int v3, v22, v17

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    .line 810
    const/16 v2, 0xf

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const v3, 0xdbba0

    div-int v28, v2, v3

    .line 811
    div-int/lit8 v17, v28, 0xa

    .line 812
    rem-int/lit8 v2, v28, 0xa

    shl-int/lit8 v22, v2, 0x4

    .line 813
    const/4 v2, 0x6

    or-int v3, v22, v17

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    .line 815
    new-instance v1, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;

    .end local v1    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    const/4 v3, 0x1

    aget-byte v3, v14, v3

    const/4 v4, 0x2

    aget-byte v4, v14, v4

    const/4 v5, 0x3

    aget-byte v5, v14, v5

    const/4 v6, 0x4

    aget-byte v6, v14, v6

    const/4 v7, 0x5

    aget-byte v7, v14, v7

    const/4 v8, 0x6

    aget-byte v8, v14, v8

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;-><init>(IIIIIII)V

    .line 819
    .restart local v1    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 823
    .end local v10    # "cal":Ljava/util/Calendar;
    .end local v14    # "datetime":[B
    .end local v17    # "hibyte":I
    .end local v22    # "lobyte":I
    .end local v28    # "temp":I
    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 825
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v21, v0

    .line 826
    .local v21, "lang":[B
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    .line 828
    .local v23, "locale":Ljava/util/Locale;
    const/4 v2, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v21, v2

    .line 829
    const/4 v2, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v21, v2

    .line 831
    new-instance v1, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;

    .end local v1    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v21

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;-><init>([B)V

    .line 833
    .restart local v1    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v1    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v21    # "lang":[B
    .end local v23    # "locale":Ljava/util/Locale;
    :pswitch_6
    move-object/from16 v2, p1

    .line 855
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x104053b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 858
    .local v24, "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 864
    .end local v24    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v19

    .line 866
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    .line 872
    :goto_7
    if-eqz v16, :cond_10

    const/16 v20, 0x1

    .line 873
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlarmState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFlightMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flightMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    if-eqz v19, :cond_2

    if-eqz v20, :cond_2

    .line 876
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 868
    :catch_1
    move-exception v15

    .line 869
    .restart local v15    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "fail to get property from Settings"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    const/16 v16, 0x0

    goto :goto_7

    .line 872
    .end local v15    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_10
    const/16 v20, 0x0

    goto :goto_8

    .line 883
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "READY"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IMSI"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LOADED"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 887
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v2, p1

    .line 895
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x104053a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 898
    .restart local v24    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .end local v24    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_a
    move-object/from16 v2, p1

    .line 904
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x104053c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 907
    .restart local v24    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 913
    .end local v24    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_b
    check-cast p1, Lcom/android/internal/telephony/cat/SetupEventListParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/SetupEventListParams;->eventList:[B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    goto/16 :goto_0

    .line 916
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_c
    const-string v2, "SS-handleProactiveCommand: process OPEN_CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 918
    .local v11, "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    .line 919
    .local v12, "callmgr":Lcom/android/internal/telephony/CallManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_11

    .line 920
    const-string v2, "SS-handleProactiveCommand: mphone is null."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v25

    .line 923
    .local v25, "myPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v25, :cond_12

    .line 924
    check-cast v25, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v25    # "myPhone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 932
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_13

    if-eqz v12, :cond_13

    .line 934
    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    .line 936
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v11, v2, :cond_2

    .line 937
    const-string v2, "[BIP]"

    const-string v3, "SS-handleProactiveCommand: ME is busy on call"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    new-instance v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->getFreeChannelId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/bip/ChannelStatus;-><init>(III)V

    iput-object v2, v13, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 941
    iget-object v2, v13, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 942
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 943
    const/16 v2, 0x1e

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v13}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    .line 945
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 926
    .restart local v25    # "myPhone":Lcom/android/internal/telephony/Phone;
    :cond_12
    const-string v2, "CatService"

    const-string v3, "myPhone is still null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 949
    .end local v25    # "myPhone":Lcom/android/internal/telephony/Phone;
    :cond_13
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SS-handleProactiveCommand: type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",or null callmgr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 953
    .end local v11    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v12    # "callmgr":Lcom/android/internal/telephony/CallManager;
    :pswitch_d
    const-string v2, "SS-handleProactiveCommand: process CLOSE_CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    const/16 v2, 0x21

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 955
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->closeChannel(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 959
    :pswitch_e
    const-string v2, "SS-handleProactiveCommand: process RECEIVE_DATA"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 961
    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->receiveData(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 965
    :pswitch_f
    const-string v2, "SS-handleProactiveCommand: process SEND_DATA"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 967
    const/16 v2, 0x1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->sendData(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 971
    :pswitch_10
    const-string v2, "SS-handleProactiveCommand: process GET_CHANNEL_STATUS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 973
    const/16 v2, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getChannelStatus(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 988
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    .restart local v18    # "intent":Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 989
    new-instance v18, Landroid/content/Intent;

    .end local v18    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.stk.command_2"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v2, "SS-handleProactiveCommand: sending CAT_CMD_ACTION_2"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 991
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 992
    new-instance v18, Landroid/content/Intent;

    .end local v18    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.stk.command_3"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v2, "SS-handleProactiveCommand: sending CAT_CMD_ACTION_3"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 995
    :cond_16
    new-instance v18, Landroid/content/Intent;

    .end local v18    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.stk.command_4"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v2, "SS-handleProactiveCommand: sending CAT_CMD_ACTION_4"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private handleDBHandler(I)V
    .locals 3
    .param p1, "sim_id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDBHandler, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1964
    if-nez p1, :cond_1

    .line 1965
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    :cond_0
    :goto_0
    return-void

    .line 1966
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1968
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInst3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1970
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1971
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInst4:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 6
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 1957
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    iget v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    iget v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 1959
    return-void
.end method

.method private static handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V
    .locals 4
    .param p0, "inst"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1600
    if-nez p1, :cond_0

    .line 1601
    const-string v1, "CatService"

    const-string v2, "handleProactiveCmdFromDB: cmd = null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    :goto_0
    return-void

    .line 1605
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->default_send_setupmenu_tr:Z

    .line 1607
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleProactiveCmdFromDB: cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 1609
    .local v0, "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1610
    const-string v1, "CatService"

    const-string v2, "handleProactiveCmdFromDB: over"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 514
    if-nez p1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const/4 v7, 0x0

    .line 520
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 588
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 522
    :pswitch_2
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 523
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 524
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_2

    .line 525
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 529
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event notify error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_4

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    .line 536
    :cond_3
    const-string v1, "[BIP]"

    const-string v2, "notify user text message even though get icon fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 539
    :cond_4
    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 540
    const-string v1, "[BIP]"

    const-string v2, "Open Channel with ResultCode"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 550
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    if-eqz v7, :cond_0

    .line 562
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_5

    .line 563
    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 564
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 565
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 551
    :catch_0
    move-exception v8

    .line 553
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 566
    .end local v8    # "e":Ljava/lang/ClassCastException;
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_6

    .line 567
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 568
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 569
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 574
    :cond_6
    const-string v1, "CAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS-handleMessage: invalid proactive command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 582
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 583
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 584
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-handleSessionEnd: SESSION END, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    const/4 v0, 0x0

    .line 1010
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1013
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    if-nez v1, :cond_0

    .line 1014
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1023
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1024
    return-void

    .line 1015
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1016
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.session_end_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1017
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1018
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.session_end_3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1020
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.session_end_4"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private isAlarmBoot()Z
    .locals 2

    .prologue
    .line 2264
    const-string v1, "sys.boot.reason"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSetUpMenuCmd(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x35

    const/16 v3, 0x32

    .line 1621
    const/4 v0, 0x0

    .line 1623
    .local v0, "validCmd":Z
    if-nez p1, :cond_0

    .line 1624
    const/4 v1, 0x0

    .line 1637
    :goto_0
    return v1

    .line 1627
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_2

    .line 1628
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1629
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 1637
    goto :goto_0

    .line 1632
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1633
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "inst"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 2490
    const/4 v1, 0x0

    .line 2491
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2493
    .local v0, "cmd":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2494
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    if-nez v2, :cond_1

    .line 2495
    const-string v2, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2496
    const-string v2, ""

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2497
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    .line 2498
    const-string v2, "CatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readCmdFromPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2503
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2504
    const/4 v0, 0x0

    .line 2506
    :cond_0
    return-object v0

    .line 2500
    :cond_1
    :try_start_1
    const-string v2, "CatService"

    const-string v4, "readCmdFromPreference, do not read again"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2502
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private registerPowerOnSequenceObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2428
    const-string v1, "call registerPowerOnSequenceObserver"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2429
    const-string v1, "dialog_sequence_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2430
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2432
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oobe_display"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2434
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 2436
    return-void
.end method

.method private registerSATcb()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1378
    const-string v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSATcb, mNeedRegisterAgain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    if-eqz v1, :cond_0

    .line 1382
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1383
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1384
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1385
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1387
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvdlCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1389
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 1391
    const-string v1, "CatService"

    const-string v2, "notify RIL to send cached command again"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CAT_INIT_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v0, "intentForCachedCommand":Landroid/content/Intent;
    const-string v1, "simId"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1394
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1396
    .end local v0    # "intentForCachedCommand":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cat/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1946
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1953
    :goto_0
    return v1

    .line 1949
    :catch_0
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1953
    goto :goto_0
.end method

.method private resetPowerOnSequenceFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2449
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2453
    .local v0, "seqValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call resetPowerOnSequenceFlag, seqValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2455
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2457
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2462
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 2464
    return-void
.end method

.method private static saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2478
    const/4 v1, 0x0

    .line 2479
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 2480
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2481
    :try_start_0
    const-string v2, "CatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCmdToPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    const-string v2, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2483
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2484
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2485
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2486
    monitor-exit v3

    .line 2487
    return-void

    .line 2486
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendCatCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 2406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call sendCatCmd, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2407
    const/4 v0, 0x0

    .line 2409
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2410
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.command_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2411
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "SS-sendCatCmd: sending CAT_CMD_ACTION_2"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2422
    :cond_0
    :goto_0
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2423
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2424
    return-void

    .line 2412
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    if-nez v1, :cond_2

    .line 2413
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2414
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "SS-sendCatCmd: sending CAT_CMD_ACTION"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2415
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2416
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.command_3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2417
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "SS-sendCatCmd: sending CAT_CMD_ACTION_3"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2418
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2419
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.command_4"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2420
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "SS-sendCatCmd: sending CAT_CMD_ACTION_4"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1151
    const-string v5, "CatService"

    const-string v6, "sendMenuSelection SET_UP_MENU"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1156
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1157
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1160
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1163
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1164
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1165
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1166
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1167
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1170
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1171
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1172
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1173
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1176
    if-eqz p2, :cond_0

    .line 1177
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1178
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1179
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1182
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1185
    .local v3, "rawData":[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 1186
    .local v2, "len":I
    int-to-byte v5, v2

    aput-byte v5, v3, v8

    .line 1188
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "hexString":Ljava/lang/String;
    const-string v5, "CatService"

    const-string v6, "sendMenuSelection before  mCmdIf.sendEnvelope(hexString, null);"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1192
    const-string v5, "CatService"

    const-string v6, "sendMenuSelection before  mCmdIf.sendEnvelope(hexString, null);"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/16 v5, 0xf

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 1194
    const-string v5, "[Reset Disable Display Text flag because MENU_SELECTION"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    .line 1196
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    const/4 v3, 0x2

    .line 1030
    if-nez p1, :cond_0

    .line 1031
    const-string v6, "SS-sendTR: cmdDet is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    :goto_0
    return-void

    .line 1034
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SS-sendTR: command type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1037
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1038
    .local v1, "cmdInput":Lcom/android/internal/telephony/cat/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_1

    .line 1039
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 1043
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1044
    .local v5, "tag":I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_2

    .line 1045
    or-int/lit16 v5, v5, 0x80

    .line 1047
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1048
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1049
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1050
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1051
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1060
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1061
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1062
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1063
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1064
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1067
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1068
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1069
    if-eqz p3, :cond_4

    .line 1070
    .local v3, "length":I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1071
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1074
    if-eqz p3, :cond_3

    .line 1075
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1079
    :cond_3
    if-eqz p5, :cond_5

    .line 1080
    const-string v6, "SS-sendTR: write response data into TR"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1086
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1087
    .local v4, "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1069
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "rawData":[B
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 1083
    .restart local v3    # "length":I
    :cond_5
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method private unregisterPowerOnSequenceObserver()V
    .locals 2

    .prologue
    .line 2440
    const-string v0, "call unregisterPowerOnSequenceObserver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2441
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2443
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 2445
    return-void
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 4
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    const/4 v1, 0x0

    .line 1931
    const/4 v0, 0x0

    .line 1932
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_1

    .line 1934
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1935
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-validateResponse: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v0

    .line 1941
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1934
    goto :goto_0

    .line 1940
    :cond_1
    const-string v2, "SS-validateResponse: mCurrentCmd is null"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v6, 0x1

    .line 1199
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    .line 1200
    .local v0, "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    const/4 v2, 0x0

    .line 1202
    .local v2, "tag":I
    if-eqz v0, :cond_4

    .line 1203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS-eventDownload: event is CALL_DISCONNECTED.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsFarEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsFarEnd:I

    if-ne v6, v4, :cond_1

    const/16 v4, 0x83

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1205
    const/16 v4, 0x81

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1206
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    .line 1207
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1208
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1209
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1210
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    if-nez v4, :cond_2

    .line 1211
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v2, v4, 0x80

    .line 1212
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1213
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1230
    :cond_0
    :goto_1
    return-void

    .line 1204
    :cond_1
    const/16 v4, 0x82

    goto :goto_0

    .line 1214
    :cond_2
    const/16 v4, 0xff

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    if-eq v4, v5, :cond_3

    .line 1215
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v2, v4, 0x80

    .line 1216
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1217
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1218
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 1219
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    mul-int/lit8 v5, v1, 0x8

    shr-int/2addr v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 1220
    .local v3, "temp":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS-eventDownload:cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    mul-int/lit8 v5, v1, 0x8

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1218
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1224
    .end local v1    # "i":I
    .end local v3    # "temp":I
    :cond_3
    const-string v4, "SS-eventDownload:no cause value"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1227
    :cond_4
    const-string v4, "SS-eventDownload:X null evdlcallInfo"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method cancelTimeOut(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 494
    const-string v0, "CatService: dispose"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvdlCall(Landroid/os/Handler;)V

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 506
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 510
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 2

    .prologue
    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmdMessage, command type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2470
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0

    .line 2469
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 2474
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1666
    const/16 v18, 0x0

    .line 1667
    .local v18, "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/4 v7, 0x0

    .line 1668
    .local v7, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/16 v25, 0x0

    .line 1669
    .local v25, "ret":I
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SS-handleMessage: msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1900
    :pswitch_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized CAT command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1675
    :pswitch_1
    const-string v2, "ril message arrived"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1676
    const/16 v19, 0x0

    .line 1677
    .local v19, "data":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1678
    .local v22, "flag":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1679
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1680
    .local v15, "ar":Landroid/os/AsyncResult;
    if-eqz v15, :cond_0

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1682
    :try_start_0
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1685
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isSetUpMenuCmd(Ljava/lang/String;)Z

    move-result v23

    .line 1686
    .local v23, "isValid":Z
    if-eqz v23, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim1:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_2

    .line 1687
    const-string v2, "ril message arrived : save data to db 1"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst1:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    const/16 v22, 0x1

    .line 1716
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v23    # "isValid":Z
    :cond_0
    :goto_0
    new-instance v26, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 1717
    .local v26, "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/RilMessage;->setSetUpMenuFromMD(Z)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1902
    .end local v19    # "data":Ljava/lang/String;
    .end local v22    # "flag":Z
    .end local v26    # "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    :cond_1
    :goto_1
    :pswitch_2
    return-void

    .line 1691
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    .restart local v19    # "data":Ljava/lang/String;
    .restart local v22    # "flag":Z
    .restart local v23    # "isValid":Z
    :cond_2
    if-eqz v23, :cond_3

    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim2:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_3

    .line 1692
    const-string v2, "ril message arrived : save data to db 2"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst2:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1695
    const/16 v22, 0x1

    goto :goto_0

    .line 1696
    :cond_3
    if-eqz v23, :cond_4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim3:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_4

    .line 1697
    const-string v2, "ril message arrived : save data to db 3"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst3:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1700
    const/16 v22, 0x1

    goto :goto_0

    .line 1701
    :cond_4
    if-eqz v23, :cond_0

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceSim4:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_0

    .line 1702
    const-string v2, "ril message arrived : save data to db 4"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInst4:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1705
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1711
    .end local v23    # "isValid":Z
    :catch_0
    move-exception v20

    .line 1712
    .local v20, "e":Ljava/lang/ClassCastException;
    goto :goto_1

    .line 1721
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "data":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    .end local v22    # "flag":Z
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v3, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_1

    .line 1726
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto/16 :goto_1

    .line 1729
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 1732
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->handleEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 1735
    :pswitch_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    goto/16 :goto_1

    .line 1738
    :pswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1739
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1742
    .restart local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_5

    .line 1744
    const-string v2, "[BIP]"

    const-string v3, "SS-handleMessage: skip open channel response because current cmd is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1747
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_6

    .line 1749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 1751
    const-string v2, "[BIP]"

    const-string v3, "SS-handleMessage: skip open channel response because current cmd type is not OPEN_CHANNEL"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1755
    :cond_6
    if-nez v25, :cond_7

    .line 1756
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1758
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v2, "[BIP]"

    const-string v3, "SS-handleMessage: open channel successfully"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1760
    :cond_7
    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_8

    .line 1761
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1763
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v2, "[BIP]"

    const-string v3, "SS-handleMessage: open channel with modified parameters"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1766
    :cond_8
    const/4 v2, 0x6

    move/from16 v0, v25

    if-ne v0, v2, :cond_9

    .line 1767
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1769
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v2, "[BIP]"

    const-string v3, "SS-handleMessage: ME is busy on call"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1774
    :cond_9
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1776
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v2, "[BIP]"

    const-string v3, "SS-handleMessage: open channel failed"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1781
    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1782
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    .line 1783
    .local v27, "size":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1784
    .restart local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    new-instance v7, Lcom/android/internal/telephony/cat/SendDataResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move/from16 v0, v27

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1785
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v25, :cond_a

    .line 1786
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1787
    :cond_a
    const/4 v2, 0x7

    move/from16 v0, v25

    if-ne v0, v2, :cond_b

    .line 1788
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1791
    :cond_b
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1795
    .end local v27    # "size":I
    :pswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1796
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1797
    .restart local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    move-object/from16 v17, v0

    .line 1798
    .local v17, "buffer":[B
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    move/from16 v24, v0

    .line 1800
    .local v24, "remainingCount":I
    new-instance v7, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 1801
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v25, :cond_c

    .line 1802
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1803
    :cond_c
    const/16 v2, 0x9

    move/from16 v0, v25

    if-ne v0, v2, :cond_d

    .line 1804
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1807
    :cond_d
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1811
    .end local v17    # "buffer":[B
    .end local v24    # "remainingCount":I
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1812
    .restart local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_e

    .line 1813
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1814
    :cond_e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_f

    .line 1815
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1817
    :cond_f
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 1818
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1823
    :pswitch_c
    const/16 v16, 0x0

    .line 1824
    .local v16, "arrList":Ljava/util/ArrayList;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1825
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1826
    .restart local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    move-object/from16 v16, v0

    .end local v16    # "arrList":Ljava/util/ArrayList;
    check-cast v16, Ljava/util/ArrayList;

    .line 1828
    .restart local v16    # "arrList":Ljava/util/ArrayList;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SS-handleCmdResponse: MSG_ID_GET_CHANNEL_STATUS_DONE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    new-instance v7, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;-><init>(Ljava/util/ArrayList;)V

    .line 1830
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1833
    .end local v16    # "arrList":Ljava/util/ArrayList;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    check-cast v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1834
    .restart local v18    # "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V

    .line 1836
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SS-handleMessage: timeout for ConnMgr intent. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 1841
    :pswitch_e
    const-string v2, "[BIP]"

    const-string v3, "SS-handleMessage: timeout for ConnMgr RETRY. "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipMgr:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->reOpenChannel()V

    goto/16 :goto_1

    .line 1845
    :pswitch_f
    const-string v2, "SIM ready. Reporting STK service running now..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setStkEvdlCallByAP(ILandroid/os/Message;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1856
    :pswitch_10
    const-string v2, "[IVSR cancel IVSR flag"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1857
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    goto/16 :goto_1

    .line 1862
    :pswitch_11
    const-string v2, "RIL event download for call."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1863
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1864
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1865
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    if-eqz v15, :cond_1

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1866
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v21, v2

    check-cast v21, [I

    .line 1867
    .local v21, "evdlCalldata":[I
    new-instance v8, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    const/4 v2, 0x0

    aget v9, v21, v2

    const/4 v2, 0x1

    aget v10, v21, v2

    const/4 v2, 0x2

    aget v11, v21, v2

    const/4 v2, 0x3

    aget v12, v21, v2

    const/4 v2, 0x4

    aget v13, v21, v2

    const/4 v2, 0x5

    aget v14, v21, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;-><init>(IIIIII)V

    .line 1872
    .local v8, "eventDownloadCallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    const/16 v2, 0xff

    iget v3, v8, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    if-le v2, v3, :cond_11

    .line 1873
    iget v2, v8, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, v8, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    .line 1877
    :goto_2
    const/4 v2, 0x0

    aget v2, v21, v2

    if-nez v2, :cond_12

    .line 1878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    if-lez v2, :cond_10

    .line 1880
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 1881
    const/16 v2, 0x16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(ILjava/lang/Object;)V

    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumEventDownloadCallConn --.["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1883
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 1894
    :cond_10
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evdl data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v21, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v21, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v21, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, v21, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, v21, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1875
    :cond_11
    const/16 v2, 0xff

    iput v2, v8, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    goto/16 :goto_2

    .line 1886
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1887
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    if-lez v2, :cond_10

    .line 1888
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 1889
    const/16 v2, 0x17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(ILjava/lang/Object;)V

    .line 1890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumEventDownloadCallDisConn --.["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1891
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto/16 :goto_3

    .line 1670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_f
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public isCallDisConnReceived()Z
    .locals 1

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 1906
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1912
    :goto_0
    monitor-exit p0

    return-void

    .line 1910
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1911
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1906
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDBHandler(I)V
    .locals 3
    .param p1, "sim_id"    # I

    .prologue
    .line 1926
    monitor-enter p0

    const/16 v1, 0xb

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1927
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    monitor-exit p0

    return-void

    .line 1926
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 1915
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1921
    :goto_0
    monitor-exit p0

    return-void

    .line 1919
    :cond_0
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1920
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1915
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAllCallDisConn(Z)V
    .locals 0
    .param p1, "isDisConn"    # Z

    .prologue
    .line 2510
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    .line 2512
    return-void
.end method

.method startTimeOut(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "delay"    # J

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    return-void
.end method

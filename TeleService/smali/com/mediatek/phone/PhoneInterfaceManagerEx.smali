.class public Lcom/mediatek/phone/PhoneInterfaceManagerEx;
.super Lcom/mediatek/common/telephony/ITelephonyEx$Stub;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;,
        Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;,
        Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;,
        Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;,
        Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;,
        Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;,
        Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;,
        Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE_CHANNEL:I = 0x13

.field private static final CMD_EXCHANGE_APDU:I = 0xf

.field private static final CMD_GET_ATR:I = 0x17

.field private static final CMD_GET_SCA_DONE:I = 0xc

.field private static final CMD_HANDLE_GET_SCA:I = 0xb

.field private static final CMD_HANDLE_NEIGHBORING_CELL:I = 0x1b

.field private static final CMD_HANDLE_SET_SCA:I = 0xd

.field private static final CMD_OPEN_CHANNEL:I = 0x11

.field private static final CMD_OPEN_CHANNEL_WITH_SW:I = 0x19

.field private static final CMD_SET_SCA_DONE:I = 0xe

.field private static final CMD_SIM_IO:I = 0x15

.field private static final DBG:Z = true

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x14

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x10

.field private static final EVENT_GET_ATR_DONE:I = 0x18

.field private static final EVENT_NEIGHBORING_CELL_DONE:I = 0x1c

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x12

.field private static final EVENT_OPEN_CHANNEL_WITH_SW_DONE:I = 0x1a

.field private static final EVENT_SIM_IO_DONE:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInterfaceManagerEx"

.field public static final NETWORK_LOCK_TOTAL_COUNT:I = 0x5

.field public static final QUERY_SIMME_LOCK_RESULT:Ljava/lang/String; = "com.android.phone.QUERY_SIMME_LOCK_RESULT"

.field public static final SIMME_LOCK_LEFT_COUNT:Ljava/lang/String; = "com.android.phone.SIMME_LOCK_LEFT_COUNT"

.field public static final VERIFY_INCORRECT_PASSWORD:I = 0x1

.field public static final VERIFY_RESULT_EXCEPTION:I = 0x2

.field public static final VERIFY_RESULT_PASS:I

.field private static m3GSwitchLockCounter:I

.field private static sInstance:Lcom/mediatek/phone/PhoneInterfaceManagerEx;


# instance fields
.field private ITEL_PROPERTY_ICC_OPERATOR_ISO_COUNTRY:[Ljava/lang/String;

.field private PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

.field private m3GSwitchLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAdnInfoThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

.field mApp:Lcom/android/phone/PhoneGlobals;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mLastError:[I

.field mLteDcPhone:Lcom/android/internal/telephony/gsm/LteDcPhone;

.field mMainThreadHandler:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

.field private mMessengerWrapperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 225
    invoke-direct {p0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLocks:Ljava/util/ArrayList;

    .line 186
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I

    .line 193
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "gsm.sim.operator.iso-country"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.operator.iso-country.2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.operator.iso-country.3"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.operator.iso-country.4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->ITEL_PROPERTY_ICC_OPERATOR_ISO_COUNTRY:[Ljava/lang/String;

    .line 200
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "iphonesubinfo"

    aput-object v1, v0, v3

    const-string v1, "iphonesubinfo2"

    aput-object v1, v0, v4

    const-string v1, "iphonesubinfo3"

    aput-object v1, v0, v5

    const-string v1, "iphonesubinfo4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 2075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMessengerWrapperList:Ljava/util/ArrayList;

    .line 226
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 227
    iput-object p2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 228
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 229
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;)V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    .line 230
    invoke-direct {p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->publish()V

    .line 231
    return-void

    .line 186
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/phone/PhoneInterfaceManagerEx;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private checkIfCallerIsSelfOrForegoundUser()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1953
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-ne v8, v9, :cond_0

    move v6, v5

    .line 1954
    .local v6, "self":Z
    :goto_0
    if-nez v6, :cond_2

    .line 1957
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1958
    .local v0, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1962
    .local v3, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1963
    .local v2, "foregroundUser":I
    if-ne v2, v0, :cond_1

    .line 1964
    .local v5, "ok":Z
    :goto_1
    const-string v7, "PhoneInterfaceManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfCallerIsSelfOrForegoundUser: foregroundUser="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callingUser="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ok="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    .end local v0    # "callingUser":I
    .end local v2    # "foregroundUser":I
    .end local v3    # "ident":J
    :goto_2
    const-string v7, "PhoneInterfaceManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfCallerIsSelfOrForegoundUser: ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    return v5

    .end local v5    # "ok":Z
    .end local v6    # "self":Z
    :cond_0
    move v6, v7

    .line 1953
    goto :goto_0

    .restart local v0    # "callingUser":I
    .restart local v2    # "foregroundUser":I
    .restart local v3    # "ident":J
    .restart local v6    # "self":Z
    :cond_1
    move v5, v7

    .line 1963
    goto :goto_1

    .line 1966
    .end local v2    # "foregroundUser":I
    :catch_0
    move-exception v1

    .line 1967
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "PhoneInterfaceManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfCallerIsSelfOrForegoundUser: Exception ex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1968
    const/4 v5, 0x0

    .line 1970
    .restart local v5    # "ok":Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "ok":Z
    :catchall_0
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 1973
    .end local v0    # "callingUser":I
    .end local v3    # "ident":J
    :cond_2
    const-string v7, "PhoneInterfaceManagerEx"

    const-string v8, "checkIfCallerIsSelfOrForegoundUser: is self"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 v5, 0x1

    .restart local v5    # "ok":Z
    goto :goto_2
.end method

.method private exchangeIccApdu(IIIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "simSlotId"    # I

    .prologue
    .line 1367
    const-string v1, "NFC test for exchangeIccApdu"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> exchangeApdu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1371
    const/4 v11, 0x0

    .line 1373
    .local v11, "simId":I
    move/from16 v11, p8

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NFC test for exchangeIccApdu: SimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1377
    const/16 v14, 0xf

    new-instance v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v11}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v14, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1380
    .local v12, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "< exchangeApdu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1381
    iget v1, v12, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v12, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1383
    .local v13, "s":Ljava/lang/String;
    iget-object v1, v12, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v1, :cond_0

    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1385
    :cond_0
    return-object v13
.end method

.method public static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/phone/PhoneInterfaceManagerEx;
    .locals 4
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 214
    const-class v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-object v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sInstance:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sInstance:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 220
    :goto_0
    sget-object v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sInstance:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    monitor-exit v1

    return-object v0

    .line 218
    :cond_0
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sInstance:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgrEx] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgrEx] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 236
    const-string v0, "phoneEx"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 237
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 674
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    invoke-virtual {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 675
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 678
    :cond_0
    new-instance v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 679
    .local v1, "request":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 680
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 683
    monitor-enter v1

    .line 684
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 686
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v2

    goto :goto_0

    .line 691
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 692
    iget-object v2, v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 691
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public aquire3GSwitchLock()I
    .locals 5

    .prologue
    .line 1737
    new-instance v1, Ljava/lang/Integer;

    sget v2, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLockCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLockCounter:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1738
    .local v1, "lock":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1742
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1744
    const-string v2, "PhoneInterfaceManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aquire 3G lock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public closeIccLogicalChannel(II)Z
    .locals 7
    .param p1, "channel"    # I
    .param p2, "simSlotId"    # I

    .prologue
    .line 1419
    const-string v4, "NFC test for closeIccLogicalChannel"

    invoke-direct {p0, v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1421
    const/4 v2, 0x0

    .line 1423
    .local v2, "simId":I
    move v2, p2

    .line 1425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> closeIccLogicalChannel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",SimId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1427
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1428
    .local v1, "extraInfo":Landroid/os/Bundle;
    const-string v4, "Channel"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1429
    const-string v4, "SimSlotId"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1431
    const/16 v4, 0x13

    invoke-direct {p0, v4, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1432
    .local v0, "err":Ljava/lang/Integer;
    const-string v4, "PhoneInterfaceManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "< closeIccLogicalChannel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1434
    .local v3, "strrr":Ljava/lang/String;
    const-string v4, "PhoneInterfaceManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "< closeIccLogicalChannel2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 1436
    const/4 v4, 0x1

    .line 1437
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public dataConnectivityDecideSimId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2289
    const/4 v0, 0x0

    return v0
.end method

.method public get3GCapabilitySIM()I
    .locals 1

    .prologue
    .line 1700
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 1703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSwitchAllowed3GSlots()I

    move-result v0

    return v0
.end method

.method public getActiveModemType()I
    .locals 1

    .prologue
    .line 2214
    const-string v0, "[getActiveModemType]"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 2215
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v0

    return v0
.end method

.method public getActivePhoneType(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2010
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivePhoneType simId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 2015
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2017
    const-string v1, "getActivePhoneType: wrong simId"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 2024
    :cond_0
    :goto_0
    return v0

    .line 2022
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getAdnStorageInfo(I)[I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 871
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdnStorageInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    if-nez v0, :cond_0

    .line 873
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "getAdnStorageInfo new thread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p1, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;-><init>(ILcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    .line 875
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    invoke-virtual {v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->start()V

    .line 880
    :goto_0
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    invoke-virtual {v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->GetAdnStorageInfo()[I

    move-result-object v0

    return-object v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->setSimId(I)V

    .line 878
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "getAdnStorageInfo old thread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllCellInfo(I)Ljava/util/List;
    .locals 5
    .param p1, "simId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1927
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->checkIfCallerIsSelfOrForegoundUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1938
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v2, "getAllCellInfo: is active user"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 1942
    :goto_1
    return-object v1

    .line 1929
    :catch_0
    move-exception v0

    .line 1933
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1941
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v2, "PhoneInterfaceManagerEx"

    const-string v3, "getAllCellInfo: suppress non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAvailableNetworksLteDc(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLteDcPhone:Lcom/android/internal/telephony/gsm/LteDcPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 2275
    return-void
.end method

.method public getCallState(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1621
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallState simId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1625
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1627
    const-string v1, "getCallState: wrong slot Id"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1635
    :cond_0
    :goto_0
    return v0

    .line 1632
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v0

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "simId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1905
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1915
    .local v0, "data":Landroid/os/Bundle;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1916
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1921
    :goto_1
    return-object v0

    .line 1907
    .end local v0    # "data":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1911
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1918
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "data":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public getCurrentRegion()I
    .locals 1

    .prologue
    .line 2234
    const-string v0, "[PhoneInterfaceManagerEx][getCurrentRegion]"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 2238
    const/4 v0, -0x1

    return v0
.end method

.method public getDataActivity(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataActivityGemini(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataState(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    return v0
.end method

.method public getDataStateGemini(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    return v0
.end method

.method public getIccAtr(I)Ljava/lang/String;
    .locals 5
    .param p1, "simSlotId"    # I

    .prologue
    .line 1450
    const-string v2, "NFC test for getIccAtr"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1452
    const/4 v1, 0x0

    .line 1454
    .local v1, "simId":I
    move v1, p1

    .line 1457
    const-string v2, "PhoneInterfaceManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> getIccAtr ,SimId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/16 v2, 0x17

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v2, v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1459
    .local v0, "response":Ljava/lang/String;
    const-string v2, "PhoneInterfaceManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< getIccAtr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-object v0
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccCardType  simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsAdapterEnable()Z
    .locals 1

    .prologue
    .line 2184
    const/4 v0, 0x0

    return v0
.end method

.method public getInternationalCardType(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1524
    const/4 v0, -0x1

    return v0
.end method

.method public getLastError(I)I
    .locals 2
    .param p1, "simSlotId"    # I

    .prologue
    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastError parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLocatedMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1859
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    :goto_0
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0xc

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1884
    :goto_1
    return-object v1

    .line 1861
    :catch_0
    move-exception v2

    .line 1866
    .local v2, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v1}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1875
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v1, 0x0

    .line 1878
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/16 v3, 0x1b

    :try_start_1
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v3, v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1880
    :catch_1
    move-exception v2

    .line 1881
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "PhoneInterfaceManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNetworkCountryIsoLteDc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2269
    const-string v0, "gsm.operator.iso-country.ltedc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkHideState(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getNetworkHideState()I

    move-result v0

    return v0
.end method

.method public getNetworkOperatorLteDc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2257
    const-string v0, "gsm.operator.numeric.ltedc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameLteDc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2261
    const-string v0, "gsm.operator.alpha.ltedc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkTypeLteDc(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLteDcPhone:Lcom/android/internal/telephony/gsm/LteDcPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 2254
    return-void
.end method

.method public getScAddressGemini(I)Ljava/lang/String;
    .locals 6
    .param p1, "simId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1032
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "getScAddressGemini: enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 1038
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca Invalid sim id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :goto_0
    return-object v3

    .line 1042
    :cond_0
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    invoke-direct {v0, p0, v3, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Ljava/lang/String;I)V

    .line 1044
    .local v0, "addr":Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    new-instance v2, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;)V

    .line 1053
    .local v2, "sender":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1055
    :try_start_0
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca thread join"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_1
    const-string v3, "PhoneInterfaceManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScAddressGemini: exit with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->scAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v3, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->scAddr:Ljava/lang/String;

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v1

    .line 1058
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca throw interrupted exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    const-string v0, "gsm.serial"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1645
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1648
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1653
    return-object v0
.end method

.method public getServiceStateGemini(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1894
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1895
    .local v0, "data":Landroid/os/Bundle;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1896
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1900
    :goto_0
    return-object v0

    .line 1898
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getServiceStateLte()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 2243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2244
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLteDcPhone:Lcom/android/internal/telephony/gsm/LteDcPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2245
    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->ITEL_PROPERTY_ICC_OPERATOR_ISO_COUNTRY:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "PhoneInterfaceManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCountryIso simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "prop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    return-object v0
.end method

.method public getSimIndicatorState(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicatorState()I

    move-result v0

    return v0
.end method

.method public getSmsDefaultSim()I
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSmsDefaultSim()I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1996
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "getSubscriberId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 1999
    .local v1, "phoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2004
    .end local v1    # "phoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_0
    return-object v2

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2002
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2004
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasIccCard  simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 2284
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "function invokeOemRilRequestStrings not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const/4 v0, 0x0

    return-object v0
.end method

.method public is3GSwitchLocked()Z
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->is3GSwitchManualChange3GAllowed()Z

    move-result v0

    return v0
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 1

    .prologue
    .line 1796
    const/4 v0, 0x0

    return v0
.end method

.method public isAirplanemodeAvailableNow()Z
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSwitching3GCapability()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isFdnEnabled(I)Z
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFdnEnabled  simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingLteDc()Z
    .locals 2

    .prologue
    .line 2265
    const-string v0, "gsm.operator.isroaming.ltedc"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPhbReady(I)Z
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 1000
    const-string v0, "false"

    .line 1001
    .local v0, "strPhbReady":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1002
    const-string v1, "gsm.sim.ril.phbready.2"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isPhbReady] sim id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPhbReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1013
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1003
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 1004
    const-string v1, "gsm.sim.ril.phbready.3"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1005
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 1006
    const-string v1, "gsm.sim.ril.phbready.4"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1008
    :cond_2
    const-string v1, "gsm.sim.ril.phbready"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isRadioOn(I)Z
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v3, 0x3

    .line 1839
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1840
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v0

    .line 1851
    :goto_0
    return v0

    .line 1842
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 1843
    const/4 v0, 0x0

    .line 1844
    .local v0, "isOn":Z
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLteDcPhone:Lcom/android/internal/telephony/gsm/LteDcPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 1846
    :cond_1
    const/4 v0, 0x1

    .line 1848
    :cond_2
    const-string v1, "PhoneInterfaceManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioOn(int simId) for MMDC is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1851
    .end local v0    # "isOn":Z
    :cond_3
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isTestIccCard(I)Z
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1288
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "imsi":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTestIccCard  simId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", IMSI = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1295
    if-eqz v0, :cond_0

    .line 1296
    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00101"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1298
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;I)I
    .locals 6
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "simSlotId"    # I

    .prologue
    .line 1401
    const-string v3, "NFC test for openIccLogicalChannel"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1403
    const/4 v2, 0x0

    .line 1405
    .local v2, "simId":I
    move v2, p2

    .line 1407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> openIccLogicalChannel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",SimId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1409
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1410
    .local v1, "extraInfo":Landroid/os/Bundle;
    const-string v3, "AID"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v3, "SimSlotId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1413
    const/16 v3, 0x11

    invoke-direct {p0, v3, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1414
    .local v0, "channel":Ljava/lang/Integer;
    const-string v3, "PhoneInterfaceManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "< openIccLogicalChannel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method public openIccLogicalChannelWithSw(Ljava/lang/String;I)[B
    .locals 20
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "simSlotId"    # I

    .prologue
    .line 1471
    const-string v2, "NFC test for openIccLogicalChannelWithSw"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1473
    const/4 v12, 0x0

    .line 1475
    .local v12, "simId":I
    move/from16 v12, p2

    .line 1478
    const-string v2, "PhoneInterfaceManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> openIccLogicalChannelWithSw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",SimId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const/16 v19, 0x19

    new-instance v2, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v12}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1482
    .local v16, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_0

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-nez v2, :cond_0

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I

    const/4 v3, 0x0

    aput v3, v2, p2

    .line 1491
    :goto_0
    const/16 v17, 0x0

    .line 1492
    .local v17, "result":[B
    const/4 v15, 0x2

    .line 1495
    .local v15, "length":I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1496
    const/4 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 1497
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v17, v2

    .line 1498
    const-string v2, "< openIccLogicalChannelWithSw 0"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    move-object/from16 v18, v17

    .line 1517
    .end local v17    # "result":[B
    .local v18, "result":[B
    :goto_1
    return-object v18

    .line 1484
    .end local v15    # "length":I
    .end local v18    # "result":[B
    :cond_0
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_1

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const/16 v3, 0x84

    if-ne v2, v3, :cond_1

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I

    const/4 v3, 0x2

    aput v3, v2, p2

    goto :goto_0

    .line 1486
    :cond_1
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_2

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_2

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I

    const/4 v3, 0x3

    aput v3, v2, p2

    goto :goto_0

    .line 1489
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLastError:[I

    const/4 v3, 0x1

    aput v3, v2, p2

    goto :goto_0

    .line 1502
    .restart local v15    # "length":I
    .restart local v17    # "result":[B
    :cond_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v2, :cond_4

    .line 1503
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v2, v2

    add-int/lit8 v15, v2, 0x2

    .line 1504
    new-array v0, v15, [B

    move-object/from16 v17, v0

    .line 1505
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v5, v5

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1509
    :goto_2
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v3, v3

    aput-byte v3, v17, v2

    .line 1510
    add-int/lit8 v2, v15, -0x2

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v3, v3

    aput-byte v3, v17, v2

    .line 1512
    const-string v13, ""

    .line 1513
    .local v13, "funLog":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v14, v2, :cond_5

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v17, v14

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1513
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1507
    .end local v13    # "funLog":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_4
    new-array v0, v15, [B

    move-object/from16 v17, v0

    goto :goto_2

    .line 1516
    .restart local v13    # "funLog":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< openIccLogicalChannelWithSw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    move-object/from16 v18, v17

    .line 1517
    .end local v17    # "result":[B
    .restart local v18    # "result":[B
    goto/16 :goto_1
.end method

.method public queryNetworkLock(II)Landroid/os/Bundle;
    .locals 3
    .param p1, "category"    # I
    .param p2, "simId"    # I

    .prologue
    .line 835
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v2, "queryNetworkLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;

    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 841
    .local v0, "queryNetworkLockState":Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;
    invoke-virtual {v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->start()V

    .line 842
    invoke-virtual {v0, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->queryNetworkLock(I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public registerForImsDisableDone(ILandroid/os/IBinder;I)V
    .locals 4
    .param p1, "simId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "what"    # I

    .prologue
    .line 2106
    if-eqz p2, :cond_0

    .line 2107
    const-string v1, "PhoneInterfaceManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForImsDisableDone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Landroid/os/IBinder;)V

    .line 2109
    .local v0, "messengerWrapper":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMessengerWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    .end local v0    # "messengerWrapper":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;
    :cond_0
    return-void
.end method

.method public release3GSwitchLock(I)Z
    .locals 11
    .param p1, "lockId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1756
    const/4 v4, 0x0

    .line 1757
    .local v4, "result":Z
    const/4 v0, 0x0

    .line 1758
    .local v0, "index":I
    iget-object v6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1759
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1760
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1761
    .local v5, "storedLockId":I
    if-ne v5, p1, :cond_3

    .line 1762
    iget-object v6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1763
    .local v3, "removedLockId":I
    if-ne p1, v3, :cond_1

    move v4, v7

    .line 1764
    :goto_1
    const-string v6, "PhoneInterfaceManagerEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removed 3G lockId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    new-instance v1, Landroid/content/Intent;

    sget-object v6, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1767
    .local v1, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    :goto_2
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1768
    iget-object v6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1773
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "removedLockId":I
    .end local v5    # "storedLockId":I
    :cond_0
    return v4

    .restart local v3    # "removedLockId":I
    .restart local v5    # "storedLockId":I
    :cond_1
    move v4, v8

    .line 1763
    goto :goto_1

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    move v7, v8

    .line 1767
    goto :goto_2

    .line 1771
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "removedLockId":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1772
    goto :goto_0
.end method

.method public repollIccStateForNetworkLock(IZ)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "needIntent"    # Z

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IccCard;->repollIccStateForModemSmlChangeFeatrue(Z)V

    .line 1111
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 1716
    const/4 v0, 0x0

    .line 1717
    .local v0, "result":Z
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1718
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 1719
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    .line 1720
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 1726
    .end local v1    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_0
    return v0

    .line 1722
    .restart local v1    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    const-string v2, "PhoneInterfaceManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone is not idle, cannot 3G switch ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1724
    .end local v1    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_1
    const-string v2, "PhoneInterfaceManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3G switch locked, cannot 3G switch ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->m3GSwitchLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCellInfoListRate(II)V
    .locals 1
    .param p1, "rateInMillis"    # I
    .param p2, "simId"    # I

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1948
    return-void
.end method

.method public setDataRoamingEnabled(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "simId"    # I

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1617
    return-void
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "simId"    # I

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1576
    return-void
.end method

.method public setImsEnable(IZ)V
    .locals 0
    .param p1, "simId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2073
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "simId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1223
    if-nez p2, :cond_0

    .line 1224
    const-string v2, "PhoneInterfaceManagerEx"

    const-string v3, "number = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :goto_0
    return v1

    .line 1227
    :cond_0
    if-ltz p3, :cond_1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-le p3, v2, :cond_2

    .line 1228
    :cond_1
    const-string v2, "PhoneInterfaceManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error simId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1233
    :cond_2
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v2, "setLine1Number"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;

    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, p3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 1236
    .local v0, "setMsisdn":Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;
    invoke-virtual {v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->start()V

    .line 1238
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public setLteDcPhone(Lcom/android/internal/telephony/gsm/LteDcPhone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/LteDcPhone;

    .prologue
    .line 2219
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLteDcPhone:Lcom/android/internal/telephony/gsm/LteDcPhone;

    .line 2220
    return-void
.end method

.method public setPreferredNetworkTypeLteDc(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mLteDcPhone:Lcom/android/internal/telephony/gsm/LteDcPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/LteDcPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2250
    return-void
.end method

.method public setScAddressGemini(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 1070
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "setScAddressGemini: enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    .line 1076
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca Invalid sim id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :goto_0
    return-void

    .line 1080
    :cond_0
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Ljava/lang/String;I)V

    .line 1082
    .local v0, "addr":Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    new-instance v2, Lcom/mediatek/phone/PhoneInterfaceManagerEx$2;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$2;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;)V

    .line 1091
    .local v2, "sender":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1093
    :try_start_0
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca thread join"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :goto_1
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "setScAddressGemini: exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca throw interrupted exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;I)I
    .locals 3
    .param p1, "strPasswd"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 848
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v2, "supplyNetworkDepersonalization"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;

    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 854
    .local v0, "supplyNetworkLock":Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;
    invoke-virtual {v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->start()V

    .line 855
    invoke-virtual {v0, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$UnlockSim;->supplyNetworkLock(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "simSlotId"    # I

    .prologue
    .line 1390
    const-string v0, "NFC test for transmitIccBasicChannel"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1391
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->exchangeIccApdu(IIIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "simSlotId"    # I

    .prologue
    .line 1396
    const-string v0, "NFC test for transmitIccLogicalChannel"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1397
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->exchangeIccApdu(IIIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;I)[B
    .locals 14
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;
    .param p7, "simSlotId"    # I

    .prologue
    .line 1306
    const-string v1, "NFC test for transmitIccSimIO"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exchange SIM_IO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1310
    const/4 v9, 0x0

    .line 1312
    .local v9, "simId":I
    move/from16 v9, p7

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NFC test for transmitIccSimIO: SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1316
    const/16 v13, 0x15

    new-instance v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;

    const/4 v4, -0x1

    move v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;I)V

    invoke-direct {p0, v13, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1320
    .local v11, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exchange SIM_IO [R]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1321
    const/4 v12, 0x0

    .line 1322
    .local v12, "result":[B
    const/4 v10, 0x2

    .line 1323
    .local v10, "length":I
    iget-object v1, v11, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, v11, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v1, v1

    add-int/lit8 v10, v1, 0x2

    .line 1325
    new-array v12, v10, [B

    .line 1326
    iget-object v1, v11, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v11, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v4, v4

    invoke-static {v1, v2, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1328
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exchange SIM_IO [L] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1329
    add-int/lit8 v1, v10, -0x1

    iget v2, v11, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v2, v2

    aput-byte v2, v12, v1

    .line 1330
    add-int/lit8 v1, v10, -0x2

    iget v2, v11, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v2, v2

    aput-byte v2, v12, v1

    .line 1331
    return-object v12

    .line 1327
    :cond_0
    new-array v12, v10, [B

    goto :goto_0
.end method

.method public transmitIccSimIoEx(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 16
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "simSlotId"    # I

    .prologue
    .line 1338
    const/4 v11, 0x0

    .line 1340
    .local v11, "simId":I
    move/from16 v11, p9

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exchange SIM_IO Gemini "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1345
    const/16 v15, 0x15

    new-instance v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;

    const/4 v4, -0x1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1350
    .local v13, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exchange SIM_IO Gemini [R]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1351
    const/4 v14, 0x0

    .local v14, "result":[B
    const/4 v12, 0x2

    .line 1352
    .local v12, "length":I
    iget-object v1, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v1, :cond_0

    .line 1353
    iget-object v1, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v1, v1

    add-int/lit8 v12, v1, 0x2

    .line 1354
    new-array v14, v12, [B

    .line 1355
    iget-object v1, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v4, v4

    invoke-static {v1, v2, v14, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1357
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exchange SIM_IO Gemini [L] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 1358
    add-int/lit8 v1, v12, -0x1

    iget v2, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v2, v2

    aput-byte v2, v14, v1

    .line 1359
    add-int/lit8 v1, v12, -0x2

    iget v2, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v2, v2

    aput-byte v2, v14, v1

    .line 1360
    return-object v14

    .line 1356
    :cond_0
    new-array v14, v12, [B

    goto :goto_0
.end method

.method public unregisterForImsDisableDone(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2143
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMessengerWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2144
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;

    .line 2146
    .local v1, "messengerWrapper":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;
    invoke-virtual {v1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 2176
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMessengerWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2180
    .end local v1    # "messengerWrapper":Lcom/mediatek/phone/PhoneInterfaceManagerEx$MessengerWrapper;
    :cond_1
    return-void
.end method

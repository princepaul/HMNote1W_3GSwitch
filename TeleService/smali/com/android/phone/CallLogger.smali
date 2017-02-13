.class Lcom/android/phone/CallLogger;
.super Ljava/lang/Object;
.source "CallLogger.java"


# static fields
.field private static final CALL_TYPE_VIDEO:I = 0x1

.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mCallLog:Lcom/android/phone/common/CallLogAsync;

.field private mIsCdmaCallWaitingReject:Z

.field private mIsComing:Z

.field private mPhoneType:I

.field private mVtCall:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    const-class v2, Lcom/android/phone/CallLogger;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    .line 62
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallLogger;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/common/CallLogAsync;)V
    .locals 1
    .param p1, "application"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "callLogAsync"    # Lcom/android/phone/common/CallLogAsync;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput v0, p0, Lcom/android/phone/CallLogger;->mVtCall:I

    .line 326
    iput v0, p0, Lcom/android/phone/CallLogger;->mPhoneType:I

    .line 327
    iput-boolean v0, p0, Lcom/android/phone/CallLogger;->mIsComing:Z

    .line 328
    iput-boolean v0, p0, Lcom/android/phone/CallLogger;->mIsCdmaCallWaitingReject:Z

    .line 69
    iput-object p1, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 70
    iput-object p2, p0, Lcom/android/phone/CallLogger;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    .line 71
    return-void
.end method

.method private addCallHistoryAsync(Ljava/lang/String;JJZI)V
    .locals 12
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "duration"    # J
    .param p6, "isSipCall"    # Z
    .param p7, "slotId"    # I

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    .line 476
    .local v10, "isEmergencyNumber":Z
    if-nez v10, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/CallLogger;->mIsComing:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/phone/CallLogger;->mVtCall:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-nez p6, :cond_0

    const-wide/16 v1, 0x2710

    cmp-long v1, p4, v1

    if-ltz v1, :cond_0

    const/4 v1, -0x1

    move/from16 v0, p7

    if-le v0, v1, :cond_0

    .line 478
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "countryISO":Ljava/lang/String;
    :try_start_0
    new-instance v11, Lcom/mediatek/phone/provider/CallHistoryAsync;

    invoke-direct {v11}, Lcom/mediatek/phone/provider/CallHistoryAsync;-><init>()V

    new-instance v1, Lcom/mediatek/phone/provider/CallHistoryAsync$AddCallArgs;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v8

    move-object v3, p1

    move-wide v5, p2

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/phone/provider/CallHistoryAsync$AddCallArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZ)V

    invoke-virtual {v11, v1}, Lcom/mediatek/phone/provider/CallHistoryAsync;->addCall(Lcom/mediatek/phone/provider/CallHistoryAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v4    # "countryISO":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 483
    .restart local v4    # "countryISO":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 485
    .local v9, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error!! - onDisconnect() Disk Full!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_0
.end method

.method private addFirewallLog(Ljava/lang/String;IJIJIII)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "presentation"    # I
    .param p3, "date"    # J
    .param p5, "reason"    # I
    .param p6, "duration"    # J
    .param p8, "index"    # I
    .param p9, "callType"    # I
    .param p10, "slotId"    # I

    .prologue
    const/4 v4, 0x1

    .line 537
    iget-object v2, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, p1, v4, p5, p10}, Lmiui/provider/ExtraTelephony;->monthReport(Landroid/content/Context;Ljava/lang/String;III)V

    .line 539
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 540
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-direct {p0, p2, p1}, Lcom/android/phone/CallLogger;->convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v2, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string v2, "data1"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 545
    const-string v2, "simid"

    iget-object v3, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v3, p10}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    iget-wide v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 546
    const-string v2, "mode"

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v2, "callType"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    invoke-static {p1, p5}, Lcom/android/phone/PhoneUtils;->updateRepeatedBlockedCall(Ljava/lang/String;I)V

    .line 556
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    const-string v3, "failed to add firewall log"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "presentation"    # I
    .param p2, "logNumber"    # Ljava/lang/String;

    .prologue
    .line 561
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p1, v0, :cond_1

    .line 562
    const-string p2, "-2"

    .line 569
    :cond_0
    :goto_0
    return-object p2

    .line 563
    :cond_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p1, v0, :cond_2

    .line 564
    const-string p2, "-3"

    goto :goto_0

    .line 565
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne p1, v0, :cond_0

    .line 567
    :cond_3
    const-string p2, "-1"

    goto :goto_0
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 334
    const-wide/16 v0, 0x0

    .line 335
    .local v0, "minutes":J
    const-wide/16 v2, 0x0

    .line 337
    .local v2, "seconds":J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    .line 338
    div-long v0, p1, v5

    .line 339
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 341
    :cond_0
    move-wide v2, p1

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v6, 0x7f0b02c8

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v6, 0x7f0b007b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/PhoneGlobals;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getCallArgs(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    .locals 15
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # J
    .param p9, "slotId"    # I

    .prologue
    .line 409
    const/4 v11, 0x0

    .line 411
    .local v11, "simIdEx":I
    const/4 v13, 0x0

    .line 412
    .local v13, "isSipCall":Z
    iget v2, p0, Lcom/android/phone/CallLogger;->mPhoneType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 413
    const/4 v13, 0x1

    .line 415
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v13, :cond_6

    .line 417
    :cond_1
    if-eqz v13, :cond_3

    .line 418
    const/4 v11, -0x2

    .line 454
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    iget-object v2, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v11}, Lcom/android/phone/common/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .local v1, "args":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    move-object v2, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move v8, v13

    move/from16 v9, p9

    .line 459
    invoke-direct/range {v2 .. v9}, Lcom/android/phone/CallLogger;->addCallHistoryAsync(Ljava/lang/String;JJZI)V

    .line 460
    return-object v1

    .line 420
    .end local v1    # "args":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    :cond_3
    const/4 v11, 0x0

    .line 421
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 422
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v12

    .line 423
    .local v12, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v12, :cond_5

    .line 424
    iget-wide v2, v12, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v11, v2

    .line 430
    .end local v12    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_4
    :goto_1
    sget-boolean v2, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v2, :cond_2

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for single card, simIdEx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    .restart local v12    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_5
    const/4 v11, 0x1

    goto :goto_1

    .line 438
    .end local v12    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_6
    invoke-static/range {p9 .. p9}, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 439
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    move/from16 v0, p9

    invoke-static {v2, v0}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v14

    .line 440
    .local v14, "si":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v14, :cond_7

    .line 441
    iget-wide v2, v14, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v11, v2

    .line 444
    .end local v14    # "si":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_7
    sget-boolean v2, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v2, :cond_2

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for dual SIM, simIdEx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getCallArgsForCdmaCallWaitingReject(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    .locals 13
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # J
    .param p9, "slotId"    # I

    .prologue
    .line 369
    sget-boolean v2, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v2, :cond_0

    .line 370
    const-string v2, "getCallArgsForCdmaCallWaitingReject"

    invoke-static {v2}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 373
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    sget-boolean v2, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v2, :cond_1

    .line 375
    const-string v2, "getCallArgsForCdmaCallWaitingReject, support gemini."

    invoke-static {v2}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 377
    :cond_1
    const/4 v11, 0x0

    .line 378
    .local v11, "cdmaSimId":I
    invoke-static/range {p9 .. p9}, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    move/from16 v0, p9

    invoke-static {v2, v0}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v12

    .line 381
    .local v12, "si":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v12, :cond_2

    .line 382
    iget-wide v2, v12, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v11, v2

    .line 385
    .end local v12    # "si":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    new-instance v1, Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    iget-object v2, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v11}, Lcom/android/phone/common/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 391
    .end local v11    # "cdmaSimId":I
    .local v1, "cdmaArgs":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    :goto_0
    return-object v1

    .line 388
    .end local v1    # "cdmaArgs":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    :cond_3
    new-instance v1, Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    iget-object v2, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/phone/common/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .restart local v1    # "cdmaArgs":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    goto :goto_0
.end method

.method public static getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 233
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 239
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 234
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 235
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v1, Landroid/net/Uri;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    goto :goto_0

    .line 237
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 259
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 280
    :goto_0
    if-nez v1, :cond_4

    .line 281
    const/4 v3, 0x0

    .line 293
    :goto_1
    return-object v3

    .line 267
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 271
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_3
    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 286
    .local v2, "presentation":I
    iget-object v3, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v3, p2, v1, v2}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "newNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 290
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v3, v1

    .line 293
    goto :goto_1
.end method

.method public static getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 308
    if-nez p1, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 315
    .local v0, "presentation":I
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 316
    :cond_1
    return v0

    .line 311
    .end local v0    # "presentation":I
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 312
    .restart local v0    # "presentation":I
    sget-boolean v1, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 320
    sget-object v0, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method private needToShowCallTime(Lcom/android/internal/telephony/Connection;J)Z
    .locals 11
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "duration"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 508
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x3e8

    div-long v9, p2, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 509
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 510
    const-string v6, "needToShowCallTime(), not conference call, show call time..."

    invoke-static {v6}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 531
    :goto_0
    return v5

    .line 513
    :cond_0
    move-wide v3, p2

    .line 514
    .local v3, "minDuration":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 515
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 516
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_2

    .line 517
    const-string v5, "needToShowCallTime(), still have active connection!"

    invoke-static {v5}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    move v5, v6

    .line 518
    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-gez v7, :cond_1

    .line 522
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    goto :goto_1

    .line 525
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_3
    cmp-long v7, p2, v3

    if-nez v7, :cond_4

    .line 526
    const-string v6, "needToShowCallTime(), current is the lastest connection in Conference call, show call time..."

    invoke-static {v6}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "minDuration":J
    :cond_4
    move v5, v6

    .line 531
    goto :goto_0
.end method


# virtual methods
.method public logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJIII)V
    .locals 27
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # J
    .param p9, "firewallType"    # I
    .param p10, "forwardedCall"    # I
    .param p11, "slotId"    # I

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v23

    .line 173
    .local v23, "isEmergencyNumber":Z
    invoke-static/range {p9 .. p9}, Lcom/android/phone/PhoneUtils;->isBlockedByAntiSpam(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    const/16 v26, 0x1

    .line 176
    .local v26, "skipCallLog":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v3, "mode_choose_antispam"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    .local v10, "index":I
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p5

    move/from16 v7, p9

    move-wide/from16 v8, p7

    move/from16 v11, p4

    move/from16 v12, p11

    .line 178
    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogger;->addFirewallLog(Ljava/lang/String;IJIJIII)V

    .line 187
    .end local v10    # "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    .line 192
    .local v25, "okToLogEmergencyNumber":Z
    if-eqz v23, :cond_0

    if-eqz v25, :cond_4

    :cond_0
    if-nez v26, :cond_4

    const/16 v24, 0x1

    .line 195
    .local v24, "isOkToLogThisCall":Z
    :goto_1
    if-eqz v24, :cond_2

    .line 196
    sget-boolean v2, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending Calllog entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallLogger;->mPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallLogger;->mIsCdmaCallWaitingReject:Z

    if-eqz v2, :cond_5

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move-wide/from16 v16, p5

    move-wide/from16 v18, p7

    move/from16 v20, p11

    .line 204
    invoke-direct/range {v11 .. v20}, Lcom/android/phone/CallLogger;->getCallArgsForCdmaCallWaitingReject(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    move-result-object v21

    .line 212
    .local v21, "args":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallLogger;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/phone/common/CallLogAsync;->addCall(Lcom/android/phone/common/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v21    # "args":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallLogger;->reset()V

    .line 220
    return-void

    .line 181
    .end local v24    # "isOkToLogThisCall":Z
    .end local v25    # "okToLogEmergencyNumber":Z
    .end local v26    # "skipCallLog":Z
    :cond_3
    const/16 v26, 0x0

    .restart local v26    # "skipCallLog":Z
    goto/16 :goto_0

    .line 192
    .restart local v25    # "okToLogEmergencyNumber":Z
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_1

    .restart local v24    # "isOkToLogThisCall":Z
    :cond_5
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move-wide/from16 v16, p5

    move-wide/from16 v18, p7

    move/from16 v20, p11

    .line 207
    invoke-direct/range {v11 .. v20}, Lcom/android/phone/CallLogger;->getCallArgs(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    move-result-object v21

    .restart local v21    # "args":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    goto :goto_2

    .line 213
    :catch_0
    move-exception v22

    .line 215
    .local v22, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error!! - logCall() Disk Full!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_3
.end method

.method public logCall(Lcom/android/internal/telephony/Connection;I)V
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "slotId"    # I

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 154
    .local v1, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->shouldAutoReject(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x5

    .line 162
    .local v0, "callLogType":I
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;II)V

    .line 163
    return-void

    .line 155
    .end local v0    # "callLogType":I
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "callLogType":I
    goto :goto_0
.end method

.method public logCall(Lcom/android/internal/telephony/Connection;II)V
    .locals 17
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callLogType"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 82
    .local v16, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 83
    .local v15, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 86
    .local v7, "date":J
    invoke-static/range {p1 .. p1}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 87
    .local v3, "ci":Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "logNumber":Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getRingDurationMillis()J

    move-result-wide v9

    .line 97
    .local v9, "duration":J
    :goto_0
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 98
    const/4 v11, 0x0

    .line 99
    .local v11, "firewallType":I
    const/4 v12, 0x0

    .line 105
    .local v12, "forwardedCall":I
    :goto_1
    sget-boolean v2, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onDisconnect(): logNumber set to:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", number set to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallLogger;->mPhoneType:I

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallLogger;->mIsComing:Z

    .line 116
    sget-object v2, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "number="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ", duration="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ", isVT="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/CallLogger;->mVtCall:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v5

    .line 136
    .local v5, "presentation":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v14, 0x1

    .line 140
    .local v14, "isOtaspNumber":Z
    :goto_2
    if-nez v14, :cond_1

    move-object/from16 v2, p0

    move/from16 v6, p2

    move/from16 v13, p3

    .line 141
    invoke-virtual/range {v2 .. v13}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJIII)V

    .line 143
    :cond_1
    return-void

    .line 92
    .end local v5    # "presentation":I
    .end local v9    # "duration":J
    .end local v11    # "firewallType":I
    .end local v12    # "forwardedCall":I
    .end local v14    # "isOtaspNumber":Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v9

    .restart local v9    # "duration":J
    goto/16 :goto_0

    .line 101
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getFirewallCode()I

    move-result v11

    .line 102
    .restart local v11    # "firewallType":I
    const/4 v12, 0x0

    .restart local v12    # "forwardedCall":I
    goto/16 :goto_1

    .line 136
    .restart local v5    # "presentation":I
    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lcom/android/phone/CallLogger;->mVtCall:I

    .line 496
    iput v0, p0, Lcom/android/phone/CallLogger;->mPhoneType:I

    .line 497
    iput-boolean v0, p0, Lcom/android/phone/CallLogger;->mIsComing:Z

    .line 498
    iput-boolean v0, p0, Lcom/android/phone/CallLogger;->mIsCdmaCallWaitingReject:Z

    .line 499
    return-void
.end method

.method public setCdmaCallWaitingReject(Z)V
    .locals 0
    .param p1, "isCdmaCallWaitingReject"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/android/phone/CallLogger;->mIsCdmaCallWaitingReject:Z

    .line 354
    return-void
.end method

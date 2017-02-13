.class public Lcom/android/phone/EmergencyCallHelper;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# static fields
.field private static final DBG:Z = true

.field private static final DISCONNECT:I = 0x3

.field static final DUALSIM_OFF:I = 0x0

.field static final DUALSIM_ON:I = 0x3

.field private static final DUAL_SIMS_MODE_ON:I

.field public static final MAX_NUM_RETRIES:I = 0x6

.field private static final PHONE_STATE_CHANGED:I = 0x5

.field private static final RETRY_TIMEOUT:I = 0x4

.field private static final SEND_ECC_CALL:I = 0x6

.field private static final SERVICE_STATE_CHANGED:I = 0x2

.field private static final SERVICE_STATE_CHANGED2:I = 0x66

.field private static final SERVICE_STATE_CHANGED3:I = 0xca

.field private static final SERVICE_STATE_CHANGED4:I = 0x12e

.field private static final SERVICE_STATE_CHANGED_GEMINI:[I

.field static final SIM1_ONLY:I = 0x1

.field static final SIM2_ONLY:I = 0x2

.field private static final START_SEQUENCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmergencyCallHelper"

.field public static final TIME_BETWEEN_RETRIES:J = 0x3a98L

.field public static final WAKE_LOCK_TIMEOUT:J = 0x493e0L


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallController:Lcom/android/phone/CallController;

.field private mNumRetriesSoFar:I

.field private mNumber:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceAvailabeSlot:I

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 595
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    .line 606
    const/4 v0, 0x1

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotCount()I

    move-result v1

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/phone/EmergencyCallHelper;->DUAL_SIMS_MODE_ON:I

    return-void

    .line 595
    nop

    :array_0
    .array-data 4
        0x2
        0x66
        0xca
        0x12e
    .end array-data
.end method

.method public constructor <init>(Lcom/android/phone/CallController;)V
    .locals 1
    .param p1, "callController"    # Lcom/android/phone/CallController;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 590
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    .line 92
    const-string v0, "EmergencyCallHelper constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mCallController:Lcom/android/phone/CallController;

    .line 94
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 95
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 96
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    return-void
.end method

.method private cancelRetryTimer()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 573
    return-void
.end method

.method private checkOKToCall(Landroid/telephony/ServiceState;I)Z
    .locals 5
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "slotId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 931
    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    if-eq v3, p2, :cond_0

    .line 948
    :goto_0
    return v2

    .line 935
    :cond_0
    const/4 v0, 0x0

    .line 940
    .local v0, "okToCall":Z
    invoke-static {p2}, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 942
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 947
    :goto_1
    const-string v1, "EmergencyCallHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOKToCall, okToCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 948
    goto :goto_0

    :cond_1
    move v0, v2

    .line 942
    goto :goto_1

    .line 944
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 544
    const-string v0, "cleanup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v0, p0, v1}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 547
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 548
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 551
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "- releasing wake lock"

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 556
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 558
    :cond_1
    return-void
.end method

.method private getBestSlotForDualSimMode(I)I
    .locals 9
    .param p1, "mode"    # I

    .prologue
    .line 692
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getDefaultSlot()I

    move-result v1

    .line 693
    .local v1, "bestSlot":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v3

    .line 694
    .local v3, "geminiSlots":[I
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget v4, v0, v5

    .line 695
    .local v4, "gs":I
    const/4 v7, 0x1

    shl-int/2addr v7, v4

    and-int v2, p1, v7

    .line 696
    .local v2, "dualSim":I
    if-lez v2, :cond_1

    .line 697
    move v1, v4

    .line 701
    .end local v2    # "dualSim":I
    .end local v4    # "gs":I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBestSlotForDualSimMode, mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bestSlot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 702
    return v1

    .line 694
    .restart local v2    # "dualSim":I
    .restart local v4    # "gs":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private getProperDualSimMode(I)I
    .locals 11
    .param p1, "originMode"    # I

    .prologue
    .line 660
    const/4 v8, 0x0

    .line 661
    .local v8, "mode":I
    iget-object v9, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v9}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 662
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 663
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getProperDualSimMode, No sim inserted, return "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/EmergencyCallHelper;->DUAL_SIMS_MODE_ON:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 664
    sget v9, Lcom/android/phone/EmergencyCallHelper;->DUAL_SIMS_MODE_ON:I

    .line 687
    :goto_0
    return v9

    .line 666
    :cond_1
    if-eqz v7, :cond_4

    .line 667
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 668
    .local v1, "geminiSlots":[I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 669
    .local v5, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_2

    aget v2, v0, v4

    .line 670
    .local v2, "gs":I
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v9, v2, :cond_3

    .line 671
    const/4 v9, 0x1

    shl-int/2addr v9, v2

    or-int/2addr v8, v9

    .line 672
    goto :goto_1

    .line 669
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 678
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlots":[I
    .end local v2    # "gs":I
    .end local v4    # "i$":I
    .end local v5    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v6    # "len$":I
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getProperDualSimMode, mode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 683
    and-int v9, v8, p1

    if-eqz v9, :cond_5

    .line 684
    move v8, p1

    :cond_5
    move v9, v8

    .line 687
    goto :goto_0
.end method

.method private getProperDualSimMode(II)I
    .locals 6
    .param p1, "slot"    # I
    .param p2, "dualSimMode"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 817
    const/4 v1, 0x0

    .line 818
    .local v1, "mode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperDualSimMode slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dualSimMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v0

    .line 820
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 821
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperDualSimMode (no sim) return mode  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 822
    add-int/lit8 v2, p1, 0x1

    .line 844
    :goto_0
    return v2

    .line 825
    :cond_1
    if-nez p2, :cond_3

    .line 827
    add-int/lit8 v1, p1, 0x1

    .line 843
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperDualSimMode return mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    move v2, v1

    .line 844
    goto :goto_0

    .line 828
    :cond_3
    if-ne p2, v4, :cond_5

    .line 829
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v4, :cond_4

    .line 830
    const/4 v1, 0x1

    goto :goto_1

    .line 831
    :cond_4
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v5, :cond_2

    .line 832
    const/4 v1, 0x3

    goto :goto_1

    .line 834
    :cond_5
    if-ne p2, v5, :cond_7

    .line 835
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v4, :cond_6

    .line 836
    const/4 v1, 0x3

    goto :goto_1

    .line 837
    :cond_6
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v5, :cond_2

    .line 838
    const/4 v1, 0x2

    goto :goto_1

    .line 840
    :cond_7
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 841
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private getSysDualSimMode()I
    .locals 4

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "dualSimMode":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 649
    :goto_0
    return v0

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private hangupAllCallsWhenEcc()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 766
    const-string v10, "hangupAllCallsWhenEcc()..."

    invoke-direct {p0, v10}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 767
    iget-object v10, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    .line 768
    .local v7, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v7, v10, :cond_5

    .line 769
    iget-object v10, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 770
    .local v6, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 771
    .local v4, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "activeCallAddress":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 774
    .local v1, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 775
    .local v3, "bgconnection":Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, "bgCallAddress":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 782
    .local v8, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 792
    :cond_2
    const/4 v9, 0x5

    invoke-static {p0, v9}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisconnect(Landroid/os/Handler;I)V

    .line 794
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hangupAllEx()Z

    .line 795
    const-string v9, "Waiting for disconnect exist calls."

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    const/4 v9, 0x1

    .line 802
    .end local v0    # "activeCallAddress":Ljava/lang/String;
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "bgCallAddress":Ljava/lang/String;
    .end local v3    # "bgconnection":Lcom/android/internal/telephony/Connection;
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v8    # "ringingCall":Lcom/android/internal/telephony/Call;
    :goto_2
    return v9

    .restart local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v9

    .line 771
    goto :goto_0

    .restart local v0    # "activeCallAddress":Ljava/lang/String;
    .restart local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    .restart local v3    # "bgconnection":Lcom/android/internal/telephony/Connection;
    :cond_4
    move-object v2, v9

    .line 775
    goto :goto_1

    .line 797
    .restart local v2    # "bgCallAddress":Ljava/lang/String;
    .restart local v8    # "ringingCall":Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v5

    .line 798
    .local v5, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "catch exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 802
    .end local v0    # "activeCallAddress":Ljava/lang/String;
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "bgCallAddress":Ljava/lang/String;
    .end local v3    # "bgconnection":Lcom/android/internal/telephony/Connection;
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v5    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v8    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private isSlotPowerOff(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isSlotPowerOff(Lcom/android/internal/telephony/Phone;I)Z

    move-result v0

    return v0
.end method

.method private isValidSlot(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    const/4 v0, 0x1

    .line 893
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 896
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 715
    const-string v0, "EmergencyCallHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 301
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 302
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 303
    .local v0, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: connection \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 306
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_0

    .line 309
    const-string v2, "- onDisconnect: OUT_OF_SERVICE, need to retry..."

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 330
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v2, "==> Disconnect event; clean up..."

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_0
.end method

.method private onRetryTimeout(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 336
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 337
    .local v0, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 338
    .local v1, "serviceState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRetryTimeout():  phone state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNumRetriesSoFar = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 342
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 343
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->isSlotPowerOff(I)Z

    move-result v3

    .line 344
    .local v3, "slotPowerOff":Z
    const-string v4, "EmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRetryTimeout(), isSlotPowerOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v4, :cond_0

    .line 356
    const-string v4, "- onRetryTimeout: Call is active!  Cleaning up..."

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 381
    :goto_0
    return-void

    .line 361
    :cond_0
    if-nez v3, :cond_1

    .line 366
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v5, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v4, p0, v5}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 367
    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall(I)V

    goto :goto_0

    .line 372
    :cond_1
    const-string v4, "- Trying (again) to turn on the radio..."

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 378
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_0
.end method

.method private onServiceStateChanged(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ServiceState;

    .line 225
    .local v2, "state":Landroid/telephony/ServiceState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged()...  new state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 244
    iget v3, p1, Landroid/os/Message;->what:I

    sget-object v4, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v3, v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotIdByRegisterEvent(I[I)I

    move-result v1

    .line 245
    .local v1, "slotId":I
    const-string v3, "EmergencyCallHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v2, v1}, Lcom/android/phone/EmergencyCallHelper;->checkOKToCall(Landroid/telephony/ServiceState;I)Z

    move-result v0

    .line 249
    .local v0, "okToCall":Z
    if-eqz v0, :cond_3

    .line 251
    const-string v3, "onServiceStateChanged: ok to call!"

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v3, p0, v4}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 257
    iget v3, p1, Landroid/os/Message;->what:I

    sget-object v4, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v3, v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotIdByRegisterEvent(I[I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/EmergencyCallHelper;->mServiceAvailabeSlot:I

    .line 258
    const-string v3, "EmergencyCallHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged mServiceAvailabeSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/EmergencyCallHelper;->mServiceAvailabeSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->hangupAllCallsWhenEcc()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 273
    const-string v3, "EmergencyCallHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSlotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    if-ne v3, v1, :cond_2

    .line 275
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall(I)V

    goto :goto_0

    .line 277
    :cond_2
    const-string v3, "onServiceStateChange: the waiting radio isn\'t ready for ecc"

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_3
    const-string v3, "onServiceStateChanged: not ready to call yet, keep waiting..."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private placeEmergencyCall(I)V
    .locals 11
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 437
    const-string v0, "placeEmergencyCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisconnect(Landroid/os/Handler;I)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- placing call to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    sget-object v5, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-object v6, v3

    move v7, p1

    invoke-static/range {v0 .. v8}, Lcom/android/phone/PhoneUtils;->placeCallGemini(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;IZ)I

    move-result v9

    .line 460
    .local v9, "callStatus":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- PhoneUtils.placeCallGemini() returned status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 473
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 482
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeEmergencyCall(): placeCall() failed: callStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v10, 0x0

    .line 487
    .local v10, "success":Z
    :goto_1
    if-eqz v10, :cond_1

    .line 488
    const-string v0, "==> Success from PhoneUtils.placeCall()!"

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneGlobals;->startInCallActivity(Z)V

    .line 501
    :goto_2
    return-void

    .line 462
    .end local v9    # "callStatus":I
    .end local v10    # "success":Z
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v9

    .line 467
    .restart local v9    # "callStatus":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- PhoneUtils.placeCall() returned status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :pswitch_0
    const/4 v10, 0x1

    .line 476
    .restart local v10    # "success":Z
    goto :goto_1

    .line 496
    :cond_1
    const-string v0, "==> Failure."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_2

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private powerOnRadio()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 393
    const-string v3, "- powerOnRadio()..."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v3, p0, v4}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 401
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->getSysDualSimMode()I

    move-result v1

    .line 402
    .local v1, "dualSimMode":I
    const/4 v0, 0x0

    .line 404
    .local v0, "bOffAirplaneMode":Z
    const-string v3, "EmergencyCallHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dualSimMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    .line 406
    const-string v3, "==> Turning off airplane mode..."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 409
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 415
    const/4 v0, 0x1

    .line 426
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadioMtk(ZI)V

    .line 427
    return-void

    .line 416
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 421
    const-string v3, "==> (Apparently) not in airplane mode; manually powering radio on..."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private powerOnRadioMtk(ZI)V
    .locals 6
    .param p1, "airplaneMode"    # Z
    .param p2, "dualSimMode"    # I

    .prologue
    .line 609
    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 611
    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    invoke-direct {p0, v3, p2}, Lcom/android/phone/EmergencyCallHelper;->getProperDualSimMode(II)I

    move-result v2

    .line 612
    .local v2, "newmode":I
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 617
    const-string v3, "EmergencyCallHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerOnRadioMtk slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with dualsimMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "newmode":I
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/phone/EmergencyCallHelper;->getProperDualSimMode(I)I

    move-result v0

    .line 620
    .local v0, "expMode":I
    if-eqz p1, :cond_1

    if-eqz p1, :cond_2

    if-eq v0, p2, :cond_2

    .line 621
    :cond_1
    const-string v3, "EmergencyCallHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerOnRadioMtk, power on radio with Mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "mode"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 628
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v3, "EmergencyCallHelper"

    const-string v4, "powerOnRadioMtk, do nothing."

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 580
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 581
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method private scheduleRetryOrBailOut()V
    .locals 2

    .prologue
    .line 510
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleRetryOrBailOut()...  mNumRetriesSoFar is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 513
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 514
    const-string v0, "EmergencyCallHelper"

    const-string v1, "scheduleRetryOrBailOut: hit MAX_NUM_RETRIES; giving up..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 520
    :goto_0
    return-void

    .line 517
    :cond_0
    const-string v0, "- Scheduling another retry..."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    goto :goto_0
.end method

.method private startRetryTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 562
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimerGemini()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 568
    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/EmergencyCallHelper;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startRetryTimerGemini()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 905
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 908
    const/4 v1, 0x0

    .line 909
    .local v1, "msg":Landroid/os/Message;
    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 910
    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    invoke-virtual {p0, v6, v4, v3}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 917
    :goto_0
    const-wide/16 v3, 0x3a98

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/EmergencyCallHelper;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 918
    const/4 v3, 0x1

    .line 920
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return v3

    .line 912
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->getSysDualSimMode()I

    move-result v0

    .line 913
    .local v0, "dualSimMode":I
    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->getBestSlotForDualSimMode(I)I

    move-result v2

    .line 914
    .local v2, "slot":I
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    goto :goto_0
.end method

.method private startSequenceInternal(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSequenceInternal(): msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 174
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- startSequenceInternal: Got mNumber: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 184
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 189
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 190
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "EmergencyCallHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 194
    const-string v1, "- startSequenceInternal: acquiring wake lock"

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 203
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 211
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 214
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 850
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 853
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->handleMessageMTK(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 106
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 123
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->startSequenceInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 114
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onServiceStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 117
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onDisconnect(Landroid/os/Message;)V

    goto :goto_0

    .line 120
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onRetryTimeout(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x66 -> :sswitch_1
        0xca -> :sswitch_1
        0x12e -> :sswitch_1
    .end sparse-switch
.end method

.method public handleMessageMTK(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 720
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 754
    const-string v3, "EmergencyCallHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage not from MTK :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v1, 0x0

    .line 758
    .local v1, "messageFound":Z
    :goto_0
    return v1

    .line 726
    .end local v1    # "messageFound":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 727
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: PHONE_STATE_CHANGED with state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 728
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 731
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 737
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 738
    .local v0, "message":Landroid/os/Message;
    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/phone/EmergencyCallHelper;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 742
    .end local v0    # "message":Landroid/os/Message;
    :goto_1
    const/4 v1, 0x1

    .line 743
    .restart local v1    # "messageFound":Z
    goto :goto_0

    .line 740
    .end local v1    # "messageFound":Z
    :cond_0
    const-string v3, "handleMessage: PHONE_STATE_CHANGED continue waiting..."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 746
    .end local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :pswitch_1
    const-string v3, "send the ecc call!"

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 748
    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mServiceAvailabeSlot:I

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall(I)V

    .line 749
    const/4 v1, 0x1

    .line 750
    .restart local v1    # "messageFound":Z
    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startEmergencyCallExt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEmergencyCallExt: number == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  slot == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 858
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    .line 860
    if-gez p2, :cond_1

    .line 861
    const-string v3, "startEmergencyCallExt: slot error!"

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 868
    invoke-direct {p0, p2}, Lcom/android/phone/EmergencyCallHelper;->isValidSlot(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    iput p2, p0, Lcom/android/phone/EmergencyCallHelper;->mSlotId:I

    .line 870
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOn(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 871
    .local v1, "isRadioOn":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startEmergencyCallExt], isRadioOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 872
    if-eqz v1, :cond_2

    .line 874
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v0, "eccIntent":Landroid/content/Intent;
    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v3, "com.android.phone.extra.slot"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v3, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 878
    const-string v3, "startEmergencyCallExt: post this request to CallController."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 880
    .end local v0    # "eccIntent":Landroid/content/Intent;
    :cond_2
    const-string v3, "startEmergencyCallExt: place call after turn on radio."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 881
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 882
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEmergencyCallFromAirplaneModeSequence(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.class Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;
.super Ljava/lang/Object;
.source "EditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IccPinStateHelper"
.end annotation


# static fields
.field private static sInitialized:[Z

.field private static sLocker:[Ljava/lang/Object;

.field private static sPin2Locked:[Z

.field private static final sSimCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sSimCount:I

    .line 600
    sget v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sSimCount:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    .line 601
    sget v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sSimCount:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    .line 602
    sget v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sSimCount:I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    .line 603
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPin2Locked(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 683
    const-string v0, "gsm.sim.retry.pin2"

    .line 684
    .local v0, "pin2RetryString":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    sget-object v1, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PIN2_RETRY:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 687
    :cond_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCommandsInterface(I)Lcom/android/internal/telephony/CommandsInterface;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 644
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {p0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 645
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 646
    .local v0, "basePhone":Lcom/android/internal/telephony/PhoneBase;
    instance-of v2, v1, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v2, :cond_0

    .line 647
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .end local v0    # "basePhone":Lcom/android/internal/telephony/PhoneBase;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 654
    .restart local v0    # "basePhone":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v2

    .line 648
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    instance-of v2, v1, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 649
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 651
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static handlerIccCardStatus(Landroid/os/AsyncResult;I)V
    .locals 9
    .param p0, "ar"    # Landroid/os/AsyncResult;
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 658
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 659
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    sget-object v6, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    aput-boolean v5, v6, p1

    .line 660
    if-eqz v1, :cond_1

    .line 661
    const/4 v2, -0x1

    .line 662
    .local v2, "index":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 663
    .local v3, "phoneType":I
    if-ne v3, v4, :cond_2

    .line 664
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 668
    :cond_0
    :goto_0
    if-ltz v2, :cond_1

    iget-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 669
    iget-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v0, v6, v2

    .line 670
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    if-eqz v0, :cond_1

    .line 671
    sget-object v6, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v7, v8, :cond_3

    :goto_1
    aput-boolean v4, v6, p1

    .line 676
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v2    # "index":I
    .end local v3    # "phoneType":I
    :cond_1
    sget-object v4, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    aget-object v5, v4, p1

    monitor-enter v5

    .line 677
    :try_start_0
    sget-object v4, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 678
    sget-object v4, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 679
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    return-void

    .line 665
    .restart local v2    # "index":I
    .restart local v3    # "phoneType":I
    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 666
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    goto :goto_0

    .restart local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_3
    move v4, v5

    .line 671
    goto :goto_1

    .line 679
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v2    # "index":I
    .end local v3    # "phoneType":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static isInitialized(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 617
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isPin1Locked(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 632
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {p0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPin2Locked(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 636
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static updateIccCardStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sSimCount:I

    if-ge v0, v2, :cond_0

    .line 607
    move v1, v0

    .line 608
    .local v1, "slotId":I
    sget-object v2, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    aput-boolean v4, v2, v1

    .line 609
    sget-object v2, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    aput-boolean v4, v2, v1

    .line 610
    sget-object v2, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    .line 611
    sget-object v2, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->checkPin2Locked(I)Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 612
    sget-object v2, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    .end local v1    # "slotId":I
    :cond_0
    return-void
.end method

.method public static updatePin2State(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p0, "ar"    # Landroid/os/AsyncResult;
    .param p1, "slotId"    # I

    .prologue
    .line 640
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    invoke-static {p1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->checkPin2Locked(I)Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 641
    return-void
.end method

.method public static waitForInitialization(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 621
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    .line 622
    :try_start_0
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    aget-boolean v0, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 624
    :try_start_1
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 629
    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 625
    :catch_0
    move-exception v0

    goto :goto_0
.end method

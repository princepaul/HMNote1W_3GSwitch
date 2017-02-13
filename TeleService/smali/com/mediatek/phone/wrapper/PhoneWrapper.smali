.class public Lcom/mediatek/phone/wrapper/PhoneWrapper;
.super Ljava/lang/Object;
.source "PhoneWrapper.java"


# static fields
.field public static final EVENT_3G_SWITCH_DONE:Ljava/lang/String;

.field public static final EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

.field public static final EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

.field public static final EVENT_PRE_3G_SWITCH:Ljava/lang/String;

.field public static final EXTRA_3G_SIM:Ljava/lang/String;

.field public static final EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

.field private static final NO_SIM_CONNECTED:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PhoneWrapper"

.field public static final UNSPECIFIED_SLOT_ID:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_3G_SIM:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EXTRA_3G_SIM:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateCellBroadcastSms(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 980
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 989
    :goto_0
    return-void

    .line 984
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v0, "PhoneWrapper"

    const-string v1, "[activateCellBroadcastSms], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static cancelAvailableNetworks(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 570
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 571
    const-string v0, "PhoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cancelAvailableNetworks], slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->cancelAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 577
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->cancelAvailableNetworks(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static changeBarringPassword(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "slotId"    # I

    .prologue
    .line 943
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    const-string v0, "PhoneWrapper"

    const-string v1, "[changeBarringPassword], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-static {p0, p5}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 468
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 470
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getSlotNotIdle(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    .line 471
    .local v1, "slotId":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 472
    const-string v2, "PhoneWrapper"

    const-string v3, "[explicitCallTransfer], all the slots is idle."

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .end local v1    # "slotId":I
    :goto_0
    return-void

    .line 475
    .restart local v1    # "slotId":I
    :cond_0
    invoke-static {p0, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 476
    const-string v2, "PhoneWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[explicitCallTransfer], slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    .end local v1    # "slotId":I
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAvailableNetworks(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 551
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 552
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const-string v0, "PhoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getAvailableNetworks], slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 558
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getCallForwardingOption(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 194
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "PhoneWrapper"

    const-string v1, "[getCallForwardingOption], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-static {p0, p3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static getCallWaiting(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 275
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 276
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const-string v0, "PhoneWrapper"

    const-string v1, "[getCallWaiting], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {p0, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 792
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfoEx(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 795
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCellBroadcastSmsConfig(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 1022
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1031
    :goto_0
    return-void

    .line 1026
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v0, "PhoneWrapper"

    const-string v1, "[getCellBroadcastSmsConfig], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getFacilityLock(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "slotId"    # I

    .prologue
    .line 883
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    const-string v0, "PhoneWrapper"

    const-string v1, "[getFacilityLock], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :goto_0
    return-void

    .line 887
    :cond_0
    invoke-static {p0, p4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 325
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    const-string v1, "PhoneWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getIccCard], slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 333
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIccRecordsLoaded(Lcom/android/internal/telephony/Phone;I)Z
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 724
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 725
    const/4 v0, 0x0

    .line 726
    .local v0, "iccRecordloaded":Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    .line 733
    :cond_0
    :goto_0
    const-string v1, "PhoneWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccRecordsLoaded : iccRecordloaded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return v0

    .line 731
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public static getMessageWaitingIndicator(Lcom/android/internal/telephony/Phone;I)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 746
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 747
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    const-string v0, "PhoneWrapper"

    const-string v1, "[getMessageWaitingIndicator], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x0

    .line 751
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    goto :goto_0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1142
    const/4 v3, 0x0

    .line 1143
    .local v3, "operatorName":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1144
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v1, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1145
    .local v1, "gphone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 1146
    .local v0, "geminiSlots":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 1147
    aget v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_2

    .line 1148
    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_OPERATOR_ALPHAS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1149
    const-string v4, "PhoneWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetworkOperatorName operatorName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_0
    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    .line 1157
    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 1158
    aget v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1159
    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_OPERATOR_ALPHAS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    const-string v4, "PhoneWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetworkOperatorName operatorName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    .end local v0    # "geminiSlots":[I
    .end local v1    # "gphone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "i":I
    :cond_1
    :goto_2
    const-string v4, "PhoneWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetworkOperatorName operatorName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    return-object v3

    .line 1146
    .restart local v0    # "geminiSlots":[I
    .restart local v1    # "gphone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1157
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1167
    .end local v0    # "geminiSlots":[I
    .end local v1    # "gphone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "i":I
    :cond_4
    const-string v4, "gsm.operator.alpha"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public static getOutgoingCallerIdDisplay(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 365
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 366
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const-string v0, "PhoneWrapper"

    const-string v1, "[getOutgoingCallerIdDisplay], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-static {p0, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getPendingMmiCodes(Lcom/android/internal/telephony/Phone;I)Ljava/util/List;
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "I)",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "mmiCodes":Ljava/util/List;, "Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    const-string v1, "PhoneWrapper"

    const-string v2, "[getPendingMmiCodes], the slotId is invalid!"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_0
    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "mmiCodes":Ljava/util/List;, "Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .restart local v0    # "mmiCodes":Ljava/util/List;, "Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    :cond_0
    return-object v0

    .line 388
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 1236
    move-object v1, p0

    .line 1237
    .local v1, "selectedPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1238
    .local v0, "isSipPhone":Z
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 1239
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1241
    :cond_0
    const-string v2, "PhoneWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getPhoneBySlotId], selectedPhone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    return-object v1

    .line 1237
    .end local v0    # "isSipPhone":Z
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPhoneType(Lcom/android/internal/telephony/Phone;I)I
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 626
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, "phoneType":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v1, :cond_1

    .line 629
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 635
    :cond_0
    :goto_0
    const-string v1, "PhoneWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneType, slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return v0

    .line 633
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public static getPolCapability(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1065
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->getPolCapability(Landroid/os/Message;)V

    .line 1074
    :goto_0
    const-string v0, "PhoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    return-void

    .line 1069
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v0, "PhoneWrapper"

    const-string v1, "[setPOLEntry], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    :cond_1
    invoke-interface {p0, p2}, Lcom/android/internal/telephony/Phone;->getPolCapability(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getPreferedOperatorList(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1040
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 1049
    :goto_0
    return-void

    .line 1044
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v0, "PhoneWrapper"

    const-string v1, "[getPreferedOperatorList], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_1
    invoke-interface {p0, p2}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getPreferredNetworkType(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 513
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 514
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const-string v0, "PhoneWrapper"

    const-string v1, "[getPreferredNetworkType], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-static {p0, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getServiceState(Lcom/android/internal/telephony/Phone;I)Landroid/telephony/ServiceState;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 97
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "serviceState":Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "PhoneWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getServiceState], slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSlotNotIdle(Lcom/android/internal/telephony/Phone;)I
    .locals 8
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 444
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 445
    instance-of v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v6, :cond_1

    move-object v1, p0

    .line 446
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 447
    .local v1, "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 448
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v5, v0, v3

    .line 449
    .local v5, "slot":I
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_0

    .line 458
    .end local v0    # "arr$":[I
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "slot":I
    :goto_1
    return v5

    .line 448
    .restart local v0    # "arr$":[I
    .restart local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v2    # "geminiSlots":[I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "slot":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "arr$":[I
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "slot":I
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_2

    .line 455
    const/4 v5, 0x0

    goto :goto_1

    .line 458
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public static getState(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 679
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 681
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 686
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_0
    return-object v0

    .line 684
    .end local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .restart local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    goto :goto_0
.end method

.method public static getState(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 664
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 665
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    const-string v0, "PhoneWrapper"

    const-string v1, "[getState], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVoiceMailAlphaTag(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 119
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 120
    const-string v0, ""

    .line 121
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const-string v1, "PhoneWrapper"

    const-string v2, "[getVoiceMailAlphaTag], the slotId is invalid!"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-object v0

    .line 124
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVoiceMailNumber(Lcom/android/internal/telephony/Phone;I)Ljava/lang/String;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 697
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 698
    const-string v0, ""

    .line 699
    .local v0, "vmNumber":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    const-string v1, "PhoneWrapper"

    const-string v2, "[getVoiceMailNumber], the slotId is invalid!"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :goto_0
    const-string v1, "PhoneWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber : vmNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-object v0

    .line 702
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVtCallForwardingOption(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 174
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "PhoneWrapper"

    const-string v1, "[getVtCallForwardingOption], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {p0, p3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static getVtCallWaiting(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 258
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 259
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, "PhoneWrapper"

    const-string v1, "[getVtCallWaiting], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-static {p0, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getVtFacilityLock(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "slotId"    # I

    .prologue
    .line 862
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    const-string v0, "PhoneWrapper"

    const-string v1, "[getVtFacilityLock], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_0
    return-void

    .line 866
    :cond_0
    invoke-static {p0, p4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static handlePinMmi(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 608
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 609
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    const-string v0, "PhoneWrapper"

    const-string v1, "[handlePinMmi], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    .line 615
    :goto_0
    return v0

    .line 613
    :cond_0
    const-string v0, "PhoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePinMmi : dialString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {p0, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hangupAll(Lcom/android/internal/telephony/Phone;)V
    .locals 10
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 427
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 429
    :try_start_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 430
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object v4, v0

    .line 431
    .local v4, "gphone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v3

    .line 432
    .local v3, "geminiSlots":[I
    move-object v1, v3

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget v5, v1, v6

    .line 433
    .local v5, "gs":I
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 432
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 436
    .end local v1    # "arr$":[I
    .end local v3    # "geminiSlots":[I
    .end local v4    # "gphone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v5    # "gs":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_1
    :goto_1
    return-void

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v8, "PhoneWrapper"

    const-string v9, "[hangupAll], Error, cannot hangup All Calls"

    invoke-static {v8, v9}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static hasPendingMmi(Lcom/android/internal/telephony/Phone;)Z
    .locals 10
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 404
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 405
    const/4 v6, 0x0

    .line 406
    .local v6, "mmiCount":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v2, p0

    .line 407
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 408
    .local v2, "gphone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 409
    .local v1, "geminiSlots":[I
    const-string v7, "PhoneWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[hasPendingMmi], mmiCount slot size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v3, v0, v4

    .line 411
    .local v3, "gs":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    .line 410
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlots":[I
    .end local v2    # "gphone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v3    # "gs":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 416
    :cond_1
    const-string v7, "PhoneWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[hasPendingMmi], mmiCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    if-lez v6, :cond_2

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static isCspPlmnEnabled(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, "isShowPlmn":Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 534
    .local v3, "sims":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .local v2, "sim":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    move-object v4, p0

    .line 535
    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_0

    .line 538
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sim":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v3    # "sims":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v1

    .line 540
    :cond_1
    return v1
.end method

.method public static isRadioOffBySlot(ILandroid/content/Context;)Z
    .locals 7
    .param p0, "slot"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1085
    const/4 v1, 0x1

    .line 1086
    .local v1, "isRadioOff":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1087
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v5, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v5, :cond_3

    move-object v0, v2

    .line 1088
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1089
    .local v0, "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 1094
    .end local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .restart local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_2
    move v1, v4

    .line 1089
    goto :goto_0

    .line 1091
    .end local v0    # "dualPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move v1, v3

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method

.method public static isRadioOn(Lcom/android/internal/telephony/Phone;)Z
    .locals 10
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 136
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 138
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v5

    .local v5, "slots":[I
    move-object v1, p0

    .line 139
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 140
    .local v1, "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 141
    .local v4, "slot":I
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 147
    .end local v0    # "arr$":[I
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "slot":I
    .end local v5    # "slots":[I
    :cond_0
    :goto_1
    return v6

    .line 140
    .restart local v0    # "arr$":[I
    .restart local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "slot":I
    .restart local v5    # "slots":[I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "slot":I
    :cond_2
    move v6, v7

    .line 145
    goto :goto_1

    .line 147
    .end local v0    # "arr$":[I
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "slots":[I
    :cond_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    move v6, v7

    goto :goto_1
.end method

.method public static isRadioOn(Lcom/android/internal/telephony/Phone;I)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v0

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 156
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v1, "PhoneWrapper"

    const-string v2, "[isRadioOn], the slotId is invalid"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSlotPowerOff(Lcom/android/internal/telephony/Phone;I)Z
    .locals 11
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 760
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 761
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v1, p0

    .line 762
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 763
    .local v1, "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 764
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v9, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 767
    .local v6, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 779
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v6    # "serviceState":Landroid/telephony/ServiceState;
    :cond_0
    :goto_0
    return v7

    .restart local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v6    # "serviceState":Landroid/telephony/ServiceState;
    :cond_1
    move v7, v8

    .line 767
    goto :goto_0

    .line 769
    .end local v6    # "serviceState":Landroid/telephony/ServiceState;
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 770
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget v3, v0, v4

    .line 771
    .local v3, "gs":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v9, v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 773
    .restart local v6    # "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eq v9, v10, :cond_3

    move v7, v8

    .line 774
    goto :goto_0

    .line 770
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 779
    .end local v0    # "arr$":[I
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "geminiSlots":[I
    .end local v3    # "gs":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "serviceState":Landroid/telephony/ServiceState;
    :cond_4
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eq v9, v10, :cond_0

    move v7, v8

    goto :goto_0
.end method

.method public static pickBestSlotForEmergencyCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)I
    .locals 9
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1106
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1107
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v1, p0

    .line 1108
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1109
    .local v1, "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1110
    .local v2, "geminiSlots":[I
    array-length v0, v2

    .line 1111
    .local v0, "count":I
    new-array v4, v0, [Z

    .line 1112
    .local v4, "isRadioOn":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1113
    aget v6, v2, v3

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v6

    aput-boolean v6, v4, v3

    .line 1114
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    aget v7, v2, v3

    invoke-virtual {v6, v7}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 1116
    .local v5, "state":I
    aget-boolean v6, v4, v3

    if-eqz v6, :cond_0

    if-nez v5, :cond_0

    .line 1118
    const-string v6, "PhoneWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pickBestSlotForEmergencyCallm, radio on & in service, slot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    aget v6, v2, v3

    .line 1132
    .end local v0    # "count":I
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i":I
    .end local v4    # "isRadioOn":[Z
    .end local v5    # "state":I
    :goto_1
    return v6

    .line 1112
    .restart local v0    # "count":I
    .restart local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v2    # "geminiSlots":[I
    .restart local v3    # "i":I
    .restart local v4    # "isRadioOn":[Z
    .restart local v5    # "state":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1123
    .end local v5    # "state":I
    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 1124
    aget-boolean v6, v4, v3

    if-eqz v6, :cond_2

    .line 1126
    const-string v6, "PhoneWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pickBestSlotForEmergencyCallm, radio on, slot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    aget v6, v2, v3

    goto :goto_1

    .line 1123
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1131
    .end local v0    # "count":I
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i":I
    .end local v4    # "isRadioOn":[Z
    :cond_3
    const-string v6, "PhoneWrapper"

    const-string v7, "pickBestSlotForEmergencyCallm, no gemini"

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getDefaultSlot()I

    move-result v6

    goto :goto_1
.end method

.method public static queryCellBroadcastSmsActivation(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 960
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 969
    :goto_0
    return-void

    .line 964
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v0, "PhoneWrapper"

    const-string v1, "[queryCellBroadcastSmsActivation], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static selectNetworkManually(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 841
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    const-string v0, "PhoneWrapper"

    const-string v1, "[selectNetworkManually], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :goto_0
    return-void

    .line 845
    :cond_0
    invoke-static {p0, p3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p0, "dtmfString"    # Ljava/lang/String;
    .param p1, "on"    # I
    .param p2, "off"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 822
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_0

    .line 823
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getCDMASlot()I

    move-result v1

    .line 824
    .local v1, "cdmaSlot":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 825
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 829
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "cdmaSlot":I
    :goto_0
    return-void

    .line 827
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    goto :goto_0
.end method

.method public static sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 648
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 649
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    const-string v0, "PhoneWrapper"

    const-string v1, "[sendUssdResponse], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-static {p0, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCallForwardingOption(Lcom/android/internal/telephony/Phone;IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;
    .param p6, "slotId"    # I

    .prologue
    .line 240
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p6}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const-string v0, "PhoneWrapper"

    const-string v1, "[setCallForwardingOption], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {p0, p6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setCallWaiting(Lcom/android/internal/telephony/Phone;ZLandroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 292
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string v0, "PhoneWrapper"

    const-string v1, "[setCallWaiting], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-static {p0, p3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setCellBroadcastSmsConfig(Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "chIdList"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "langList"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "slotId"    # I

    .prologue
    .line 1002
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    invoke-static {p4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 1012
    :goto_0
    return-void

    .line 1007
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v0, "PhoneWrapper"

    const-string v1, "[setCellBroadcastSmsConfig], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static setFacilityLock(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "slotId"    # I

    .prologue
    .line 903
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    const-string v0, "PhoneWrapper"

    const-string v1, "[setFacilityLock], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-static {p0, p5}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static setNetworkSelectionModeAutomatic(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    .line 590
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 591
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const-string v0, "PhoneWrapper"

    const-string v1, "[setNetworkSelectionModeAutomatic], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-static {p0, p2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static setOutgoingCallerIdDisplay(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 348
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const-string v0, "PhoneWrapper"

    const-string v1, "[setOutgoingCallerIdDisplay], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-static {p0, p3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setPolEntry(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I
    .param p2, "networkWithAct"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1053
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/Phone;->setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 1062
    :goto_0
    return-void

    .line 1057
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v0, "PhoneWrapper"

    const-string v1, "[setPOLEntry], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_1
    invoke-interface {p0, p2, p3}, Lcom/android/internal/telephony/Phone;->setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static setPreferredNetworkType(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 492
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 493
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 501
    :cond_0
    :goto_0
    const-string v0, "PhoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredNetworkType, modemNetworkMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void

    .line 499
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setRadioMode(Lcom/android/internal/telephony/Phone;ZLandroid/content/ContentResolver;)V
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "enabled"    # Z
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1184
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1185
    if-eqz p1, :cond_0

    .line 1186
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1206
    :goto_0
    return-void

    .line 1188
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x3

    invoke-static {p2, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1190
    .local v0, "dualSimModeSetting":I
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0

    .line 1195
    .end local v0    # "dualSimModeSetting":I
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    if-nez p1, :cond_2

    .line 1196
    const-string v4, "dual_sim_mode_setting"

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1198
    .local v1, "simModeSetting":I
    if-nez v1, :cond_2

    .line 1199
    const-string v4, "PhoneWrapper"

    const-string v5, "Turn off airplane mode, but Radio still off due to sim mode setting is off"

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const/4 p1, 0x1

    .line 1204
    .end local v1    # "simModeSetting":I
    :cond_2
    if-nez p1, :cond_3

    :goto_1
    invoke-interface {p0, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public static setRadioPower(Lcom/android/internal/telephony/Phone;I)V
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "mode"    # I

    .prologue
    .line 808
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 809
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    check-cast p0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 815
    :goto_0
    const-string v1, "PhoneWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRadioPower], mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    return-void

    .line 812
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 813
    .local v0, "radioStatus":Z
    :goto_1
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    .line 812
    .end local v0    # "radioStatus":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static setTTYMode(Lcom/android/internal/telephony/Phone;ILandroid/os/Handler;I)V
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "radioMode"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "messageId"    # I

    .prologue
    .line 1218
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, p0

    .line 1219
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1220
    .local v1, "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1221
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v3, v0, v4

    .line 1222
    .local v3, "gs":I
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, p1, v6, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setTTYModeGemini(ILandroid/os/Message;I)V

    .line 1221
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1225
    .end local v0    # "arr$":[I
    .end local v1    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2    # "geminiSlots":[I
    .end local v3    # "gs":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {p0, p1, v6}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1227
    :cond_1
    return-void
.end method

.method public static setVoiceMailNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "slotId"    # I

    .prologue
    .line 710
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    const-string v0, "PhoneWrapper"

    const-string v1, "[setVoiceMailNumber], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-static {p0, p4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static setVtCallForwardingOption(Lcom/android/internal/telephony/Phone;IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;
    .param p6, "slotId"    # I

    .prologue
    .line 217
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p6}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, "PhoneWrapper"

    const-string v1, "[setVtCallForwardingOption], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {p0, p6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setVtCallWaiting(Lcom/android/internal/telephony/Phone;ZLandroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 309
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 310
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const-string v0, "PhoneWrapper"

    const-string v1, "[setVtCallWaiting], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {p0, p3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setVtFacilityLock(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "slotId"    # I

    .prologue
    .line 923
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const-string v0, "PhoneWrapper"

    const-string v1, "[setVtFacilityLock], the slotId is invalid!"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :goto_0
    return-void

    .line 927
    :cond_0
    invoke-static {p0, p5}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
